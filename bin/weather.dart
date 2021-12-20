class Weather {
  const Weather({
    required this.weatherState,
    required this.maxTemp,
    required this.minTemp,
    required this.temp,
  });
  final String weatherState;
  final double maxTemp;
  final double minTemp;
  final double temp;
  factory Weather.fromJson(Map<String, Object?> json) {
    return Weather(
        weatherState: json['weather_state_name'] as String,
        maxTemp: json['max_temp'] as double,
        minTemp: json['min_temp'] as double,
        temp: json['the_temp'] as double);
  }
}
