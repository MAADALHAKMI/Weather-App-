import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/cubit/getWeather/getCubit.dart';

import '../colors.dart';
import '../componets/card.dart';
import '../models/weatherTool.dart' as toRmoveLibiryError;
import 'wetherSearch.dart';

class BodyWether extends StatefulWidget {
  const BodyWether({super.key});

  @override
  State<BodyWether> createState() => _BodyWetherState();
}

class _BodyWetherState extends State<BodyWether> {
  @override
  Widget build(BuildContext context) {
 toRmoveLibiryError.Weather weather=  BlocProvider.of<WeatherCubit>(context).weather!;
 IconData? weatherIcon=  BlocProvider.of<WeatherCubit>(context).weatherIcon;
    return Scaffold(
          resizeToAvoidBottomInset: false,
     
      backgroundColor: WBlack,
      appBar: AppBar(
        backgroundColor: WBlack,
        title: Text('Maad Weather',style:  TextStyle(color: WWithe),),
        //elevation: 2,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              WetherSearch(),
              Spacer(),
              Row(
                children: [
                   Icon(Icons.location_pin,size: 46,color: WWithe,),
                   SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        weather.location!.region!,
                        style:  TextStyle(fontSize: 25,color: WWithe),
                      ),
                       Text(weather.location!.country!,style: TextStyle(color:WWithe),),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                  SizedBox(height: 100,)
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Column(
                    children: [
                      Text(weather.current!.condition!.text.toString(),style: TextStyle(color:WWithe,fontSize: 25),),
                      Text(weather.current!.tempC.toString(),style: TextStyle(color:WWithe,fontSize: 40),),
                    ],
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  Icon(
                 weatherIcon,
                    color: WWithe,
                    size: 60,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  CardWeather(index: 0),
                  CardWeather(index: 1),
                  CardWeather(index: 2),
                ],
              ),
            Spacer()],
            
          ),
          
        ),
      ),
    );
  }
}
