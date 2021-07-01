import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class FinalAssignmentModel extends Equatable {
  String aid;
  String assignmentTitle;
  String basicInfo;
  num copyVersion;
  String grade;
  String offering;
  String topic;
  String type;
  int totalQuestion;
  num state;
  bool publish;
  num smCount;
  List<History> history;
  List<Question> questions;
  List<StudyMaterial> studyMaterials;

  FinalAssignmentModel(
      {this.assignmentTitle,
      this.basicInfo,
      this.publish,
      this.aid,
      this.grade,
      this.history,
      this.state,
      this.smCount,
      this.copyVersion,
      this.totalQuestion,
      this.offering,
      this.topic,
      this.type});

  @override
  List<Object> get props => [
        assignmentTitle,
        aid,
        history,
        state,
        smCount,
        publish,
        copyVersion,
        basicInfo,
        totalQuestion,
        grade,
        offering,
        topic,
        type
      ];

  FinalAssignmentModel copyWith({
    String assignmentTitle,
    String basicInfo,
    bool publish,
    num state,
    String aid,
    List<History> history,
    num smCount,
    num copyVersion,
    String grade,
    String offering,
    String topic,
    String type,
  }) {
    return FinalAssignmentModel(
        assignmentTitle: assignmentTitle ?? this.assignmentTitle,
        basicInfo: basicInfo ?? this.basicInfo,
        grade: grade ?? this.grade,
        publish: publish ?? this.publish,
        aid: aid ?? this.aid,
        smCount: smCount ?? this.smCount,
        history: history ?? this.history,
        copyVersion: copyVersion ?? this.copyVersion,
        offering: offering ?? this.offering,
        topic: topic ?? this.topic,
        state: state ?? this.state,
        type: type ?? this.type);
  }

  FinalAssignmentModel.fromJson(Map<String, dynamic> json) {
    assignmentTitle = json['assignmenttitle'];
    basicInfo = json['basicinfo'];
    copyVersion = json['copyversion'];
    smCount = json['smcount'];
    publish = json['publish'];
    grade = json['grade'];
    aid = json['aid'];
    if (json['history'] != null) {
      history = List<History>();
      json['history'].forEach((v) {
        history.add(History.fromData(v));
      });
    } else {
      history = [];
    }
    state = json['state'];
    offering = json['offering'];
    totalQuestion = json['totalquestion'];
    if (totalQuestion != null) {
      questions = List<Question>();
      for (int i = 1; i <= totalQuestion; i++) {
        if (json["q$i"] != null) {
          questions.add(Question.fromData(json["q$i"]));
        }
      }
    } else {
      questions = [];
    }
    studyMaterials = List<StudyMaterial>();
    json.keys.forEach((key) {
      if (key.contains('sm') && json[key] != null) {
        studyMaterials.add(StudyMaterial.fromData(json[key]));
      }
    });
    topic = json['topic'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['assignmenttitle'] = this.assignmentTitle;
    data['basicinfo'] = this.basicInfo;
    data['grade'] = this.grade;
    data['offering'] = this.offering;
    data['copyversion'] = this.copyVersion;
    data['smcount'] = this.smCount;
    data['history'] = this.history;
    data['aid'] = this.aid;
    data['topic'] = this.topic;
    data['type'] = this.type;
    data['state'] = this.state;
    data['publish'] = this.publish;
    return data;
  }

  static List<FinalAssignmentModel> listFromJson(List<dynamic> json) {
    List<FinalAssignmentModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(FinalAssignmentModel.fromJson(j));
      });
    }
    return _list;
  }
}

// ignore: must_be_immutable
class Question extends Equatable {
  String questionText;
  String questionType;
  int score;
  List<String> choices;
  List<String> answers;
  String imageUrl;

  Question(
      {this.questionText,
      this.questionType,
      this.score,
      this.choices,
      this.answers,
      this.imageUrl});

  @override
  List<Object> get props =>
      [questionText, questionType, score, choices, answers, imageUrl];

  Question copyWith(
      {String questionText,
      String questionType,
      int score,
      List<String> choices,
      List<String> answers,
      String imageUrl}) {
    return Question(
        questionText: questionText ?? this.questionText,
        questionType: questionType ?? this.questionType,
        score: score ?? this.score,
        choices: choices ?? this.choices,
        answers: answers ?? this.answers,
        imageUrl: imageUrl ?? this.imageUrl);
  }

  Question.fromData(Map<String, dynamic> data) {
    questionText = data["questionText"];
    questionType = data["questionType"];
    score = data["Score"];
    if (data['answers'] != null) {
      answers = [];
      data['answers'].forEach((choice) {
        answers.add(choice);
      });
    } else {
      answers = [];
    }
    if (data['choices'] != null) {
      choices = [];
      data['choices'].forEach((choice) {
        choices.add(choice);
      });
    } else {
      choices = [];
    }
    imageUrl = data["imageUrl"];
  }
}

// ignore: must_be_immutable
class StudyMaterial extends Equatable {
  String type;
  String description;
  String docLink;
  String name;
  String studyUrl;
  StudyMaterial(
      {this.name, this.description, this.docLink, this.studyUrl, this.type});

  @override
  List<Object> get props => [type, name, description, docLink, studyUrl];

  StudyMaterial copyWith({
    String type,
    String description,
    String docLink,
    String name,
    String studyUrl,
  }) {
    return StudyMaterial(
        description: description ?? this.description,
        docLink: docLink ?? this.docLink,
        name: name ?? this.name,
        studyUrl: studyUrl ?? this.studyUrl,
        type: type ?? this.type);
  }

  StudyMaterial.fromData(Map<String, dynamic> data) {
    type = data["Type"];
    description = data["description"];
    docLink = data["documentlink"];
    name = data["name"];
    studyUrl = data["studyurl"];
  }
}

// ignore: must_be_immutable
class History extends Equatable {
  num date;
  String display;
  String id;
  History({this.id, this.date, this.display});

  @override
  List<Object> get props => [date, display, id];

  History copyWith({
    num date,
    String display,
    String id,
  }) {
    return History(
        date: date ?? this.date,
        id: id ?? this.id,
        display: display ?? this.display);
  }

  History.fromData(Map<String, dynamic> data) {
    date = data["date"];
    id = data["id"];
    display = data["display"];
  }
}

// ignore: must_be_immutable
class Choices extends Equatable {
  num ord;
  String text;

  Choices({this.ord, this.text});

  @override
  List<Object> get props => [ord, text];

  Choices copyWith({
    num ord,
    String text,
  }) {
    return Choices(ord: ord ?? this.ord, text: text ?? this.text);
  }

  Choices.fromData(Map<String, dynamic> data) {
    ord = data['ord'];
    text = data['text'];
  }
}
