import 'package:flutter/material.dart';
import 'package:petsco/views/HomeNavPage/HomeNavPage.dart';
import 'package:petsco/views/appbarPages/Notifications.dart';
import 'package:petsco/views/appbarPages/SearchView.dart';
import 'package:petsco/views/product/CategorieAnimal.dart';

import 'package:petsco/views/steppers/Stepper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Rubik",
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: StepersPage(),
      routes: {
        '/': (BuildContext context) => StepersPage(),
        '/home': (BuildContext context) => HomeNavPage(),
        '/notif': (BuildContext context) => Notifications(),
        '/search': (BuildContext context) => SearchPage(),
        '/animalCat': (BuildContext context) => CategorieAnimal(),
      },
    );
  }
}
