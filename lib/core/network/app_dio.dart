import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_2/features/categories/data/data_source/category_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class AppNetworkModule {
  @singleton
  Dio provideDio() {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.themealdb.com/',
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
    return dio;
  }

  @singleton
  CategoryDataSource getCategoryDataSource(Dio dio) =>
      CategoryDataSource(dio);
}