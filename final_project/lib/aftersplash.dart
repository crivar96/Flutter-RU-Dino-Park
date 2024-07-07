import 'package:flutter/material.dart';
import 'homepage.dart';
import 'fossilpark.dart';
import 'invertebrates.dart';
import 'vertebrates.dart';
import 'nonfossils.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dino Park',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.amber),
        home: const HomePage(),
        /******* ROUTE DEFINITIONS ******/
        routes: <String, WidgetBuilder>{
          "Invertebrates": (BuildContext context) => const Invertebrates(),
          "Vertebrates": (BuildContext context) => const Vertebrates(),
          "NonFossils": (BuildContext context) => const NonFossils(),
          "FossilPark": (BuildContext context) => const FossilPark(),
        });
  }
}
