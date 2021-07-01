import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';

class VrAssignmentScoreModel {
  String assignmentId;
  String examTermInfo;
  num totalQuestion;
  num totalScore;
  String type;
  String vrAssignmentId;
  List<AnsweredPaper> answeredPapers;
  List<QuestionInfo> questions;

  VrAssignmentScoreModel({
    this.assignmentId,
    this.examTermInfo,
    this.vrAssignmentId,
    this.totalQuestion,
    this.totalScore,
    this.type,
  });

  VrAssignmentScoreModel copyWith({
    String assignmentId,
    String examTermInfo,
    String vrAssignmentId,
    num totalQuestion,
    num totalScore,
    String type,
  }) {
    return VrAssignmentScoreModel(
        assignmentId: assignmentId ?? this.assignmentId,
        examTermInfo: examTermInfo ?? this.examTermInfo,
        totalQuestion: totalQuestion ?? this.totalQuestion,
        totalScore: totalScore ?? this.totalScore,
        type: type ?? this.type,
        vrAssignmentId: vrAssignmentId ?? this.vrAssignmentId);
  }

  VrAssignmentScoreModel.fromJson(Map<String, dynamic> json) {
    assignmentId = json['assignmentid'];
    examTermInfo = json['examterminfo'];
    totalQuestion = json['totalquestion'];
    vrAssignmentId = json['vrassignmentId'];
    totalScore = json['totalscore'];
    // if (json['answers'] is List) {
    //   (json['answers'] as List).map((e) => AnsweredPaper.fromMap("json", id))
    // }

    type = json['type'];
    answeredPapers = <AnsweredPaper>[];
    questions = <QuestionInfo>[];
    json.keys.forEach((key) {
      if (int.tryParse(key) != null) {
        if (json[key] != null) {
          answeredPapers.add(AnsweredPaper.fromMap1(json[key]));
        }
      }
    });
    if (json['questioninfo'] != null) {
      json['questioninfo'].forEach((question) {
        questions.add(QuestionInfo.fromMap(question));
      });
    }
    print("submitters: ${answeredPapers.length}");
    print("questions: ${questions.length}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['assignmentid'] = this.assignmentId;
    data['examterminfo'] = this.examTermInfo;
    data['totalquestion'] = this.totalQuestion;
    data['vrassignmentid'] = this.vrAssignmentId;
    data['totalscore'] = this.totalScore;
    data['type'] = this.type;
    return data;
  }

  static List<VrAssignmentScoreModel> listFromJson(List<dynamic> json) {
    List<VrAssignmentScoreModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(VrAssignmentScoreModel.fromJson(j()));
      });
    }
    return _list;
  }
}

class QuestionInfo {
  QuestionInfo({
    this.answers,
    this.choices = const [],
    this.questiontext = "",
  })  : assert(choices != null),
        assert(answers != null),
        assert(questiontext != null);

  List<int> answers;
  List<Choice> choices;
  String questiontext;

  QuestionInfo copyWith({
    List<int> answers,
    List<Choice> choices,
    String questiontext,
  }) =>
      QuestionInfo(
        answers: answers ?? this.answers,
        choices: choices ?? this.choices,
        questiontext: questiontext ?? this.questiontext,
      );

  factory QuestionInfo.fromMap(Map<String, dynamic> json) => QuestionInfo(
        answers: List<int>.from(json["answers"].map((x) => x)),
        choices:
            List<Choice>.from(json["choices"].map((x) => Choice.fromMap(x))),
        questiontext: json["questiontext"],
      );

  Map<String, dynamic> toMap() => {
        "answers": List<dynamic>.from(answers.map((x) => x)),
        "choices": List<dynamic>.from(choices.map((x) => x.toMap())),
        "questiontext": questiontext,
      };
}

class Choice {
  Choice({
    this.ord,
    this.text,
  });

  final int ord;
  final String text;

  Choice copyWith({
    int ord,
    String text,
  }) =>
      Choice(
        ord: ord ?? this.ord,
        text: text ?? this.text,
      );

  factory Choice.fromMap(Map<String, dynamic> json) => Choice(
        ord: json["ord"],
        text: json["text"],
      );

  Map<String, dynamic> toMap() => {
        "ord": ord,
        "text": text,
      };
}

class AnsweredPaper {
  AnsweredPaper({
    this.score,
    this.comments,
    this.correct,
    this.notattempted,
    this.answers,
    this.submitdate,
    this.studentID,
    this.stuname,
    this.wrong,
    this.scoredlevel,
  });

  final int score;
  final String comments;
  final int correct;
  final int notattempted;
  final List<Answer> answers;
  final DateTime submitdate;
  final int wrong;
  final String studentID;
  final String stuname;
  final int scoredlevel;

  ///this is helper element to be used in the ui
  VrAssignmentModel vrAssignmnet;

  AnsweredPaper copyWith({
    int score,
    String comments,
    int correct,
    int notattempted,
    List<Answer> answers,
    DateTime submitdate,
    int wrong,
    String stuname,
    int scoredlevel,
  }) =>
      AnsweredPaper(
          score: score ?? this.score,
          comments: comments ?? this.comments,
          correct: correct ?? this.correct,
          notattempted: notattempted ?? this.notattempted,
          answers: answers ?? this.answers,
          submitdate: submitdate ?? this.submitdate,
          wrong: wrong ?? this.wrong,
          stuname: stuname ?? this.stuname,
          scoredlevel: scoredlevel ?? this.scoredlevel);

  factory AnsweredPaper.fromMap(Map<String, dynamic> json, String id) =>
      AnsweredPaper(
        studentID: id,
        score: json["score"],
        comments: json["comments"],
        correct: json["correct"],
        notattempted: json["notattempted"],
        answers:
            List<Answer>.from(json["answers"].map((x) => Answer.fromMap(x))),
        submitdate: json["submitdate"],
        wrong: json["wrong"],
        stuname: json['stuname'],
        scoredlevel: json['scoredlevel'],
      );

  factory AnsweredPaper.fromMap1(Map<String, dynamic> json) => AnsweredPaper(
        studentID: json["studentid"],
        score: json.containsKey('score') ? json["score"] : -1,
        comments: json.containsKey('comments') ? json["comments"] : "",
        correct: json.containsKey('correct') ? json["correct"] : 0,
        notattempted:
            json.containsKey('notattempted') ? json["notattempted"] : 0,
        answers: json.containsKey('answers')
            ? List<Answer>.from(json["answers"]
                .map((x) => Answer.fromMap(Map<String, dynamic>.from(x))))
            : <Answer>[],
        submitdate: json.containsKey('submitdate')
            ? HelpUtil.toDate(timestamp: json["submitdate"])
            : new DateTime(1, 1, 1),
        wrong: json.containsKey('wrong') ? json["wrong"] : 0,
        stuname: json.containsKey('stuname') ? json['stuname'] : "",
        scoredlevel: json['scoredlevel'],
      );

  Map<String, dynamic> toMap() => {
        "score": score,
        "comments": comments,
        "correct": correct,
        "notattempted": notattempted,
        "answers": List<dynamic>.from(answers.map((x) => x.toMap())),
        "submitdate": HelpUtil.toTimeStamp(dateTime: submitdate),
        "wrong": wrong,
        "stuname": stuname,
        "studentid": studentID,
        "scoredlevel": scoredlevel
      };
}

class Answer {
  Answer({
    this.score,
    this.id,
    this.answer,
    this.text,
    this.choices,
  });

  final String id;
  final String text;
  final List<String> choices;
  int score;
  String answer;

  Answer copyWith({
    int score,
    String id,
    String text,
    List<String> choices,
  }) =>
      Answer(
        score: score ?? this.score,
        id: id ?? this.id,
        text: text ?? this.text,
        choices: choices ?? this.choices,
      );

  factory Answer.fromMap(Map<String, dynamic> json) => Answer(
        score: json["score"],
        id: json["id"],
        text: json["text"],
        answer: json["answer"],
        choices: List<String>.from(json["choices"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "score": score,
        "text": text,
        "answer": answer,
        "choices": List<dynamic>.from(choices.map((x) => x)),
      };
}
