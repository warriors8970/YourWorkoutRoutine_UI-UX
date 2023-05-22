import 'package:fitness/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex =0;
  final screens = [
    Center(child: Text('Home'),),
    Center(child: Text('Health'),),
    CalendarPage(),
    Center(child: Text('User'),)
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:screens[currentIndex],
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: RenderErrorBox.backgroundColor = Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24))
            
          ),
          child: BottomNavigationBar(

            unselectedFontSize: 0.0,
              selectedFontSize: 0.0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor:Colors.black,
              showUnselectedLabels: false,
              elevation: 0,
              currentIndex: currentIndex,
              onTap: (index) => setState(() =>currentIndex = index),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home),
                    label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.leaderboard_rounded),
                    label: 'fav'),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
                    label: 'person'),
                BottomNavigationBarItem(icon: Icon(Icons.person,shadows: [],),
                    label: 'person'),
              ] ),
        ),
        ),
      );

  }
}

