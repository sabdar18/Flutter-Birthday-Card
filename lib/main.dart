import 'package:flutter/material.dart';


void main(){
  runApp(new MyCardApp());
}


class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "BirthDay Card",
      home: new BirthDayCard(),
          );
        }
}

class BirthDayCard extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/custom_birthday_card.jpg',),
                  fit: BoxFit.cover
              )
            ),
          ),
          new Positioned(
            child: new Container(
              padding: const EdgeInsets.all(16.0),
             child:  new Text("Happy Birthday Sabdar",
             style: new TextStyle(
               fontFamily: 'Roboto',
               decoration: TextDecoration.none,
               fontSize: 25.0,
               fontWeight: FontWeight.bold,
               color: Colors.white
             ),
             )
            ),
            left: 0.0,
            top: 16.0,
          ),
          new Positioned(
            child: new Container(
              child: new Text("From \nSabdar",
              style: new TextStyle(
                fontFamily: 'Roboto',
                decoration: TextDecoration.none,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            right: 10.0,
            bottom: 16.0,
          )],
      );
    }
        
}