import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/colors.dart';
import 'package:test2/cubit/getWeather/getCubit.dart';

class WetherSearch extends StatefulWidget {
  const WetherSearch({super.key});

  @override
  State<WetherSearch> createState() => _WetherSearchState();
}

class _WetherSearchState extends State<WetherSearch> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: WWithe.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onSubmitted: (value) {
                    BlocProvider.of<WeatherCubit>(context).getWeather(value);
                  },
                  controller: search,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'select city or countery',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
