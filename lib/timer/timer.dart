import 'dart:async';

import 'package:flutter/material.dart';

class TimerApp extends StatefulWidget {
  const TimerApp({super.key});

  @override
  State<TimerApp> createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  int seconds = 0;
  final timerController = TextEditingController();
  late Timer time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: timerController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                labelText: 'Enter the Timer',
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              String timer = timerController.text;
               if(timer.isNotEmpty){
                 seconds = int.parse(timer);
                time =  Timer.periodic(Duration(seconds: 1), (timer) {
                   if(seconds > 0){
                     seconds--;
                     setState(() {
                     });
                   }else{
                     time.cancel();
                   }
                 });
               }
            },
            child: Text(
              "Enter",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w900),
            ),

          ),
          Text(seconds.toString()),
        ],
      ),
    );
  }
}
