import 'package:flutter/material.dart';
import 'package:restaurant/Pages/homeScreen.dart';
import 'package:restaurant/Pages/ordersScreeen.dart';
import 'package:restaurant/Pages/profileScreen.dart';
import 'package:restaurant/Pages/storesScreen.dart';
import 'package:restaurant/constants/constants.dart';


class BottomBar extends StatefulWidget {
  //int index;
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int currentIndex = 0;

  List _screens = [
    Home(),
    Stores(),
    Orders(),
    Profile()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: _screens[currentIndex],
        ),


        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: buttonColor,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          elevation:10,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
        
            BottomNavigationBarItem(
              icon: Icon(Icons.note),
              label: 'Home'
            ),
        
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: 'Stores'
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Order'
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Profile'
            ),
          
        
          ]
        ),

    );
  }
}