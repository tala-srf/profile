import 'dart:async';

import 'package:animated_background/animated_background.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/center1.dart';
import 'package:portfolio/ui/end.dart';
import 'package:portfolio/ui/header.dart';
import 'package:portfolio/ui/start.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
   int index = 0;

  @override
  // ignore: must_call_super
  void initState() {
  
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
         List<Widget> pages = [
  Start(),
  Center1(),
  End()
  ];
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 231, 198, 221),
      
    appBar: AppBar(
      backgroundColor: Colors.white,
     // foregroundColor: Colors.white,
      title: Container(
      color: Colors.white,
      child: Row(
        children: [
         const Expanded(flex:4,
           child: Padding(
             padding: EdgeInsets.only(left: 16.0),
             child: Text("TALA",style: TextStyle(color: Color.fromARGB(255, 236, 33, 182),fontSize:60,fontWeight: FontWeight.bold)),
           )),
          Expanded(
            flex: 2,
            child: CurvedNavigationBar(
              backgroundColor: Color.fromARGB(255, 236, 33, 182),
              items:const [
                Icon(Icons.home, size: 30,color: Color.fromARGB(255, 236, 33, 182)),
                Icon(Icons.person, size: 30,color: Color.fromARGB(255, 236, 33, 182)),
                Icon(Icons.computer_outlined, size: 30,color: Color.fromARGB(255, 236, 33, 182)),
              ],
           onTap: (value) {
            setState(() {
              index = value;
            
            });
          },

            ),
          ),
        ],
      ),
    ),
    elevation: 12,
  
   ),
       body:
      // AnimatedBackground(
        

      //     behaviour: RandomParticleBehaviour(),
       
      //     vsync: this,
      //     child: 
          SingleChildScrollView(

          
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       // Header(),
    const Start(),
    const SizedBox(height: 60,),
     const Center1(),
      const  SizedBox(height: 60,),
      End()]),
          )
          //),
    );

  }
}
