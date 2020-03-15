import 'package:app/widget/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:app/widget/centered_view.dart';
import 'package:app/widget/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView( 
        child: Column(children: <Widget>[
          NavigationBar(),
          Expanded(
            child: Login()
          ),
        ],),
      ),
    );
  }
}