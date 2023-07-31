import 'package:api/entity/env_config.dart';
import 'package:api/entity/response/ws_response.dart';
import 'package:api/init.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signalr_netcore/hub_connection.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';
import 'package:signalr_netcore/signalr_client.dart';

class WebSocketDeposit {
  static WebSocketDeposit? _instance;
  final Function(WsResponse) onReceive;

  WebSocketDeposit._({required this.onReceive});

  // IOWebSocketChannel? _client;
  // late Timer timer;
  // bool _isConnected = false;
  // final _heartbeatInterval = 15;
  // final _reconnectIntervalMs = 5000;
  // int _reconnectCount = 120;
  // final _sendBuffer = Queue();
  // Timer? heartBeatTimer, _reconnectTimer;
  String token = "";
  HubConnection? hubConnection;

  static WebSocketDeposit? getInstance({required Function(WsResponse) onReceive}) {
    if (_instance == null) {
      _instance = WebSocketDeposit._(onReceive: onReceive);
    }
    return _instance;
  }

  connect() async {
    await _getAuthToken();
    // defaultHeaders.setHeaderValue("access_token", token);

    // final _endPoint = '$url?access_token=${await _getAuthToken()}';
    // print(_endPoint);

    // final webSocketChannel = IOWebSocketChannel.connect(
    //     Uri.parse('$url?access_token=$token'));
    // final webSocketTransport = WebSocketTransport(webSocketChannel);
    if (hubConnection == null) {
      hubConnection = HubConnectionBuilder()
          .withUrl(
            '${env.url}api/notify?access_token=$token',
            options: HttpConnectionOptions(
              // accessTokenFactory: () => Future.value(token),
              transport: HttpTransportType.WebSockets,
            ),
          )
          .build();

      hubConnection!.start();
      print('SignalR url::${hubConnection!.baseUrl}');

      hubConnection!.onclose(onConnectionClosed);

      if (hubConnection!.state == HubConnectionState.Connected) {
        print('${hubConnection!.baseUrl}:::SignalR connection established successfully!');
      } else {
        print('SignalR connection failed.');
      }
      hubConnection!.on('notify', (arguments) {
        print("signalR connect success");
        if (arguments?.isNotEmpty ?? false) {
          WsResponse response = WsResponse.fromJson(arguments![0] as Map<String, dynamic>);
          // Handle the event data here
          onReceive(response);
        }
      });
    }
  }

  void onConnectionClosed({Exception? error}) {
    if (error != null) {
      print('Connection closed with error: $error');
    } else {
      print('Connection closed.');
    }
  }

  _getAuthToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString("auth_token"));
    token = prefs.getString("token") ?? "";
  }
}
