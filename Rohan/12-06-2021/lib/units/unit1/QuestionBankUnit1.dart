//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import './QuestionBankUnit1_1.dart';
//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class QuestionBankUnit1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Bank Unit 1'),
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
                'Question Bank 1',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionBankUnit11()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
