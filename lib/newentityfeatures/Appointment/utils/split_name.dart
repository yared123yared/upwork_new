List<String> splitName(String fullName) {
  int idx = fullName.indexOf(" ");
  List name = [
    fullName.substring(0, idx).trim(),
    fullName.substring(idx + 1).trim()
  ];

  return name;
}
