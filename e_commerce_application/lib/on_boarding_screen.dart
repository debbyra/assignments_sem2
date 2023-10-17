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
                "MY-E SHOP",
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreenTwo(),
                    ),
                  );
                },
                child: const Text(">>"),
              )
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'on_boarding_screen_two.dart';

// class OnBoardingScreenOne extends StatelessWidget {
//   const OnBoardingScreenOne({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//           child: Column(
//         children: [
//           margin: EdgeInsets.only(top: 20.0),
//           const Text("Buy with My-E for Better deals",style: TextStyle(color: Colors.black),),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const OnBoardingScreenTwo(),
//                     ));
//               },
//               child: const Text("Next"))
//         ],
//       )),
//     );
//   }
// }
