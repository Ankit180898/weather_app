import 'package:weather/weather.dart';

class WeatherService {
  static const String _apiKey="f7afae332b7e4748a0942f1bb4b62450";
  static const String _cityName="Dumka";

  static Future<Weather> getWeathervalues(){
    WeatherFactory wf=WeatherFactory(_apiKey);
    return wf.currentWeatherByCityName(_cityName);
  }
}