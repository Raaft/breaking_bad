
import 'package:breakingbad/const/end_point.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CharacterWebServices {
  late Dio dio;

  CharacterWebServices() {
    BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        receiveTimeout: 60 * 1000,
        sendTimeout: 60 * 1000);

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacter() async {
    try {
      Response response = await dio.get("characters");
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
