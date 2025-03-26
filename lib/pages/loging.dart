import 'package:flutter/material.dart';

import '../colors.dart';

class LodingWeather extends StatelessWidget {
  const LodingWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: WBlack,
      appBar: AppBar(
        backgroundColor: WBlack,
        title: Text(
          'Maad Weather',
          style: TextStyle(color: WWithe),
        ),
      
        centerTitle: true,
      ),
      body: Expanded(
        child: Center(
            child: CircularProgressIndicator(
          color: WWithe,
          backgroundColor: WWithe.withOpacity(0.4),
          strokeAlign: 5,
          strokeWidth: 7,
        )),
      ),
    );
  }
}
