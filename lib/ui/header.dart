import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              items:const <Widget>[
                Icon(Icons.home, size: 30),
                Icon(Icons.person, size: 30),
                Icon(Icons.computer_outlined, size: 30),
              ],
              onTap: (index) {
                
                //Handle button tap
              },
            ),
          ),
        ],
      ),
    );
  }
}
