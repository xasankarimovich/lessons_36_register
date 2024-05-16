import 'package:flutter/material.dart';
import 'home_screen.dart';
class LoopDayApp extends StatefulWidget {
  const LoopDayApp({super.key});

  @override
  State<LoopDayApp> createState() => _LoopDayAppState();
}
class _LoopDayAppState extends State<LoopDayApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: Image.asset("assets/images/loop.png",
        fit: BoxFit.cover,),
      )
    );
  }
}
