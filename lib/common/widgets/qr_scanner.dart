// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// import '../../data/data.dart';
// import '../presentation.dart';

// class QrScanner extends StatefulWidget {
//   QrScanner({Key key}) : super(key: key);

//   @override
//   _QrScannerState createState() => _QrScannerState();
// }

// class _QrScannerState extends State<QrScanner> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: Stack(
//           children: [
//             QRView(
//               key: GlobalKey(),
//               onQRViewCreated: (s) async => Navigator.pop(
//                 context,
//                 await s.scannedDataStream.first,
//               ),
//             ),
//             Container(
//               alignment: Alignment(0, 0),
//               padding: const EdgeInsets.all(30.0),
//               child: AspectRatio(
//                 aspectRatio: 1,
//                 child: CustomPaint(
//                   painter: BorderPaint(),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 height: 80,
//                 child: CustomActionButton(
//                   isExpanded: false,
//                   title: 'Cancel',
//                   gradient: C.bgGradient,
//                   padding: EdgeInsets.symmetric(vertical: height * 1.5),
//                   margin: EdgeInsets.symmetric(
//                     horizontal: width * 25,
//                     vertical: height * 2,
//                   ),
//                   onTap: () async {
//                     Navigator.pop(context, '-1');
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BorderPaint extends CustomPainter {
//   final double size;
//   final Color color;

//   BorderPaint({
//     this.size = 2,
//     this.color = Colors.white70,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint p = Paint();
//     p.color = color;
//     p.strokeWidth = this.size;
//     p.style = PaintingStyle.stroke;

//     canvas.drawLine(Offset(0, 0), Offset(size.width / 3, 0), p);
//     canvas.drawLine(Offset(size.width * 2 / 3, 0), Offset(size.width, 0), p);

//     canvas.drawLine(
//       Offset(size.width, 0),
//       Offset(size.width, size.height / 3),
//       p,
//     );
//     canvas.drawLine(
//       Offset(size.width, size.height * 2 / 3),
//       Offset(size.width, size.height),
//       p,
//     );

//     // bottom section
//     canvas.drawLine(
//       Offset(0, size.height),
//       Offset(size.width / 3, size.height),
//       p,
//     );
//     canvas.drawLine(
//       Offset(size.width * 2 / 3, size.height),
//       Offset(size.width, size.height),
//       p,
//     );

//     canvas.drawLine(
//       Offset(0, 0),
//       Offset(0, size.height / 3),
//       p,
//     );
//     canvas.drawLine(
//       Offset(0, size.height * 2 / 3),
//       Offset(0, size.height),
//       p,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
