import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Content_Data/QuizQuestionList.dart';
import 'scorescreen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  //Animate progress bar
  late int correctans;
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => this._animation;

  var _pageController = new PageController();
  PageController get pageController => this._pageController;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _questionNumber = 1;
  int get questionNumber => this._questionNumber;

  int _numCorrectAns = 0;
  int get numCorrectAns => this._numCorrectAns;

  // ignore: todo
  //TODO: Make change here
  int _selectedIndex = 4;
  int get selectedIndex => this._selectedIndex;
  @override
  void onInit() {
    //seconds is the amount of time we need for a question
    _animationController =
        AnimationController(duration: Duration(seconds: 20), vsync: this);
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController)
      ..addListener(
        () {
          update();
        },
      );

    //To start our animation
    _animationController.forward();
    _pageController = PageController();
    super.onInit();
  }

  void updateTheQuestionNum(int index) {
    _questionNumber = index + 1;
    print(_questionNumber);
  }

  void checkAns(question, int selectedIndex, cAns) {
    _isAnswered = true;
    correctAns(cAns);
    // print(_isAnswered);
    // int _correctAns = questionList[0].correctAns;
    if (selectedIndex + 1 == cAns) {
      _numCorrectAns++;
      print("Color green");
    } else {
      print("Color Red");
    }

    // print(selectedIndex);
    // print(_numCorrectAns);
    // print(_isAnswered);

    //To change the page
    Future.delayed(Duration(seconds: 1), () {
      moveNextQuestion();
    });
  }

  void moveNextQuestion() {
    if (_questionNumber != questionList.length) {
      _isAnswered = false;
      // print(_isAnswered);
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
      _animationController.reset();
      _animationController.forward();
    } else {
      Get.to(() => ScoreScreen());
    }
  }

  int correctAns(qNO) {
    return questionList[qNO].correctAns;
  }

  static var selectedIndexByUservar;
  static void setString(int newValue) {
    selectedIndexByUservar = newValue;
  }

  static int getString() {
    return selectedIndexByUservar;
  }
}
