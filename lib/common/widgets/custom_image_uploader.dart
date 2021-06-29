import 'dart:io';
import 'dart:typed_data';

import 'package:complex/data/providers/user_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injector/injector.dart';

import 'custom_text_field.dart';

class CustomImageUploader extends StatefulWidget {
  final String path;
  final bool enabled;
  final Function(File, String) onUploaded;
  final Validate validate;
  final String initialValue;
  final CustomTextFieldController controller;

  const CustomImageUploader({
    Key key,
    @required this.path,
    this.enabled = true,
    this.onUploaded,
    this.validate,
    this.initialValue,
    this.controller,
  })  : assert(path != null),
        super(key: key);

  @override
  _CustomImageUploaderState createState() => _CustomImageUploaderState();
}

class _CustomImageUploaderState extends State<CustomImageUploader> {
  String url;
  bool _uploading = false;

  @override
  void initState() {
    url = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextField(
          controller: widget.controller,
          title: "Photo",
          enabled: false,
          initialValue: widget.initialValue,
          validate: widget.validate,
          onTap: widget.enabled ? _getAndUploadPhoto : null,
        ),
        const SizedBox(width: 10),
        if (_uploading) Center(child: CircularProgressIndicator()),
        if (url != null)
          Image.network(
            url,
            alignment: Alignment.center,
          ),
      ],
    );
  }

  void _getAndUploadPhoto() async {
    if (_uploading) return;
    if (widget.path == null) return;
    FilePickerResult files;
    try {
      files = await FilePicker.platform.pickFiles(
        allowCompression: true,
        allowMultiple: false,
        type: FileType.image,
      );
    } catch (e) {}

    if (!mounted) return;
    if (files?.count == 1) {
      setState(() {
        _uploading = true;
        url = null;
        widget.controller.text = '';
      });
      FileUploader(
        file: File(files.files.first.path).readAsBytesSync(),
        path: "Images",
        onEnd: (String value) {
          setState(() {
            widget.controller.text = value;
            url = value;
            _uploading = false;
          });
        },
      );
    } else {
      return;
    }
  }
}

class FileUploader extends ChangeNotifier {
  final Uint8List file;
  final String path;
  final void Function(String url) onEnd;
  UserProvider _authProvider = Injector.appInstance.get<UserProvider>();

  FileUploader({
    @required this.file,
    @required this.path,
    @required this.onEnd,
  }) {
    _upload();
  }

  void _upload() async {
    String _fileName =
        DateTime.now().millisecondsSinceEpoch.toString() + '.png';

    final resp = await _authProvider.uploadFileStorage(
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
