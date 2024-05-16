import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lessons_36_register/utils/styles.dart';

import '../login/login_screen.dart';
import '../register/register.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Let's start your Schedule activity",
              textAlign: TextAlign.center,
              style: AppTextStyles.HeadLineblack,
            ),
            Text(
              "Quickly see your upcoming event task,conference calls,weather,and more",
              textAlign: TextAlign.center,
              style: AppTextStyles.Paragraphblack,
            ),
            Container(
              height: 470,
              width: double.infinity,
              child: Image.asset(
                "assets/images/schedule2.png",
                fit: BoxFit.cover,
              ),
            ),
            20.height(),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
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
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                      return Register();
                    }),);
                  },
                  child: Center(
                    child: Text(
                      "Create Account",
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
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) {
                            return const CreateAccount();
                          }),
                        );
                      },
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apple,
                              size: 50,
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
                        width: 200,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Your Have Account?",
                          style: AppTextStyles.Paragraphblack,
                        ),
                      ],
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                      return  LoginScreen();
                    }));
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
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
