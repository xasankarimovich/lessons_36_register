import 'package:flutter/material.dart';
import 'package:lessons_36_register/utils/styles.dart';

import '../your_send_code/your_send_code.dart';

class PhonNumber extends StatefulWidget {
  const PhonNumber({super.key});

  @override
  State<PhonNumber> createState() => _PhonNumberState();
}

class _PhonNumberState extends State<PhonNumber> {
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
              "Country of residance",
              style: AppTextStyles.HeadLineblack,
            ),
            Text(
              "Create your Phone number for Verification ID",
              style: AppTextStyles.Paragraphblack,
            ),
            20.height(),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                label: Text(
                  "000 000 000",
                  style: AppTextStyles.Paragraphblack,
                ),
              ),
            ),
            20.height(),
            Row(

              children: [
                Text(
                  "Send it aother way ?",
                  style: AppTextStyles.Paragraphblack,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                    ),
                  ),
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
                      return const YourSendCode();
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
