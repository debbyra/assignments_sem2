import 'package:e_commerce_application/login.dart';
import 'package:flutter/material.dart';
// import 'signup.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Image(
            //   image: NetworkImage(
            //     "https://media.istockphoto.com/id/1368994091/photo/couple-shopping-using-phone-application-holding-shopper-bags-in-mall.jpg?s=612x612&w=0&k=20&c=AnmKCImJhAqQzFQXh1xUZ9M0oLGGbrxpbfYmlXoGrYE=",
            //   ),
            //   width: 500,
            //   height: 500,
            //   alignment: Alignment.center,
            // ),
            Image.asset(
              "images/onboarding.png"
            ),
            const Text(
              "Shopping Made Easy...!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10), // Add some vertical space
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                    width: 20), // Add some horizontal space between buttons
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogIn(),
                      ),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 112, 113, 116))),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
