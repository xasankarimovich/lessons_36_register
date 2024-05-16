import 'package:flutter/material.dart';

import '../active_code/active_code.dart';
import '../utils/styles.dart';

class YourSendCode extends StatefulWidget {
  const YourSendCode({super.key});

  @override
  State<YourSendCode> createState() => _YourSendCodeState();
}

class _YourSendCodeState extends State<YourSendCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm your phone number",
              style: AppTextStyles.HeadLineblack,
            ),
            10.height(),
            Text(
              "Check your message because we send you send a code ",
              style: AppTextStyles.Paragraphblack,
            ),
            20.height(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for(var i = 0; i < 4; i++)
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),

                    ),
                  ),
                ),


              ],
            ),
            10.height(),
            Row(
              children: [
                Icon(Icons.help_center_outlined,color: Colors.grey,),
                Text("Help text",style: AppTextStyles.Paragraphblack,),
              ],
            ),
            Spacer(),
            Padding(

              padding: const EdgeInsets.all(30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) {
                      return const ActiveCode();
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
