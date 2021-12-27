import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ssf/api/use_dio.dart';

class UseDioProvider with ChangeNotifier {
  String apiResult = '';

  getTestData() async {
    Response? res = await getTestApi();

    if (res != null) {
      apiResult = res.data;
      notifyListeners();
    }
  }
}