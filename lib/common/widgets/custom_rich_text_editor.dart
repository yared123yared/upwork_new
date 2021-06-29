// // Copyright (c) 2018, the Zefyr project authors.  Please see the AUTHORS file
// // for details. All rights reserved. Use of this source code is governed by a
// // BSD-style license that can be found in the LICENSE file.
// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:zefyr/zefyr.dart';
// enum RichTextMode { View, Edit }
//
// ///this is the field when tring to edit it
// ///it will open the [_RichTextFullPageEditorScreen]
// class CustomRichTextField extends StatefulWidget {
//   final String initialValue;
//   final ValueChanged<String> onChange;
//   final RichTextMode mode;
//   final double height;
//
//   // final ZefyrController _controller;
//
//   const CustomRichTextField({
//     Key key,
//     this.initialValue,
//     this.height = 300,
//     this.mode = RichTextMode.Edit,
//     this.onChange,
//   })  : assert(height != null),
//         super(key: key);
//
//   @override
//   _CustomRichTextFieldState createState() => _CustomRichTextFieldState();
// }
//
// class _CustomRichTextFieldState extends State<CustomRichTextField> {
//   ZefyrController _controller;
//   ZefyrMode mode;
//
//   final FocusNode _focusNode = FocusNode();
//
//   @override
//   void initState() {
//     _controller = ZefyrController(NotusDocument.fromJson(
//       json.decode(widget.initialValue ?? r'[{"insert":""}]'),
//     ));
//
//     _controller.addListener(() {
//       String data = jsonEncode(_controller.document.toJson());
//       widget?.onChange(data);
//     });
//     mode = widget.mode == RichTextMode.View ? ZefyrMode.select : ZefyrMode.edit;
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: widget.height,
//       child: Theme(
//         data: ThemeData(primarySwatch: Colors.cyan),
//         child: ZefyrScaffold(
//           child: ZefyrField(
//             controller: _controller,
//             focusNode: _focusNode,
//             mode: mode,
//             imageDelegate: CustomImageDelegate(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CustomImageDelegate extends ZefyrImageDelegate<bool> {
//   @override
//   Widget buildImage(BuildContext context, String key) {
//     return const SizedBox();
//   }
//
//   @override
//   get cameraSource => true;
//
//   @override
//   get gallerySource => false;
//
//   @override
//   Future<String> pickImage(bool source) async {
//     //TODO: PICK THE IMAGE
//     // var images = await MultiImagePicker.pickImages(
//     //   maxImages: 1,
//     //   enableCamera: source,
//     // );
//     // if (images != null && images.isNotEmpty) {
// //  //TODO :  upload the image to the server
//     // } else {
//     //   return null;
//     // }
//
//     return null;
//   }
// }
