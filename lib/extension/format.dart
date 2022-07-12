import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Format {
  String doubleToString(double num) {
    if (num == 0.0)
      return "0.00";
    else {
      var doubleNum = ((num * 100).truncateToDouble() / 100);
      var f = new NumberFormat("#,###,###.00", "en_US");
      if (num < 1)
        return "0" + f.format(doubleNum);
      else
        return f.format(doubleNum);
    }
  }

  String amountFormat(dynamic amount) {
    if (amount is int) {
      return amount.toStringAsFixed(2);
    } else if (amount is double) {
      return doubleToString(amount);
    } else if (amount is String)
      return doubleToString(double.parse(amount));
    else
      return " ";
  }

  String currencyWithDecimalFormat(double amount) {
    var f = new NumberFormat("#,###,##0.00", "en_US");
    return f.format(amount);
  }

  String currencyFormat(int amount) {
    var f = new NumberFormat("#,###,###", "en_US");
    return f.format(amount);
  }

/*  String currencySymbolFormat(int amount) {
    return "¥" + currencyFormat(amount);
  }

  String currencySymbolWithDecimalFormat(double amount) {
    return "¥" + currencyWithDecimalFormat(amount);
  }*/

  String percentageFormat(double percentage) {
    var f = new NumberFormat("##.##%", "en_US");
    return f.format((percentage - 100) / 100);
  }

  String dateFormat(DateTime? date) {
    if (date != null)
      return DateFormat("yyyy/MM/dd").format(date);
    else
      return "";
  }

  String dateTimeFormat(String? dateString) {
    if (dateString != null) {
      final date = DateTime.parse(dateString);
      return DateFormat("yyyy/MM/dd HH:mm").format(date.toLocal());
    } else
      return "";
  }

  String dateTimezoneFormat(String? dateString) {
    if (dateString != null) {
      final date = DateTime.parse(dateString);
      return DateFormat("yyyy-MM-dd hh:mm a").format(date.toLocal());
    } else
      return "";
  }

  String timezoneFormat(String? dateString) {
    if (dateString != null) {
      final date = DateTime.parse(dateString);
      return DateFormat("hh:mm a").format(date.toLocal());
    } else
      return "";
  }
}
