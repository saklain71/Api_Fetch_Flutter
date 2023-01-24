
import 'package:api_fetch_practice/ui/details.dart';
import 'package:api_fetch_practice/ui/slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        home: Scaffold(
          body: HomePage()
         // body: SliderPage();

        )
    );
  }

}

