import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/cubit/getWeather/getCubit.dart';
import 'package:test2/pages/wether.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //     providers: [
    //       BlocProvider(
    //         create: (context) => WeatherCubit(),
    //       ),
    //      
    //  ],
    return 
    BlocProvider(create: (context) => WeatherCubit(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: WetherPage(),
        ));
  }
}
