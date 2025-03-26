class WeatherState {}

class InitWeatherS extends WeatherState {}

class LodingWeatherS extends WeatherState {}

class SucessWeatherS extends WeatherState {}

class FailedWeatherS extends WeatherState {
  FailedWeatherS( {required String error});
}
