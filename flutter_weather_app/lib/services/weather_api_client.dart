// http dosyasına ihtiyacımız var
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getcurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=3d6a0bf0bc43911da28bcca5f34a4ae1&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
