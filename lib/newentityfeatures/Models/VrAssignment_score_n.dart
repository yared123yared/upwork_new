import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class VrAssignmentNScoreModel extends Equatable {
  List<AnsweredPaper> answeredPapers;
  String text;

  VrAssignmentNScoreModel({this.answeredPapers, this.text});

  @override
  List<Object> get props => [answeredPapers, text];

  VrAssignmentNScoreModel copyWith(
      {List<AnsweredPaper> answeredPapers, String text}) {
    return VrAssignmentNScoreModel(
        answeredPapers: answeredPapers ?? this.answeredPapers,
        text: text ?? this.text);
  }

  VrAssignmentNScoreModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];

    answeredPapers = List<AnsweredPaper>();

    json.keys.forEach((key) {
      if (int.tryParse(key) != null) {
        if (json[key] != null) {
          answeredPapers.add(AnsweredPaper.fromMap(json[key], int.parse(key)));
        }
      }
    });

    print("submitters: ${answeredPapers.length}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }

  static List<VrAssignmentNScoreModel> listFromJson(List<dynamic> json) {
    List<VrAssignmentNScoreModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(VrAssignmentNScoreModel.fromJson(j));
      });
    }
    return _list;
  }
}

class AnsweredPaper {
  AnsweredPaper(
      {this.mcEvalScore,
      this.mcQuestion,
      this.mcRightAns,
      this.mcTotalScore,
      this.mcUnAttempted,
      this.mcWrongAns,
      this.answers,
      this.studentID});

  final int mcEvalScore;
  final int mcQuestion;
  final int mcRightAns;
  final int mcTotalScore;
  final List<Answer> answers;
  final int mcUnAttempted;
  final int mcWrongAns;
  final int studentID;

  AnsweredPaper copyWith({
    int mcEvalScore,
    int mcQuestion,
    int mcRightAns,
    int mcTotalScore,
    List<Answer> answers,
    int mcUnAttempted,
    int mcWrongAns,
    int studentID,
  }) =>
      AnsweredPaper(
          mcEvalScore: mcEvalScore ?? this.mcEvalScore,
          mcQuestion: mcQuestion ?? this.mcQuestion,
          mcRightAns: mcRightAns ?? this.mcRightAns,
          answers: answers ?? this.answers,
          mcTotalScore: mcTotalScore ?? this.mcTotalScore,
          mcUnAttempted: mcUnAttempted ?? this.mcUnAttempted,
          mcWrongAns: mcWrongAns ?? this.mcWrongAns,
          studentID: studentID ?? this.studentID);

  factory AnsweredPaper.fromMap(Map<String, dynamic> json, int id) =>
      AnsweredPaper(
        studentID: id,
        mcEvalScore: json["mcevalscore"],
        mcQuestion: json["mcquestions"],
        mcRightAns: json["mcrightans"],
        mcTotalScore: json["mctotalscore"],
        answers:
            List<Answer>.from(json["answers"].map((x) => Answer.fromMap(x))),
        mcUnAttempted: json["mcunattempted"],
        mcWrongAns: json["mcwrongans"],
      );

  Map<String, dynamic> toMap() => {
        "mcevalscore": mcEvalScore,
        "mcquestions": mcQuestion,
        "mcrightans": mcRightAns,
        "mctotalscore": mcTotalScore,
        "answers": List<dynamic>.from(answers.map((x) => x.toMap())),
        "mcunattempted": mcUnAttempted,
        "mcwrongans": mcWrongAns,
      };
}

class Answer {
  Answer({
    this.score,
    this.id,
    this.text,
    this.choices,
    this.eval,
  });

  final int score;
  final int id;
  final String eval;
  final String text;
  final List<String> choices;

  Answer copyWith({
    int score,
    int id,
    String eval,
    String text,
    List<String> choices,
  }) =>
      Answer(
        score: score ?? this.score,
        id: id ?? this.id,
        eval: eval ?? this.eval,
        text: text ?? this.text,
        choices: choices ?? this.choices,
      );

  factory Answer.fromMap(Map<String, dynamic> json) => Answer(
        score: json["score"],
        id: json["id"],
        eval: json['eval'],
        text: json["text"],
        choices: List<String>.from(json["choices"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "score": score,
        "id": id,
        "text": text,
        "eval": eval,
        "choices": List<dynamic>.from(choices.map((x) => x)),
      };
}
