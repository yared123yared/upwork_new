class ReadUsers {
  String readUsers;

  ReadUsers({
    this.readUsers,
  });

  ReadUsers copyWith({
    String readUsers,
  }) {
    return ReadUsers(
      readUsers: ReadUsers ?? this.readUsers,
    );
  }

  @override
  List<Object> get props => [readUsers];

  ReadUsers.fromData(Map<String, dynamic> data) {
    readUsers = data["readusers"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['readusers'] = this.readUsers;
    return data;
  }
}
