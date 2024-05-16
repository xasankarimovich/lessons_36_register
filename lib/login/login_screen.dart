import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessons_36_register/utils/styles.dart';
import 'package:lessons_36_register/your_send_code/your_send_code.dart';

import '../create_account/create_account.dart';
import '../register/register.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome back",style: AppTextStyles.HeadLineblack,),
          10.height(),
          Text("Let's login to Connect your email",style: AppTextStyles.Paragraphblack,),
          10.height(),
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
                "name@example.com",
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
              label: Text(
                "*************",
                style: AppTextStyles.Paragraphblack,
              ),
            ),
          ),
          20.height(),
          Text("Forgot your password ?",style: AppTextStyles.Paragraphblack,),
          20.height(),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",style: AppTextStyles.Paragraphblack,),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sig in here",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),


            ],
          ),
          Spacer(),
          20.height(),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return YourSendCode();
                }),);
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
                    "Log in ",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          20.height(),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                      color: Colors.grey.shade100,
                    ),
                    height: 70,
                    width: 200,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.apple,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          "Apple",
                          style: AppTextStyles.HeadLineblack,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return Register();
                      }),);
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                        color: Colors.white70,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                          ),
                          Text("Google",
                              style: AppTextStyles.HeadLineblack),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          20.height(),
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
    );
  }
}
