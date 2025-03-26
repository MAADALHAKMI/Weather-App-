import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/colors.dart';
import 'package:test2/cubit/getWeather/getCubit.dart';

import '../models/weatherTool.dart' as toRmoveLibiryError;

class CardWeather extends StatefulWidget {
  int index;
  CardWeather({super.key, required this.index});

  @override
  State<CardWeather> createState() => _CardWeatherState();
}

class _CardWeatherState extends State<CardWeather> {
  @override
  Widget build(BuildContext context) {
    // Weather weather = BlocProvider.of<WeatherCubit>(context).weather!;
    toRmoveLibiryError.Weather weather =
        BlocProvider.of<WeatherCubit>(context).weather!;
    List<IconData> icondataForcast =
        BlocProvider.of<WeatherCubit>(context).iconlist;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(color: WWithe.withOpacity(.1)),
          child: Column(
            children: [
              Text(
                weather.forecast!.forecastday![widget.index].date!.toString(),
                style: TextStyle(color: WWithe),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                weather
                    .forecast!.forecastday![widget.index].day!.condition!.text
                    .toString(),
                style:
                
                 TextStyle(color: WWithe,),
              ),
              SizedBox(
                height: 12,
              ),
              Icon(
                icondataForcast[widget.index],
                color: WWithe,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                weather.forecast!.forecastday![widget.index].day!.avgtempC
                    .toString(),
                style: TextStyle(color: WWithe),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
