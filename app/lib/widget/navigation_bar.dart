import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: new BoxDecoration(color: Colors.red),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                 width: 60,
             ),
             Text(
                'Strategival',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 60,
              ),
            ]
          )
        ]
      )
    );
  }
}