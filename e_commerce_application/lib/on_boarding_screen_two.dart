import 'package:e_commerce_application/signup.dart';
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
            
            
            const Image(
              image: NetworkImage(
                "https://media.istockphoto.com/id/1368994091/photo/couple-shopping-using-phone-application-holding-shopper-bags-in-mall.jpg?s=612x612&w=0&k=20&c=AnmKCImJhAqQzFQXh1xUZ9M0oLGGbrxpbfYmlXoGrYE=",
              ),
              width: 500,
              height: 500,
              alignment: Alignment.center,
            ),
            const Text(
              "Shopping Made Easy...!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10), // Add some vertical space
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   child: const Text("Back", style: TextStyle(color: Colors.black),),
                // ),
                const SizedBox(width: 20), // Add some horizontal space between buttons
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  SignUp(),
                      ),
                    );
                  },
                  style: ButtonStyle(),
                  child: const Text("Get Started", style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue[50],
    );
  }
}