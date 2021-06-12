import 'package:flutter/material.dart';
import './HardnessCalculator.dart';

class NumericalSolver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numerical Solver'),
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
                'Hardness Calculator',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HardnessCalculator()),
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
                'Type 2 Numerical',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.right,
              ),
              
              onPressed: () {
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ),
                );
                */
              },
            ),
          ),
        ],
      ),
    );
  }
}