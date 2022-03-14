import 'package:flutter/material.dart';
import 'dart:math' as math;

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Signup> {
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
                Container(
                  height: 500,
                 /* decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("lib/logo.png"),
                    fit: BoxFit.fill,
                  )),*/
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[

                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              '<Welcome !',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 50),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 25,
                                  offset: const Offset(0.5, 0),
                                ),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
// controller: firstNmaeController,
                                    decoration: new InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      labelText: "First Name",
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
                                        borderSide:
                                            BorderSide(color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25),
                                Expanded(
                                  child: TextField(
// controller: lastNmaeController,
                                    decoration: new InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      labelText: "Last Name",
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
                                        borderSide:
                                            BorderSide(color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 25,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextField(
// controller: emailController,
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: Icon(Icons.email),
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
                                      BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 25,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextField(
// controller: passwordController,
                              obscureText: vis,
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                iconColor: Colors.orange,
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 25,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextField(
                              obscureText: vis,
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                iconColor: Colors.orange,
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
                                labelText: "Confirm Password",
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
                          SizedBox(
                            height: 10,
                          ),
                          FlatButton(
                            onPressed: () {
                              //signUp method
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              height: 50,
                              width: 220,
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style:
                                      TextStyle(fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
