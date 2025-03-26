import 'package:flutter/material.dart';
import 'package:test2/colors.dart';

import 'wetherSearch.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
     
      backgroundColor: WBlack,
      appBar: AppBar(
        backgroundColor: WBlack,
        title: Text('Maad Weather',style:  TextStyle(color: WWithe),),
       
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: Column(
            children: [
              WetherSearch(),
              Spacer(),
              Text(
                'some think went wrong',
                style: TextStyle(color: WWithe),
              ),
              Text('Try agin ', style: TextStyle(color: WWithe)),
              Spacer(),
            ],
            
          ),
        ),
      ),
    );
  }
}
