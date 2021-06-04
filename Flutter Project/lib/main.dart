import 'package:flutter/material.dart';
import './units/unit1/unit1.dart';
import './units/unit2/unit2.dart';
import './units/unit3/unit3.dart';

void main() {
  runApp(MaterialApp(home: MyAppState()));
}

class MyAppState extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Unit 2',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Unit1()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            height: 50,
            color: Colors.blue,
            child: ElevatedButton(
              child: Text(
                'Unit 2',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.right,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Unit2()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Unit 3',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Unit3()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
