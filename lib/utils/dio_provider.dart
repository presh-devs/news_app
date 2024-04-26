import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


part 'dio_provider.g.dart';


@riverpod
Dio dio(DioRef ref) {
  Dio dio = Dio();
  dio.interceptors.add(PrettyDioLogger());
// customization
   dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));

  return dio;
}