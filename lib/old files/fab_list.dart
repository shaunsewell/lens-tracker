// import 'package:flutter/material.dart';
// //import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'dart:math' as math;


// class FancyFab extends StatefulWidget {
//   // final String id;
//   // final String reviewUrl;
//   // FancyFab(this.id, this.reviewUrl);

//   @override
//   createState() => FancyFabState();
// }

// class FancyFabState extends State<FancyFab> with TickerProviderStateMixin {
//   AnimationController _controller;

//   static const List<IconData> icons = const [
//     Icons.check,
//     Icons.do_not_disturb,
//     Icons.thumb_up,
//     Icons.thumb_down,
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );
//   }

//   Widget build(BuildContext context) {
//     return Row(
//       //mainAxisAlignment: MainAxisAlignment.center ,
//       mainAxisSize: MainAxisSize.min,
//       children: List<Widget>.generate(icons.length, (int index) {
//         return ScaleTransition(
//           scale: CurvedAnimation(parent: _controller, curve: Curves.easeOut),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: FloatingActionButton(
//               heroTag: null,
//               //backgroundColor: Theme.of(context).cardColor,
//               backgroundColor: Colors.white,
//               mini: true,
//               child: Icon(icons[index], color: Theme.of(context).accentColor),
//               onPressed: () {
//                 if (icons[index] == Icons.check) {
                  
//                 } else if (icons[index] == Icons.do_not_disturb) {
                  
//                 } else {
                  
//                 }
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//         );
//       }).toList()
//         ..add(
//           FloatingActionButton(
//             foregroundColor: Color.fromRGBO(89, 172, 255, 1),
//             backgroundColor: Colors.white,
//             child: AnimatedBuilder(
//               animation: _controller,
//               builder: (BuildContext context, Widget child) {
//                 return Transform.rotate(
//                   angle: _controller.value * math.pi,
//                   child:
//                       Icon(_controller.isDismissed ? Icons.code : Icons.close),
//                 );
//               },
//             ),
//             onPressed: () {
//               if (_controller.isDismissed) {
//                 _controller.forward();
//               } else {
//                 _controller.reverse();
//               }
//             },
//           ),
//         ),
//     );
//   }
// }