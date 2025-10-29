import 'package:anilist/core/core.dart';
import 'package:dio/dio.dart';

class DioClient {
  static Dio create() {
    final dio = Dio(BaseOptions(baseUrl: AppConfig.apiUrl));

    dio.interceptors.add(LogInterceptor(responseBody: true));

    return dio;
  }
}
