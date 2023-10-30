import 'package:e_commerce_application/home_page.dart';
import 'package:e_commerce_application/signup.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            " Login Here!",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 253, 252, 252)),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: const Color.fromARGB(255, 253, 252, 252),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 252, 252),
                    border: Border.all(
                      color: Colors.blueGrey, // Border color
                      width: 1.0, // Border width
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(
                        8.0)), // Optional: Add border radius for rounded corners
                  ),
                  child: Column(
                    children: [
                      const TextField(
                        decoration:
                            InputDecoration(hintText: ("Enter your Email")),
                      ),
                      const TextField(
                        decoration:
                            InputDecoration(hintText: ("Enter your Password")),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 90.0),
                      ),
                      Row(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: const Text("LogIn",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 252, 251, 251))),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 123, 130, 154)), // Change the color to your desired background color
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            },
                            child: const Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.black),
                            )),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                          child: const Text("SignUp",
                              style: TextStyle(
                                  color: const Color.fromARGB(
                                      255, 252, 251, 251))),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 123, 130, 154)), // Change the color to your desired background color
                          ),
                        )
                      ]),
                    ],
                  ),
                ))));
  }
}
