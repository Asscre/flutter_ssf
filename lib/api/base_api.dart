import 'package:dio/dio.dart';

/// 定义基础api配置
/// 通过init初始化创建全局dio
class BaseApi {
  static late Dio dio;
  static int runningApiCount = 0;

  static init() {
    dio = Dio();
    dio.options.baseUrl = '';
    dio.options.contentType = 'application/json';
    dio.options.connectTimeout = 10 * 1000;
    dio.options.receiveTimeout = 10 * 1000;

    // 日志拦截器
    dio.interceptors.add(LogInterceptor(responseBody: false));

    // 拦截器
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Do something before request is sent
          return handler.next(options); //continue
          // 如果你想完成请求并返回一些自定义数据，你可以resolve一个Response对象 `handler.resolve(response)`。
          // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义response.
          //
          // 如果你想终止请求并触发一个错误,你可以返回一个`DioError`对象,如`handler.reject(error)`，
          // 这样请求将被中止并触发异常，上层catchError会被调用。
        },
        onError: (DioError e, handler) {
          // Do something with response error
          return handler.next(e); //continue
          // 如果你想完成请求并返回一些自定义数据，可以resolve 一个`Response`,如`handler.resolve(response)`。
          // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义response.
        },
      ),
    );
  }
}