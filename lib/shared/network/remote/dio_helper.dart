

import 'package:dio/dio.dart';

class DioHelper
{
    static late Dio dio;

    static init()
    {
      dio = Dio(
        BaseOptions(
          baseUrl:'https://v3.football.api-sports.io/',
          headers: {
              'x-rapidapi-host' : 'v3.football.api-sports.io',
              'x-rapidapi-key' : '48bed2e30ff360cb22bae394bd9398a9',
          }
        )
      );
    }
    static Future<Response> getData({
    required String url,
     Map<String , dynamic>? query
  })
    {
       return dio.get(url, queryParameters: query);
    }
}