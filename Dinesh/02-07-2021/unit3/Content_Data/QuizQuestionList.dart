class QuizQuestion {
  int id;
  String question;
  List options;
  int correctAns;

  QuizQuestion(
      {required this.id,
      required this.question,
      required this.options,
      required this.correctAns});
}

List questionList = [
  QuizQuestion(
      id: 1,
      question: "What is the subject?",
      options: ["Phy", "Chemistry", "Maths", "History"],
      correctAns: 2),
  QuizQuestion(
      id: 2,
      question: "How are you?",
      options: ["hi", "Great", "hi3", "hi4"],
      correctAns: 2),
  QuizQuestion(
      id: 3,
      question: "How are you?3",
      options: ["hi", "hi2", "hi3433", "hi4"],
      correctAns: 3),
  QuizQuestion(
      id: 4,
      question: "How are you?4",
      options: ["hi43", "hi2", "hi3", "hi4"],
      correctAns: 4),
  QuizQuestion(
      id: 5,
      question: "How are you?5",
      options: ["hi", "hi265", "hi3", "hi4"],
      correctAns: 1),
  QuizQuestion(
      id: 6,
      question: "How are you?6",
      options: ["hi", "hi2", "hi43433", "hi4"],
      correctAns: 3),
];
