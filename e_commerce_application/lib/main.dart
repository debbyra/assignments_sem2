import 'package:e_commerce_application/login.dart';
import 'package:flutter/material.dart';

// my own imports
import 'on_boarding_screen.dart';
import 'on_boarding_screen_two.dart';
import 'home_page.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Set your initial route here
      routes: {
        '/': (context) =>
            const OnBoardingScreenOne(), // Define the first screen route
        '/second': (context) =>
            const OnBoardingScreenTwo(), // Define the second screen route
        '/third': (context) => HomePage(), //Define the home page route

        '/fifth':(context) =>  LogIn(),
        '/sixth':(context) =>  SignUp()
      },
    );
  }
}
