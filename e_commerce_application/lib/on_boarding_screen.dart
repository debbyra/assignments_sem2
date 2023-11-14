import 'package:flutter/material.dart';
import 'on_boarding_screen_two.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Debby-Wright Collectionz",
                style: TextStyle(color: Colors.white, fontSize: 28.0,fontStyle: FontStyle.normal),
              ),
              Padding(padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreenTwo(),
                    ),
                  );
                },
                child: const Text(">>", style: TextStyle(color: Colors.black, fontSize: 30.0),),
              )
              )
              
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}




