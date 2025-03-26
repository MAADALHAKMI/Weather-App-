
class WeatherModel {
  String? name;
  String? country;
  double? tempC;
  String? text;
  String? icon;

//  counstractor
  WeatherModel({
    required this.name,
    required this.country,
    required this.tempC,
    required this.text,
    required this.icon,
  });



///////////////////////// named constractor/////////////////////////////////////////////
///
  // WeatherModel.fromjson(dynamic json)
  // {
  //   name=json['location']['name'];
  //   country= json['location']['country'];
  //   tempC=json['current']['temp_c'];
  //   text=json['current']['condition']['text'];
  //   icon=json['current']['condition']['icon'];
  // }

  factory WeatherModel.fromjson(dynamic json) => WeatherModel(
        name: json['location']['name'],
        country: json['location']['country'],
        tempC: json['current']['temp_c'],
        text: json['current']['condition']['text'],
        icon: json['current']['condition']['icon'],
      );
}
