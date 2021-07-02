import 'package:first_app/units/unit1/quiz.dart';
import '../studymaterial.dart';
import '../QuestionBanks/QuestionBankUnit1.dart';
import '../Numerical_Solver/NumericalSolver.dart';

class ListViewUnit1 {
  int id;
  String title;

  ListViewUnit1({required this.id, required this.title});
}

List content = [
  ListViewUnit1(id: 1, title: "Study Material"),
  ListViewUnit1(id: 2, title: "Numerical Solver"),
  ListViewUnit1(id: 3, title: "Question Bank"),
  ListViewUnit1(id: 4, title: "Quiz"),
];

List funcList = [
  StudyMaterialUnit1(),
  NumericalSolver(),
  QuestionBankUnit1(),
  QuizUnit1(),
];
