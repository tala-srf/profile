import 'package:flutter/material.dart';
import 'package:portfolio/ui/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: SplashScreenView( duration: 5000,    
 
    textStyle: const TextStyle(color: Colors.white,fontSize: 90,fontWeight: FontWeight.bold,inherit: true),
      text: "TS",
    //   colors: [ Color.fromARGB(255, 236, 33, 182),
    //  Color.fromARGB(255, 235, 51, 186),
    //  Color.fromARGB(255, 243, 131, 213),
    //  Color.fromARGB(255, 237, 28, 182) ],
    
      backgroundColor:const Color.fromARGB(255, 236, 33, 182),

      navigateRoute: Home(),
        
      )
    );
  }
}


