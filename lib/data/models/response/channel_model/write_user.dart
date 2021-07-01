class WriteUsers {
  String writeUsers;

  WriteUsers({
    this.writeUsers,
  });

  WriteUsers copyWith({
    String writeUsers,
  }) {
    return WriteUsers(
      writeUsers: WriteUsers ?? this.writeUsers,
    );
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['writeusers'] = this.writeUsers;
    return data;
  }
}
