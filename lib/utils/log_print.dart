void LogPrint(Object object) async {
  int defaultPrintLength = 1024;
  if (object == null || object.toString().length <= defaultPrintLength) {
    print(object);
  } else {
    String log = object.toString();
    int start = 0;
    int endIndex = defaultPrintLength;
    int logLength = log.length;
    int tmpLogLength = log.length;
    while (endIndex < logLength) {
      print(log.substring(start, endIndex));
      endIndex += defaultPrintLength;
      start += defaultPrintLength;
      tmpLogLength -= defaultPrintLength;
    }
    if (tmpLogLength > 0) {
      print(log.substring(start, logLength));
    }
  }
}
