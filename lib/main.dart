import 'package:fitness/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fitness/person.dart';
import 'package:fitness/UI_colors/colors.dart';


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
    Center(child: Text('bruhh'),),
    Center(child: Text('Health'),),
    CalendarPage(),
    Person(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body:screens[currentIndex],
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                spreadRadius: 1,
                offset: Offset(5, 5)
              )
            ],
            color: RenderErrorBox.backgroundColor = Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24))

          ),
          child: BottomNavigationBar(

            unselectedFontSize: 0.0,
              selectedFontSize: 0.0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor:Colors.white,
              unselectedItemColor: iconColor,
              showUnselectedLabels: false,
              elevation: 0,
              currentIndex: currentIndex,
              onTap: (index) => setState(() =>currentIndex = index),
              items:  [
                BottomNavigationBarItem(icon: Container(
                  padding: const EdgeInsets.all(14),
                  //margin: EdgeInsets.symmetric(horizontal: ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    color: currentIndex == 0
                        ? const Color(0xff2a93d5)
                        : Colors.transparent,
                    border: Border.all(
                      color: currentIndex == 0
                          ? const Color(0xff2a93d5)
                          : Colors.transparent,
                      width: 0.0,
                    )
                  ),
                    child: const Icon(Icons.home),
      ),
                    label: ''),
                BottomNavigationBarItem(icon: Container(

                  padding: EdgeInsets.all(12),
                  //margin: EdgeInsets.symmetric(horizontal: ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: currentIndex == 1
                          ? Color(0xff2a93d5)
                          : Colors.transparent,
                      border: Border.all(
                        color: currentIndex == 1
                            ? Color(0xff2a93d5)
                            : Colors.transparent,
                        width: 0.0,
                      )
                  ),
                  child: Icon(Icons.leaderboard_rounded),
                ),
                    label: ''),
                BottomNavigationBarItem(icon: Container(
                  padding: EdgeInsets.all(12),
                  //margin: EdgeInsets.symmetric(horizontal: ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: currentIndex == 2
                          ? Color(0xff2a93d5)
                          : Colors.transparent,
                      border: Border.all(
                        color: currentIndex == 2
                            ? Color(0xff2a93d5)
                            : Colors.transparent,
                        width: 0.0,
                      )
                  ),
                  child: Icon(Icons.calendar_month),
                ),
                    label: ''),
                BottomNavigationBarItem(icon: Container(
                  padding: EdgeInsets.all(12),
                  //margin: EdgeInsets.symmetric(horizontal: ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: currentIndex == 3
                          ? Color(0xff2a93d5)
                          : Colors.transparent,
                      border: Border.all(
                        color: currentIndex == 3
                            ? Color(0xff2a93d5)
                            : Colors.transparent,
                        width: 0.0,
                      )
                  ),
                  child: Icon(Icons.person),
                ),
                    label: ''),
              ] ),
        ),
        ),
      );

  }
}

