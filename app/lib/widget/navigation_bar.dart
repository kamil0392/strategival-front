import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> fetchData() async {
  final response = await http.get('http://localhost:8080/');

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load value');
  }
}

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>{
  Future<String> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

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
              FutureBuilder<String>(
                future: futureData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data, style: TextStyle(fontSize: 22));
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}", style: TextStyle(fontSize: 22));
                  }
                  return CircularProgressIndicator();
                },
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