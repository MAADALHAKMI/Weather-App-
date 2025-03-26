import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/colors.dart';
import 'package:test2/cubit/getWeather/getCubit.dart';
import 'package:test2/cubit/getWeather/getState.dart';
// import 'package:test2/models/weather.dart';

import 'package:test2/models/weatherTool.dart' as weatherTool;
import 'package:test2/pages/body.dart';
import 'package:test2/pages/erroe.dart';
import 'package:test2/pages/loging.dart';


import 'wetherSearch.dart';

class WetherPage extends StatefulWidget {
  const WetherPage({super.key});

  @override
  State<WetherPage> createState() => _WetherPageState();
}

class _WetherPageState extends State<WetherPage> {
  // weatherTool.Weather ?w;
  bool isLoding = true;

  @override
  void initState() {
    
    super.initState();
    BlocProvider.of<WeatherCubit>(context).getWeather('aden');
  }

  // Future getApi() async {

  //     w = await WeatherServices().gHttps(loc: 'sanaa');

  //     print('sssssssssssssss');

  //   setState(() {
  //     isLoding = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    weatherTool.Weather? weather =
        BlocProvider.of<WeatherCubit>(context).weather;
    return 
            BlocBuilder<WeatherCubit, WeatherState>(
              builder: (context, state) {
                if (state is LodingWeatherS) {
                  return LodingWeather();
                } else if (state is SucessWeatherS) {
                  return BodyWether();
                } else {
                  return ErrorPage();
                }
              },
          

        //      Spacer(),
            // BodyWether(),
            //   LodingWeather(),
            //  ErrorPage(),
          
        
      
    );
  }
}
