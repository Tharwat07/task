import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/View/loginScreen.dart';
import 'View/signUpScreen.dart';
import 'dart:math' as math;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: 800,
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Transform.rotate(
                                angle: -math.pi / 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35))),
                                  padding: EdgeInsets.all(20),
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Transform.rotate(
                                angle: -math.pi / 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      border:
                                          Border.all(color: Colors.deepOrange),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35))),
                                  padding: EdgeInsets.all(20),
                                  width: 210,
                                  height: 210,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              TextButton(
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.orange),
                ),
                onPressed: () {
                  Get.to(const Login());
                },
              ),
              TextButton(
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20, color: Colors.orange),
                ),
                onPressed: () {
                  Get.to(Signup());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
