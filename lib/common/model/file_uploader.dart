import 'dart:typed_data';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FileUploader extends ChangeNotifier {
  final Uint8List file;
  final String path;
  final void Function(String url) onEnd;

  FileUploader({
    @required this.file,
    @required this.path,
    @required this.onEnd,
  }) {
    _upload();
  }
  static Future<dynamic> uploadFileStorage({
    final String uploadType,
    final String variantName,
    final String fileName,
    String entityid,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'geturlforstorage',
    );
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "COMPLEXES",
      "entityid": entityid,
      "uploadtype": uploadType,
      "variantname": variantName,
      "filename": fileName,
    });
    print("CloudFunction " + callable.toString());
    //print("CloudFunction " + resp.data.toString());
    return resp;
  }
  void _upload() async {
    String _fileName =
        DateTime.now().millisecondsSinceEpoch.toString() + '.png';

    final resp = await uploadFileStorage(
      uploadType: "CHAT",
      variantName: path,
      fileName: _fileName,
      entityid: 'a',
    );
    String downloadURL = resp.data["downloadfileurl"].toString();
    String uploadURL = resp.data["uploadfileurl"]["url"].toString();
    String policy = resp.data["uploadfileurl"]["fields"]["policy"].toString();
    String awsAccessKeyID =
        resp.data["uploadfileurl"]["fields"]["AWSAccessKeyId"].toString();
    String signature =
        resp.data["uploadfileurl"]["fields"]["signature"].toString();
    String key = resp.data["uploadfileurl"]["fields"]["key"].toString();

    await _uploadFile(
      file,
      uploadURL,
      policy,
      awsAccessKeyID,
      signature,
      key,
    );

    onEnd?.call(downloadURL);
  }

  Future<void> _uploadFile(
    Uint8List uploadableFile,
    String uploadURL,
    String policy,
    String awsAccessKeyID,
    String signature,
    String key,
  ) async {
    var req = http.MultipartRequest('POST', Uri.parse(uploadURL));
    req.fields["policy"] = policy;
    req.fields["AWSAccessKeyId"] = awsAccessKeyID;
    req.fields["signature"] = signature;
    req.fields["key"] = key;
    req.files.add(http.MultipartFile.fromBytes(
      'file',
      uploadableFile,
      filename: '_fileName', //tofo get file name
    ));
    var res = await req.send();
    if (res.statusCode == 200) {
      print("upload completed");
    } else {
      print('UPLOAD: ${res.statusCode}');
    }
  }
}
