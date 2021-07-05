import 'package:Chmestry_Study_Assist/units/unit1/Content_Data/QuizQuestionList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'userAnswers.dart';
// import '../unit3.dart';

class ScoreScreen extends StatefulWidget {
  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  void initState() {
    UserAnsweredData.getLenght();
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // var customheight = MediaQuery.of(context).size.height;
    QuestionController _questionController = Get.put(QuestionController());
    // Future<bool> _onBackPressed() {return showDialog(context: context, builder:)}

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/images/quiz_bulb.png"),
          ),
          Container(
            child: Text(
              _questionController.numCorrectAns.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade900,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            child: Text(
              'Next',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              Get.reset();
              var count = 0;
              UserAnsweredData.deleteData();
              Navigator.popUntil(context, (route) {
                return count++ == 3;
              },);
              BackButtonInterceptor.remove(myInterceptor);
            },
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemBuilder: (context, index) => ShowAnswered(
                itemIndex: index,
                itemNum: questionList[index].options,
              ),
              //  itemCount: UserAnsweredData.values.length,
              // itemCount: UserAnsweredData.getLenght(),
              itemCount: UserAnsweredData.getLenght(),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ShowAnswered extends StatelessWidget {
  var itemIndex;
  var itemNum;
  ShowAnswered({
    this.itemIndex,
    this.itemNum,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        // itemIndex.toString(),
        "Your marked answer for question " +
            (itemIndex + 1).toString() +
            " is " +
            questionList[itemIndex+1]
                .options[int.parse(UserAnsweredData.showValues(itemIndex+1))-1],
        // "HI",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
