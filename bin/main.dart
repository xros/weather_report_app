import 'dart:async';
import 'dart:io';

import 'weather_api_client.dart';

Future<void> main(List<String> args) async {
  if (args.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
    // print('Syntax: ./weather_report.exe <city>');
    return;
  }
  final city = args.first;
  final api = WeatherApiClient();
  try {
    // get locationId
    final weather = await api.getWeather(city);

    print('''
  City: $city
  Weather State: ${weather.weatherState}
  Max Temp: ${weather.maxTemp.toStringAsFixed(2)}
  Min Temp: ${weather.minTemp.toStringAsFixed(2)}
  Current Temp: ${weather.temp.toStringAsFixed(2)}
  ''');
  } on WeatherApiException catch (e) {
    print(e.message);
  } on SocketException catch (_) {
    print('Could not fetch data. Check your Internet connection');
  } catch (e) {
    print(e);
  }
}
