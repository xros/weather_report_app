import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weather.dart';

class WeatherApiClient {
  static const baseUrl = 'https://www.metaweather.com/api';

  Future<int> getLocationId(String city) async {
    final locationUrl = Uri.parse('$baseUrl/location/search/?query=$city');
    final locationResponse = await http.get(locationUrl);
    if (locationResponse.statusCode != 200) {
      throw WeatherApiException('Error getting location for city $city');
    }
    final locationJson = jsonDecode(locationResponse.body) as List;
    if (locationJson.isEmpty) {
      throw WeatherApiException('Error finding the city $city');
    }
    return (locationJson.first['woeid']) as int;
  }

  Future<Weather> fetchWeather(int locationId) async {
    final weatherUrl = Uri.parse('$baseUrl/location/$locationId/');
    final weatherResponse = await http.get(weatherUrl);
    if (weatherResponse.statusCode != 200) {
      throw WeatherApiException(
          'Error getting weather report for city id $locationId');
    }
    final weatherJson = jsonDecode(weatherResponse.body);
    final consolidatedWeather = weatherJson['consolidated_weather'] as List;
    if (consolidatedWeather.isEmpty) {
      throw WeatherApiException(
          'Weather data is not available for locationId: $locationId');
    }
    return Weather.fromJson(consolidatedWeather[0]);
  }

  Future<Weather> getWeather(String city) async {
    final locationId = await getLocationId(city);
    return fetchWeather(locationId);
  }
}

class WeatherApiException implements Exception {
  const WeatherApiException(this.message);
  final String message;
}
