class ResidentUnits {
  bool m;
  String rd;

  ResidentUnits({this.m, this.rd});

  ResidentUnits.fromData(Map<String, dynamic> data) {
    m = data['m'];
    rd = data['rd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['m'] = this.m;
    data['rd'] = this.rd;
    return data;
  }
}
