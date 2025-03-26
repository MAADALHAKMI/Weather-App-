import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test2/colors.dart';
import 'package:test2/services/weather.dart';
import 'package:weather_icons/weather_icons.dart';

import '../../models/weatherTool.dart';
import 'getState.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(InitWeatherS());

  Weather? weather;
  IconData? weatherIcon;
  List<IconData> iconlist = [Icons.sunny, Icons.sunny, Icons.sunny];

  void getWeather(String loc) async {
    emit(LodingWeatherS());
    try {
      weather = await WeatherServices().gHttps(loc: loc);
      getColor();
      getlisticon(index: 0);
      getlisticon(index: 1);
      getlisticon(index: 2);

      emit(SucessWeatherS());
      print(weather!.location!.region);
    } catch (e) {
      emit(FailedWeatherS(error: e.toString()));
      print(e);
    }
  }

  getlisticon({required int index}) {
    switch (weather!.forecast!.forecastday![index].day!.condition!.text) {
      case 'Mist':
        {
          iconlist[index] = WeatherIcons.fog;
        }
      case 'Clear':
        {
          iconlist[index] = WeatherIcons.day_cloudy;
        }
      case 'Ligth rain':
        {
          iconlist[index] = WeatherIcons.rain;
        }
      case 'Partly cloudy':
        {
          iconlist[index] = WeatherIcons.night_partly_cloudy;
        }
      case 'Overcast':
        {
          iconlist[index] = WeatherIcons.day_sunny_overcast;
        }
      case 'Sunny':
        {
          iconlist[index] = WeatherIcons.day_sunny;
        }
      default :
      {
         iconlist[index] = WeatherIcons.hail;
      }
        
        
    }
  }

  getColor() {
    switch (weather!.current!.condition!.text) {
      case 'Mist':
        {
          WWithe = Color(0xff393E5B);
          WBlack = Color(0xffEDE6CB);
          weatherIcon = WeatherIcons.fog;
        }
      case 'Clear':
        {
          WWithe = Color(0xffFAFAFA);
          WBlack = Color.fromARGB(255, 87, 227, 255);
          weatherIcon = WeatherIcons.day_cloudy;
        }
      case 'Ligth rain':
        {
          WWithe = Color(0xff393E5B);
          WBlack = Color(0xffEDE6CB);
          weatherIcon = WeatherIcons.rain;
        }
      case 'Partly cloudy':
        {
          WWithe = Color.fromARGB(255, 137, 155, 255);
          WBlack = Color.fromARGB(255, 0, 0, 0);
          weatherIcon = WeatherIcons.night_partly_cloudy;
        }
      case 'Overcast':
        {
          WWithe = Color.fromARGB(255, 59, 61, 77);
          WBlack = Color.fromARGB(255, 255, 255, 255);
          weatherIcon = WeatherIcons.day_sunny_overcast;
        }
      case 'Sunny':
        {
          WWithe = Color(0xffFAFAFA);
          WBlack = Color(0xffFFA957);
          weatherIcon = WeatherIcons.day_sunny;
        }
    }
  }
}
