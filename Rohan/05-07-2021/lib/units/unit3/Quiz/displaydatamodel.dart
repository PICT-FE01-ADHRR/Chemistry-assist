class DataModel {
  int? id;
  String? question;
  List? options;

  DataModel({this.id, this.question, this.options});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    options = json['options'];
  }
}
