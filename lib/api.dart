library api;

import 'dart:convert';
import 'dart:core';
import 'dart:developer';
import 'dart:io';
import 'package:api/entity/account_report_total.dart';
import 'package:api/entity/brand_logo.dart';
import 'package:api/entity/campaign_details.dart';
import 'package:api/entity/deposit_campaign_details.dart';
import 'package:api/entity/env_features_config.dart';
import 'package:api/entity/game_provider2.dart';
import 'package:api/entity/home_banner.dart';
import 'package:api/entity/language_option.dart';
import 'package:api/entity/live_chat.dart';
import 'package:api/entity/promotion_report.dart';
import 'package:api/entity/promotion_roulette.dart';
import 'package:api/entity/response/idr_register_login_response.dart';
import 'package:api/entity/response/report_response2.dart';
import 'package:api/entity/roulette.dart';
import 'package:api/entity/umpay_exchange_rate.dart';
import 'package:api/entity/vip.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:api/entity/env_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:api/entity/http_method.dart';
import 'package:api/entity/game.dart';
import 'package:api/entity/game_provider.dart';
import 'package:api/entity/response/game_url_response.dart';
import 'package:api/entity/user_profile.dart';
import 'package:api/network/event_result.dart';
import 'package:api/entity/message.dart';
import 'package:api/entity/response/list_response.dart';
import 'package:api/entity/bank_card.dart';
import 'package:api/entity/bank_type.dart';
import 'package:api/entity/deposit_redirect.dart';
import 'package:api/entity/deposit_redirect_applepay.dart';
import 'package:api/entity/exchange_rate.dart';
import 'package:api/entity/manual_deposit_order.dart';
import 'package:api/entity/payment.dart';
import 'package:api/entity/withdrawal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:api/entity/announcement.dart';
import 'package:api/entity/game_type.dart';
import 'package:api/entity/promotion.dart';
import 'package:api/entity/report.dart';
import 'package:api/entity/brand_communication.dart';
import 'package:api/entity/transfer_report.dart';
import 'package:api/entity/response/check_username_response.dart';
import 'package:api/entity/response/edit_password_response.dart';
import 'package:api/entity/response/login_response.dart';
import 'package:api/entity/response/register_response.dart';
import 'package:api/entity/account_report.dart';
import 'package:api/entity/response/report_response.dart';
import 'package:api/entity/status.dart';
import 'package:api/entity/main_wallet.dart';
import 'package:api/entity/response/BaseResponse.dart';
import 'package:api/entity/game_wallet.dart';
import 'init.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as p;

part 'network/services/api_service.dart';

part 'network/api_request_builder.dart';

part 'repository/auth_repository.dart';

part 'repository/bank_repository.dart';

part 'repository/base_repository.dart';

part 'repository/content_repository.dart';

part 'repository/message_repository.dart';

part 'repository/user_repository.dart';

part 'repository/wallet_repository.dart';
