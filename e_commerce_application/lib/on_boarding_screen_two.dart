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
                "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
              ),
              width: 500,
              height: 500,
              alignment: Alignment.center,
            ),
            const Text(
              "Shopping Made Easy... Get Started !",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), // Add some vertical space
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back"),
                ),
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
                  child: const Text("Next"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}