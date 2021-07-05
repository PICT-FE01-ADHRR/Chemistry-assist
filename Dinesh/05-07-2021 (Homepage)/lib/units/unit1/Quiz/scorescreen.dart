import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import '../unit1.dart';

class ScoreScreen extends StatefulWidget {
  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  void initState() {
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Unit1(),
                ),
              );
              Get.reset();
            },
          ),
        ],
      ),
    );
  }
}
