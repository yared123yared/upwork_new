import 'package:complex/domain/core/failure/failure.dart';
import 'package:flutter/material.dart';

class ErrorDialogue extends StatelessWidget {
  final Failure failure;
  const ErrorDialogue({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(top: 20),
      title: Text(
        failure.map(
            logical: (v) => 'Logical Failure (${v.returnType})',
            exception: (v) => 'Exception (${v.returnType})'),
        style: TextStyle(color: Colors.red[800], fontSize: 24),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "from: ${failure.path}",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "from: ${failure.error}",
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Close',
                  style: TextStyle(color: Colors.indigo[800]),
                )),
          )
        ],
      ),
    );
  }
}
