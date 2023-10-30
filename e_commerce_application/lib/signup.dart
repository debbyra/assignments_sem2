import 'package:e_commerce_application/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "SignUp Here",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 253, 252, 252)),

          ),
          backgroundColor: Colors.blueAccent),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blueGrey, // Border color
                  width: 1.0, // Border width
                ),
                borderRadius: const BorderRadius.all(Radius.circular(
                    8.0)), // Optional: Add border radius for rounded corners
              ),
              child: Column(
                children: [
                  const Text(
                    " LogIn",
                    style: TextStyle(
                        fontSize: 22, color: Color.fromARGB(0, 233, 210, 2)),
                  ),
                  const TextField(
                    decoration:
                        InputDecoration(hintText: ("Enter your Name")),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: ("Enter your Email")),
                  ),
                  const TextField(
                    decoration:
                        InputDecoration(hintText: ("Enter your password")),
                  ),
                  const TextField(
                    decoration:
                        InputDecoration(hintText: ("Confirm your password")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogIn(),
                            ),
                          );
                        },
                        child: const Text("SignUp",
                            style: TextStyle(
                              color: Color.fromARGB(255, 252, 251, 251),
                            )),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color
                              .fromARGB(255, 136, 162,
                              247)), // Change the color to your desired background color
                        )),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogIn(),
                          ),
                        );
                      },
                      child: const Text(
                        "Already Signed Up? ",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      )),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => LogIn(),
                  //       ),
                  //     );
                  //   },
                  //   child: const Text("Now LogIn",
                  //       style: TextStyle(
                  //           color: Color.fromARGB(255, 252, 251, 251))),
                  //   style: ButtonStyle(
                  //     backgroundColor: MaterialStateProperty.all(const Color
                  //         .fromARGB(255, 136, 162,
                  //         247)), // Change the color to your desired background color
                  //   ),
                  // ),
                ],
              ),
            )),
      ),
    );
  }
}
