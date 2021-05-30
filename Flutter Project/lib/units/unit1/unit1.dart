import 'package:flutter/material.dart';
import './studymaterial.dart';
//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class Unit1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 1'),
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
                'Study Material',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudyMaterialUnit1()),
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
                'Numerical Practice',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.right,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Take Test',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Question Bank',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
