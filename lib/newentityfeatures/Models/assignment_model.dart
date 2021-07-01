import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class AssignmentModel extends Equatable {
  String assignmentTitle;
  String basicInfo;
  num curVersion;
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
  String assignmentID;

  AssignmentModel({
    this.assignmentTitle,
    this.basicInfo,
    this.publish,
    this.grade,
    this.history,
    this.assignmentID,
    this.state,
    this.smCount,
    this.curVersion,
    this.totalQuestion,
    this.offering,
    this.topic,
    this.type,
    this.questions,
    this.studyMaterials,
  });

  @override
  List<Object> get props => [
        assignmentTitle,
        history,
        state,
        smCount,
        publish,
        curVersion,
        basicInfo,
        totalQuestion,
        grade,
        offering,
        topic,
        type
      ];

  AssignmentModel copyWith({
    String assignmentTitle,
    String basicInfo,
    bool publish,
    num state,
    List<History> history,
    num smCount,
    num curVersion,
    String grade,
    String offering,
    String topic,
    String type,
  }) {
    return AssignmentModel(
        assignmentTitle: assignmentTitle ?? this.assignmentTitle,
        basicInfo: basicInfo ?? this.basicInfo,
        grade: grade ?? this.grade,
        publish: publish ?? this.publish,
        smCount: smCount ?? this.smCount,
        history: history ?? this.history,
        curVersion: curVersion ?? this.curVersion,
        offering: offering ?? this.offering,
        topic: topic ?? this.topic,
        state: state ?? this.state,
        type: type ?? this.type);
  }

  AssignmentModel.fromJson(Map<String, dynamic> json, String docID) {
    assignmentTitle = json['assignmenttitle'];
    basicInfo = json['basicinfo'];
    assignmentID = docID;
    curVersion = json['curversion'];
    smCount = json['smcount'];
    publish = json['publish'];
    grade = json['grade'];
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
        if (json[key] is Map)
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
    data['curversion'] = this.curVersion;
    data['smcount'] = this.studyMaterials.length;
    data['history'] = this.history;
    data['topic'] = this.topic;
    data['type'] = this.type;
    data['state'] = this.state;
    data['publish'] = this.publish;
    data['totalquestion'] = questions?.length;

    if (questions != null)
      for (int i = 1; i <= questions.length; i++) {
        questions[i - 1].qid = 'q$i';
        data['q$i'] = questions[i - 1].toData();
      }

    studyMaterials.asMap().forEach((key, value) {
      data['sm$key'] = value.toData();
    });
    return data;
  }

  static List<AssignmentModel> listFromJson(
      List<dynamic> json, List<String> docIDList) {
    List<AssignmentModel> _list = [];
    if (json != null) {
      json.asMap().forEach((i, j) {
        _list.add(AssignmentModel.fromJson(j(), docIDList[i]));
      });
    }
    return _list;
  }
}

// ignore: must_be_immutable
class OrderedUrl extends Equatable {
  String url;
  int id;

  OrderedUrl({this.url, this.id});

  OrderedUrl copyWith({
    String url,
    String id,
  }) {
    return OrderedUrl(
      url: url ?? this.url,
      id: id ?? this.id,
    );
  }

  @override
  List<Object> get props => [
        url,
        id,
      ];

  OrderedUrl.fromData(Map<String, dynamic> data) {
    url = data['url'];
    id = data['id'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['url'] = this.url;
    data['id'] = this.id;

    return data;
  }
}

// ignore: must_be_immutable
class Question extends Equatable {
  String questionText;
  String questionType;
  int score;
  List<String> choices;
  List<String> answers;
  // List<OrderedUrl> imageUrl;
  String imageUrl;
  String solution;
  num difficultyType;
  String qid;

  Question({
    this.questionText,
    this.questionType,
    this.score,
    this.solution,
    this.difficultyType,
    this.choices,
    this.answers,
    this.imageUrl,
    this.qid,
  });

  @override
  List<Object> get props => [
        questionText,
        questionType,
        difficultyType,
        solution,
        score,
        choices,
        answers,
        imageUrl,
        qid
      ];

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    List<String> mchoices = [];
    List<String> manswers = [];
    data['questionText'] = this.questionText;
    data['questionType'] = this.questionType;
    data['score'] = this.score;
    data['difficultyType'] = this.difficultyType;
    data['solution'] = this.solution;
    data['qid'] = this.qid;
    if (this.choices != null) {
      this.choices.forEach((element) {
        mchoices.add(element);
      });
      data['choices'] = mchoices;
    } else
      data['choices'] = null;

    if (this.answers != null) {
      this.answers.forEach((element) {
        manswers.add(element);
      });
      data['answers'] = manswers;
    } else
      data['answers'] = null;

    data['imageUrl'] = imageUrl;
    return data;
  }

  Question copyWith({
    String questionText,
    String questionType,
    num difficultyType,
    String answeredUrl,
    int score,
    List<String> choices,
    List<String> answers,
    List<OrderedUrl> imageUrl,
    String qid,
  }) {
    return Question(
      questionText: questionText ?? this.questionText,
      questionType: questionType ?? this.questionType,
      score: score ?? this.score,
      difficultyType: difficultyType ?? this.difficultyType,
      solution: answeredUrl ?? this.solution,
      choices: choices ?? this.choices,
      answers: answers ?? this.answers,
      imageUrl: imageUrl ?? this.imageUrl,
      qid: null,
    );
  }

  Question.fromData(Map<String, dynamic> data) {
    questionText = data["questionText"];
    questionType = data["questionType"];
    score = data["score"];
    qid = data["qid"];
    solution = data["solution"];
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
  String name;
  String studyUrl;
  String smid;
  StudyMaterial(
      {this.name, this.description, this.studyUrl, this.type, this.smid});

  @override
  List<Object> get props => [type, name, description, studyUrl, smid];

  StudyMaterial copyWith({
    String type,
    String description,
    String docLink,
    String name,
    String studyUrl,
    String smid,
  }) {
    return StudyMaterial(
        description: description ?? this.description,
        // docLink: docLink ?? this.docLink,
        name: name ?? this.name,
        studyUrl: studyUrl ?? this.studyUrl,
        smid: null,
        type: type ?? this.type);
  }

  StudyMaterial.fromData(Map<String, dynamic> data) {
    type = data["Type"];
    description = data["description"];
    // docLink = data["documentlink"];
    name = data["name"];
    studyUrl = data["studyurl"];
    smid = data["smid"];
  }
  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["Type"] = type;
    data["description"] = description;
    // data["documentlink"] = docLink;
    data["name"] = name;
    data["studyurl"] = studyUrl;
    data["smid"] = smid;

    return data;
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
