import '../Content_Data/QuizQuestionList.dart';
import 'package:flutter/material.dart';
import 'ProgressBar.dart';
import 'controller.dart';
import 'package:get/get.dart';

class QuizCode extends StatelessWidget {
  // const QuizCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var customheight = MediaQuery.of(context).size.height;
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      body: Container(
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ProgressBar(),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        // "${_questionController.questionNumber}",
                        "Quiz",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: customheight * 0.038,
                    ),
                    Expanded(
                      child: PageView.builder(
                        onPageChanged: _questionController.updateTheQuestionNum,
                        physics: NeverScrollableScrollPhysics(),
                        controller: _questionController.pageController,
                        itemBuilder: (context, index) => QuestionSet(
                          itemIndex: index,
                          itemNum: questionList[index],
                        ),
                        itemCount: questionList.length,
                      ),
                    ),
                    SizedBox(
                      height: customheight * 0.015,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class QuestionSet extends StatelessWidget {
  var itemIndex;
  var itemNum;

  QuestionSet({this.itemIndex, this.itemNum});
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            itemNum.question,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20 / 2),
          ...List.generate(
            questionList[0].options.length,
            (index) => Option(
              index1: index,
              text: itemNum.options[index],
              rightanserimport: itemNum.correctAns,
              press: () {
                // setString(index);
                _questionController.checkAns(
                    itemNum.question, index, itemNum.correctAns);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Option extends StatelessWidget {
  var index1;
  var text;
  var rightanserimport;
  final VoidCallback press;
  Option(
      {required this.index1,
      required this.text,
      required this.rightanserimport,
      required this.press});
  @override
  Widget build(BuildContext context) {
    // QuestionController _questionController = Get.put(QuestionController());

    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (_questionController) {
        Color rightColor() {
          if (_questionController.isAnswered) {
            if (index1 + 1) {
              return Colors.blue;
            }
          }
          return Colors.grey;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: rightColor()),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${index1 + 1}. $text",
                  // style: TextStyle(color: Colors.grey, fontSize: 16),
                  style: TextStyle(color: rightColor(), fontSize: 16),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: rightColor() == Colors.grey
                        ? Colors.transparent
                        : rightColor(),
                    borderRadius: BorderRadius.circular(50),
                    // border: Border.all(color: Colors.grey),
                    border: Border.all(color: rightColor()),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
