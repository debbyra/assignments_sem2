import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductDetailsPage(title: 'Product Details'),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 242, 241),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 9, 65),
          titleTextStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          title: Text(title),
        ),
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
            children: <Widget>[
              Product(
                  name: "Butterfly-Top",
                  description:
                      "Butterfly top fit for the care-free summer",
                  price: "UGX: 35,000",
                  image: "butterfly_top.jpeg")
            ]));
  }
}

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final String price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        height: 120,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("project_assets/images/" + this.image, width: 40,),
                Expanded(
                  child: Container(
                      // padding: EdgeInsets.all(),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                    Text("Name: " + this.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Desription: " + this.description),
                    Text("Price: " + this.price.toString()),
                  ])),
                )
              ]),
        ));
  }
}