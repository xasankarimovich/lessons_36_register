import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessons_36_register/utils/styles.dart';

import 'calendar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 630,
            width: double.infinity,
            child: Image.asset(
              "assets/images/schedule.png",
              fit: BoxFit.cover,
            ),
          ),
          120.height(),
          Text(
            "Set Your Schedule",
            style: AppTextStyles.HeadLineblack,
          ),
          20.height(),
          Text(
            "Quickly see your upcoming event task,conference calls,weather,and more",
            textAlign: TextAlign.center,
            style: AppTextStyles.Paragraphblack,
          ),
          20.height(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) {
                    return const CalendarSchedule();
                  }),
                );
              },
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
