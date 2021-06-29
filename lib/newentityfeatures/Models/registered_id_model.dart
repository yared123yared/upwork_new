import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class RegisteredIdModel extends Equatable {
  String name;
  String id;
  String photoUrl;
  String vr;
  int rollNumber;

  RegisteredIdModel(
      {this.name, this.id, this.photoUrl, this.vr, this.rollNumber});

  RegisteredIdModel copyWith(
      {String name, String id, String photoUrl, String vr, String rollNumber}) {
    return RegisteredIdModel(
      name: name ?? this.name,
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      vr: vr ?? this.vr,
      rollNumber: rollNumber ?? this.rollNumber,
    );
  }

  @override
  List<Object> get props => [
        name,
        id,
        photoUrl,
        vr,
        rollNumber,
      ];

  RegisteredIdModel.fromData({@required Map<String, dynamic> data}) {
    name = data['name'];
    id = data['id'] ?? data['idcardnum'];
    photoUrl = data['photourl'];
    vr = data.keys.contains('vr') ?? data['vr'];
    rollNumber = data.keys.contains('rno') ?? data['rollnumber'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
