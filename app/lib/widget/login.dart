import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    	width: 600,
    	color: Colors.blue,
    	child: Padding(
    		padding: EdgeInsets.all(16.0),
    		child: Column(
    			children: <Widget>[
    				Text('login'),
    				TextField(
  						decoration: InputDecoration(
  							fillColor: Colors.white,
  							filled: true,
    						border: InputBorder.none,
    						hintText: 'Enter username'
  						),
					),
    				Text('password'),
    				TextField(
    					obscureText: true,
  						decoration: InputDecoration(
  							fillColor: Colors.white,
  							filled: true,
    						border: InputBorder.none,
    						hintText: 'Enter password'
  						),
					),
        			FlatButton(
        				color: Colors.yellow,
          				onPressed: () {},
          				child: const Text(
            				'Log In!',
            				style: TextStyle(fontSize: 20)
          				),
        			),
    			]
    		),
    	),
    );
  }
}