// import 'package:flutter/material.dart';

// import '../../data/data.dart';
// import '../../entity/model/entity_roles.dart';

// enum CustomListTileStyle { general, message, complex }

// class CustomListTile extends StatelessWidget {
//   final VoidCallback tapAction;
//   final VoidCallback cancelAction;
//   final VoidCallback editAction;
//   final String title;
//   final String leftSubtitle_2;
//   final String leftSubtitle_1;
//   final List<EntityRoles> roles;
//   final CustomListTileStyle tileStyle;
//   bool isReadOnly = false;

//   CustomListTile({
//     this.tapAction,
//     this.title,
//     this.roles,
//     this.leftSubtitle_2,
//     this.leftSubtitle_1,
//     this.cancelAction,
//     this.editAction,
//     this.isReadOnly,
//     this.tileStyle = CustomListTileStyle.general,
//   }) : assert(title != null);

//   String _rolesToString(List<EntityRoles> roles) {
//     List<String> stringRoles = [];
//     roles.forEach((role) {
//       stringRoles.add(role.toShortString());
//     });
//     return stringRoles.join(',');
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isReadOnly == null) {
//       isReadOnly = false;
//     }
//     return TextButton(
//       splashColor: C.primaryBlue.withOpacity(0.5),
//       onPressed: tapAction,
//       child: Card(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(width * 4))),
//         margin: EdgeInsets.symmetric(
//           vertical: height,
//         ),
// //          height: height*10,
//         child: Container(
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//                 vertical: height * 2, horizontal: width * 4),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Row(
//                   children: [
//                     tileStyle == CustomListTileStyle.message
//                         ? Padding(
//                             padding:
//                                 EdgeInsets.symmetric(horizontal: width * 2),
//                             child: CircleAvatar(
//                               radius: width * 7,
//                               backgroundColor: C.primaryBlue,
//                               foregroundColor: Colors.white,
//                               child: Text(
//                                 title.substring(0, 2).toUpperCase(),
//                                 style: TextStyle(
//                                     fontSize: width * 6,
//                                     color: C.white,
//                                     fontWeight: FontWeight.w800),
//                               ),
//                             ),
//                           )
//                         : const SizedBox(
//                             width: width,
//                           ),
//                     Flexible(
//                       child: Text(
//                         title,
//                         overflow: TextOverflow.fade,
//                         style: TextStyle(
//                             fontSize: width * 6,
//                             color: tileStyle == CustomListTileStyle.message
//                                 ? C.primaryTextBlue
//                                 : C.white,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       leftSubtitle_1 != null
//                           ? Text(
//                               leftSubtitle_1,
//                               style: TextStyle(
//                                   fontSize: width * 4,
//                                   color: Color.fromRGBO(12, 209, 74, 1)),
//                             )
//                           : const SizedBox.shrink(),
//                       roles != null
//                           ? Text(
//                               _rolesToString(roles),
//                               style: TextStyle(
//                                   fontSize: width * 5, color: C.white),
//                             )
//                           : const SizedBox.shrink(),
//                     ],
//                   ),
//                 ),
//                 leftSubtitle_2 != null
//                     ? Text(
//                         leftSubtitle_2,
//                         style: TextStyle(
//                             fontSize: width * 4, color: Colors.yellowAccent),
//                       )
//                     : const SizedBox.shrink(),

// //                !isReadOnly? Row(
// //                  mainAxisAlignment: MainAxisAlignment.center,
// //                  children: <Widget>[
// //                    subtitle != null ? Text(subtitle,style: tileSubTitle_1,):Container(),
// //                    Padding(
// //                      padding:  EdgeInsets.symmetric(horizontal:width*1),
// //                      child: IconButton(
// //                        icon:Icon(Icons.edit),
// //                        color: Colors.blue,
// //                        onPressed: editAction,
// //                      ),
// //                    ),
// //                    IconButton(icon: Icon(Icons.cancel,color: red,),onPressed: cancelAction,),
// //                  ],
// //                ): const SizedBox(width: width,)
//               ],
//             ),
//           ),
//           decoration: BoxDecoration(
//             gradient:
//                 tileStyle == CustomListTileStyle.message ? C.bgGradient : null,
//             color: tileStyle == CustomListTileStyle.message
//                 ? C.primaryBlue.withOpacity(0.1)
//                 : tileStyle == CustomListTileStyle.complex
//                     ? Color.fromRGBO(38, 80, 128, 0.8)
//                     : null,
//             borderRadius: BorderRadius.circular(width * 4),
//           ),
//         ),
//       ),
//     );
//   }
// }
