//Import your model
import 'package:flutter_table_with_dio_and_provider/home/model/statistics_model.dart';
//Import dio
import 'package:dio/dio.dart';
//import material or outhers to ChangeNotifier
import 'package:flutter/material.dart';

class StatiticsRepository extends ChangeNotifier {
  //Instantiate the dio package
  final dio = Dio();
  //Instantiate your url
  final String url =
      'https://api.brasil.io/v1/dataset/covid19/caso/data/?da=&format=json&search=';
  //Iniciate the List
  List<Covid> statitics = [];

  //Create a function to get data with dio
  getData() async {
    final response = await dio.get(url,
        options: Options(
            contentType: Headers.formUrlEncodedContentType,
            headers: {
              "Authorization": " Token 3013bf534a941967bcbe455403aba1e386ba6219"
            }));

    var list = response.data['results'] as List;

    for (var json in list) {
      final item = Covid.fromJson(json);
      statitics.add(item);
    }
    //Remember to use notifylisteners to reativite with the view
    notifyListeners();
  }
}
