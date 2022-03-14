import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signUpScreen.dart';
import 'dart:math' as math;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNmaeController = TextEditingController();
  TextEditingController lastNmaeController = TextEditingController();
  bool vis = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
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
                                        border: Border.all(
                                            color: Colors.deepOrange),
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
                Container(
                  /*decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("lib/logo.png"),
                      fit: BoxFit.fill,
                    )),*/
                  height: 500,
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    'Hi There !',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 50),
                                  ),
                                  Text(
                                    'Welcome Back',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: TextField(
// controller: emailController,
                                decoration: new InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.email),
                                  labelText: "E-mail",
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.7)),
                                    borderSide:
                                        BorderSide(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: TextField(
// controller: passwordController,
                                obscureText: vis,
                                decoration: new InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                    icon: Icon(vis
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        vis = !vis;
                                      });
                                    },
                                  ),
                                  labelText: "Password",
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    borderSide: BorderSide(
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
//forgot password screen
                              },
                              child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: const Text(
                                    'Forgot Password ?',
                                    style: TextStyle(color: Colors.orange),
                                  )),
                            ),
                            Container(
                              child: FlatButton(
                                onPressed: () {
// print(emailController.text); // print(passwordController.text);
                                },
                                child: Container(
                                  width: 170,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                const Text('Does not have account?'),
                                TextButton(
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.orange),
                                  ),
                                  onPressed: () {
                                    Get.to(Signup());
                                  },
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
