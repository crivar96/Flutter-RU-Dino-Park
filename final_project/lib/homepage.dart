import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    const homeTextColor = Color(0xFF57150B);
    const backgroundColor = Color(0xFFFFCC00);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: homeTextColor,
        title: const Text(
          "RU Fossil Park",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("FossilPark");
            },
          child: Image.asset(
            "assets/rulogo.png",
            width: 375,
            height: 264,
          ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("FossilPark");
            },
            child: const Text(
              'ABOUT RU FOSSIL PARK',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Fossils Found at RU Fossil Park',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: homeTextColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Invertebrates");
            },
            child: const Text(
              "INVERTEBRATES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Vertebrates");
            },
            child: const Text(
              "VERTEBRATES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("NonFossils");
            },
            child: const Text(
              "NON-FOSSILS",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: homeTextColor),
            ),
          ),
        ],
      )),
    );
  }
}
