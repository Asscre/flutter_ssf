import 'package:dio/dio.dart';
import 'package:ssf/api/base_api.dart';

/// 方法命名为：请求方法+名称+Api
Future<Response?> getTestApi() async {
  String url = 'https://www.baidu.com';
  try {
    Response res = await BaseApi.dio.get(url);
    return res;
  } catch (e) {
    return null;
  }
}
