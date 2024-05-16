import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessons_36_register/utils/styles.dart';

import '../phone_number/phone_number.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: AppTextStyles.HeadLineblack,
            ),
            10.height(),
            Text(
              "Create your account for your schedule",
              style: AppTextStyles.Paragraphblack,
            ),
            10.height(),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                prefixIcon: Icon(
                  CupertinoIcons.person,
                  color: Colors.grey,
                ),
                label: Text(
                  "Your name",
                  style: AppTextStyles.Paragraphblack,
                ),
              ),
            ),
            20.height(),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                ),
                label: Text(
                  "Your email",
                  style: AppTextStyles.Paragraphblack,
                ),
              ),
            ),
            20.height(),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                label: Text(
                  "**************",
                  style: AppTextStyles.Paragraphblack,
                ),
              ),
            ),
            20.height(),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                label: Text(
                  "**************",
                  style: AppTextStyles.Paragraphblack,
                ),
              ),
            ),
            20.height(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You have an account?",
                  style: AppTextStyles.Paragraphblack,
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sig in here",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 95,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(

              padding: const EdgeInsets.all(30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) {
                      return const PhonNumber();
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
                      "Countine",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "By continuing you agree to Loane's",
                style: AppTextStyles.Paragraphblack,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Terms of Use",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Text(
                  "&",
                 style: TextStyle(
                  color: Colors.black38,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
                ),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
