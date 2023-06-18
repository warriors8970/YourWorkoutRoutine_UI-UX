import 'package:flutter/material.dart';
import 'package:fitness/components/my_calendar.dart';
import 'package:flutter/rendering.dart';
import 'package:fitness/UI_colors/colors.dart';


class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Container(
          margin: EdgeInsets.all(15),
          height: 200,
          width:  double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 1,
                  offset: Offset(5, 5)
              )
            ],
            color: boxDec,
            borderRadius: BorderRadius.circular(30),
          ),

          child: Row(
            children: <Widget>[
              Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      //color: Colors.black,
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        shape: BoxShape.circle,
                      ),


              ),
                  )
              ),
              Flexible(
                  child: Container(
                    decoration: BoxDecoration(

                      //color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                border: InputBorder.none,

                              ),
                            )
                            ),
                            Expanded(child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: 'Age',
                                labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                border: InputBorder.none,

                              ),
                            )
                            ),
                            Expanded(child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                border: InputBorder.none,

                              ),
                            )
                            ),
                            Expanded(child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: 'Weight',
                                labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                border: InputBorder.none,

                              ),
                            )
                            ),

                          ],
                        ),
                      ),
                    ),
              )
              )
            ],
          ),
        ),
        Flexible(
          child: Container(
            margin: EdgeInsets.all(15),
            // height: 200,
            // width:  double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0,
                    spreadRadius: 1,
                    offset: Offset(5, 5)
                )
              ],
              color: boxDec,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Flexible(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Weight',
                    labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(

          margin: EdgeInsets.all(15),
          // height: 200,
          // width:  double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 1,
                  offset: Offset(5, 5)
              )
            ],
            color: boxDec,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Flexible(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Basic Info:', style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Height:',
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                      border: InputBorder.none,
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Weight:',
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                      border: InputBorder.none,
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Age:',
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                      border: InputBorder.none,
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Sex:',
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],

    );
  }
}

