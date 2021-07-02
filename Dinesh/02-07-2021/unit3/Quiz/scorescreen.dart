import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var customheight = MediaQuery.of(context).size.height;
    QuestionController _questionController = Get.put(QuestionController());

    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Center(
              child: Image.asset("assets/images/quiz_bulb.png"),
            ),
            Container(
              child: Text(
                "$_questionController.numCorrectAns",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ));
  }
}
