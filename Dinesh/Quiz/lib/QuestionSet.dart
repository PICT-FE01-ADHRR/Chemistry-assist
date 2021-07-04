import 'package:flutter/material.dart';
import 'package:quiz_app/Data/QuizQuestionList.dart';
import 'userAnswer.dart';

class QuestionSet extends StatelessWidget {
  var itemIndex;
  var itemNum;
  var qId;
  // bool _isAnswered = false;

  // MaterialColor rightColor() {
  //   if (_isAnswered) {
  //     return Colors.green;
  //   } else {
  //     return Colors.blue;
  //   }
  // }

  QuestionSet({this.itemIndex, this.itemNum});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF0A1931),
              Color(0xFF150E56),
              Color(0xFF0A043C),
              Color(0xFF161D6F)
            ]),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            itemNum.question,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 20 / 2),
          ...List.generate(
            questionList[0].options.length,
            (index) => Option(
              index1: index,
              text: itemNum.options[index],
              rightanserimport: itemNum.correctAns,
              press: () {
                if ((index + 1 == itemNum.correctAns)) {
                  // UserAnsweredData.appendValues((index + 1).toString());
                  // for (var i = 0; i < markedCorrect.length; i++) {
                  // if (markedCorrect.isEmpty) {
                  // markedCorrect.add(itemNum.id);
                  qId = itemNum.id;
                  // print(markedCorrect);
                  markedCorrect.add(qId);
                  print("Correct $markedCorrect");
                  // }
                  // if (solvedId.contains(itemNum.id)) {
                  // markedCorrect.add(itemNum.id);
                  // solvedId.remove(itemNum.id);
                  // }
                  // print(markedCorrect);

                  // print(markedCorrect);
                } else {
                  qId = itemNum.id;
                  markedWrong.add(qId);
                  markedWrongAnser["$qId"] = index + 1;
                  print(markedWrongAnser);
                  print(markedWrong);
                  print("Wrong $markedWrong");
                }
                if (markedWrong.contains(itemNum.id) &&
                    markedCorrect.contains(itemNum.id)) {
                  markedCorrect.remove(itemNum.id);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Option extends StatelessWidget {
  var index1;
  var text;
  var rightanserimport;
  bool _isAnswered = false;
  final VoidCallback press;

  void newAnswer() {
    if (!_isAnswered) {}
  }

  List wrongAns = [];

  // Color rightColor() {
  //   if (_isAnswered) {
  //     return Colors.green;
  //   } else {
  //     return Colors.blue;
  //   }
  // }

  Option({
    required this.index1,
    required this.text,
    required this.rightanserimport,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    // QuestionController _questionController = Get.put(QuestionController());

    return GestureDetector(
      onTap: press,
      onDoubleTap: newAnswer,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${index1 + 1}. $text",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // border: Border.all(color: Colors.grey),
                  border: Border.all(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
