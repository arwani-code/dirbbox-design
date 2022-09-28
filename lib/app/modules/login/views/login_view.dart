import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              width: Get.width,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      "assets/images/logo-1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to ",
                    style: TextStyle(fontSize: 22, color: Color(0xff22215B)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Dirbbox",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 38,
                        color: Color(0xff22215B)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 230,
                    child: Text(
                      "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
                      style: TextStyle(color: Color(0xff7B7F9E)),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/ic-fingerprint.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Smart Id",
                              style: TextStyle(color: Color(0xFF567DF4)),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(150, 50),
                          backgroundColor: Color(0xFFDDEEFB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(color: Color(0xffffffff)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset("assets/images/ic-arrow1.png"),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(150, 50),
                          backgroundColor: Color(0xFF567DF4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: Text("Use Social Login",
                          style: TextStyle(fontSize: 13))),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ic-ig.png"),
                      SizedBox(
                        width: 60,
                      ),
                      Image.asset("assets/images/ic-twit.png"),
                      SizedBox(
                        width: 60,
                      ),
                      Image.asset("assets/images/ic-fb.png"),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: Text(
                    "Create an account",
                    style: TextStyle(fontSize: 15),
                  ))
                ],
              ),
            ),
          ],
        ));
  }
}
