import 'package:flutter/material.dart';
import 'package:quiz_app/Data/QuizQuestionList.dart';
import 'dart:async';

import 'package:quiz_app/QuizScreen2.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  var score = markedCorrect.length;

  // var score = 5;
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: BoxDecoration(
          gradient:
              // LinearGradient(colors: [Color(0xFF4b6cb7), Color(0xFF182848)])),
              LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFF0A1931),
                Color(0xFF150E56),
                Color(0xFF0A043C),
                Color(0xFF161D6F)
              ]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: deviceHeight * 0.2),
              // Container(
              //   alignment: Alignment.center,
              //   height: deviceHeight * 0.065,
              //   width: deviceWidth * 0.4,
              //   color: Colors.red,
              //   child: Text("Score: $score",
              //       style: TextStyle(
              //           color: Colors.white, fontSize: deviceHeight * 0.035)),
              // ),
              Container(
                alignment: Alignment.center,
                height: deviceHeight * 0.2,
                width: deviceWidth * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF0A1931).withOpacity(0.4),
                        Color(0xFF161D6F).withOpacity(0.6),
                        Color(0xFF5C33F6).withOpacity(0.2),
                        Color(0xFFA239EA).withOpacity(0.5),
                        Color(0xFF0A043C).withOpacity(0.8),
                      ]),
                ),
                child: Text(
                  "SCORE: $score/${questionList.length}",
                  style: TextStyle(
                      color: Colors.white, fontSize: deviceHeight * 0.035),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              Text(
                "Here is the list of the wrong questions: ",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: markedWrong.length,
                    // itemCount: 5,
                    itemBuilder: (context, index) {
                      return DisplayWrongQuestions(
                        itemIndex: index,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DisplayWrongQuestions extends StatelessWidget {
  // var itemNum;
  var itemIndex;
  // Set temp = {2, 4, 3};
  DisplayWrongQuestions({
    this.itemIndex,
  });
  // List key_list = [];
  // markedWrongAnser.forEach((key, value) => key_list.add()

  // })

  final _listvalues = markedWrongAnser.values.toList();
  final _listkeys = markedWrongAnser.keys.toList();

  // void getWrongIndex() {
  //   // for (var num in temp) {
  //   //   print(num - 1);
  //   //   // print(questionList[num - 1].question);
  //   // }

  //   temp.forEach((element) {
  //     print(element);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final correctAnswers =
        questionList[int.parse(_listkeys[itemIndex]) - 1].correctAns;
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: deviceHeight * 0.035,
                vertical: deviceHeight * 0.017),
            // alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.only(bottom: 20),
            // height: deviceHeight * 0.18,
            width: deviceWidth,
            child: Column(
              children: [
                Text(
                    // itemIndex.toString(),
                    // code for question display

                    questionList[int.parse(_listkeys[itemIndex]) - 1].question,
                    
                    ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: deviceHeight * 0.04,
                      width: deviceHeight * 0.15,
                      margin: EdgeInsets.only(left: deviceHeight * 0.02),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.red,
                      ),
                      child: Text(
                        // itemIndex.toString(),

                        // code for wrong answer marked

                        questionList[int.parse(_listkeys[itemIndex]) - 1]
                                .options[
                            _listvalues[itemIndex]-1],


                        style: TextStyle(
                            fontSize: deviceHeight * 0.019,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: deviceHeight * 0.04,
                      width: deviceHeight * 0.175,
                      margin: EdgeInsets.only(right: deviceHeight * 0.02),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.green,
                      ),
                      child: Text(
                        // correct code for correct answer
                        questionList[int.parse(_listkeys[itemIndex]) - 1]
                            .options[correctAnswers - 1],

                        style: TextStyle(
                            fontSize: deviceHeight * 0.025,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
