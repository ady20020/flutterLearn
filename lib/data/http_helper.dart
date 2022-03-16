import 'package:http/http.dart' as http;
import 'dart:convert';

import 'weather.dart';

class HttpHelper {
  // https://api.openweathermap.org/data/2.5/weather?q=dubai&appid=03ea3299baf8b5c4cd7bc24ba05110ec

  final String authority ='api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = '03ea3299baf8b5c4cd7bc24ba05110ec' ;
  Future<Weather> getWeather (String location) async {
    Map<String, dynamic> parameters = {'q':location,'appId':apiKey};
    Uri uri =Uri.https(authority,path,parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);
    return weather;

  }
  
}