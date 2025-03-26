import 'package:dio/dio.dart';
import 'package:test2/models/weatherTool.dart';

class WeatherServices {
  final dio = Dio();
  Future<Weather?> gHttps({required String loc}) async {
    final response = await dio.get(
    'http://api.weatherapi.com/v1/forecast.json',
       queryParameters: {
         "key": "b776df613c814da28f5212517251502",
         "q": loc,
         'aqi': "no",
         "days": 3,
       },
    );
    // if (response.statusCode == 200) {
      // WeatherModel model = WeatherModel.fromjson(response.data);
      Weather ww = Weather.fromJson(response.data);
      //print(model.country);
      print(ww.location!.country);

      return ww;
    // } else {
    //   print('we fucked');
    //   return null;
    // }
  }
}
