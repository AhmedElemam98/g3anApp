import 'package:dio/dio.dart';
import 'dart:convert';
import '../Models/ResturantsData.dart';

class ResturantsDataServices {
  ResturantsModel _resturants;
  Dio dio = Dio();

  Future<Response<dynamic>> getRes() async {
    dio.options.baseUrl = 'http://opentable.herokuapp.com/api/';
    return await dio.get('restaurants?country=US');
  }

  Future<ResturantsModel> loadCategoriesResponse() async {
    var jsonString, jsonResponse;
    jsonString = await getRes();
    jsonResponse = json.decode(jsonString.toString());
    if (jsonString.statusCode >= 200 && jsonString.statusCode < 300) {
      _resturants = ResturantsModel.fromJson(jsonResponse);
      return _resturants;
    } else {
      print('false');
      return null;
    }
  }
}
