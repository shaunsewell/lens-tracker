// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lens_tracker/screens/add_wear_data.dart';

// class OverviewScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabView(
//       builder: (context) {
//         return CupertinoPageScaffold(
//           navigationBar: CupertinoNavigationBar(
//             trailing: _addButton(context),
//             backgroundColor: Color.fromRGBO(89, 172, 255, 1),
//             border:Border.all(color: Color.fromRGBO(89, 172, 255, 1)),
//           ),
//           backgroundColor: Color.fromRGBO(89, 172, 255, 1),
//           child: Column(
//             children: [ Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Center(
//                 child: SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   height: MediaQuery.of(context).size.height * 0.25,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.90,
//                     height: MediaQuery.of(context).size.height * 0.25,
//                     decoration: BoxDecoration(
//                       color: CupertinoColors.white,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(20)
//                       ),
//                       boxShadow: <BoxShadow>[
//                         BoxShadow(
//                           color: Colors.blueGrey,
//                           offset: Offset(2.0, 2.0),
//                           blurRadius: 20,
//                         )
//                       ],
//                     ),
//                     child: Center(child: 
//                       Text("Testing Testing")
//                     ),
//                   ),
//                 ), 
//               ),
//             ), 
//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Center(
//                 child: SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   height: MediaQuery.of(context).size.height * 0.50,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.90,
//                     height: MediaQuery.of(context).size.height * 0.50,
//                     decoration: BoxDecoration(
//                       color: CupertinoColors.white,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(20)
//                       ),
//                       boxShadow: <BoxShadow>[
//                         BoxShadow(
//                           color: Colors.blueGrey,
//                           offset: Offset(2.0, 2.0),
//                           blurRadius: 20,
//                         )
//                       ],
//                     ),
//                     child: Center(child: 
//                       Text("Some graph will go here later")
//                     ),
//                   ),
//                 ),),
//             )
              
//               //Ads
//               //Count/Total Time row
//               //Graph
//               //Button
//             ],
//           ),
//           );
//       },
//     );
//   }

//   CupertinoButton _addButton(BuildContext context) {
//     return CupertinoButton(
//         padding: EdgeInsets.zero,
//         child: Icon(
//           CupertinoIcons.add,
//           size: 40,
//           color: CupertinoColors.black,
//         ),
//         onPressed: () => showCupertinoModalPopup(
//               context: context,
//               builder: (_) => AddWearData()
//         )
//     );
//   }
// }




// // static Column _buildButtonColumn(Color color, String time, String label) {
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Container(
// //           margin: const EdgeInsets.only(top: 8),
// //           child: Text(
// //             label,
// //             style: TextStyle(
// //               fontSize: 26,
// //               fontWeight: FontWeight.w400,
// //               color: color,
// //             ),
// //           ),
// //         ),
// //         Text(
// //           time,
// //           style: TextStyle(
// //             fontSize: 18,
// //             fontWeight: FontWeight.w400,
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   static Color color = CupertinoColors.activeBlue;
// //   static IconData calendarIcon = IconData(
// //     0xF3F3,
// //     fontFamily: CupertinoIcons.iconFont,
// //     fontPackage: CupertinoIcons.iconFontPackage,
// //   );

// //   final Widget buttonSection = Container(
// //     padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
// //     child: Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //       children: [
// //         _buildButtonColumn(color, '10', 'Wears'),
// //         _buildButtonColumn(color, '140h 35m', 'Time Worn'),
// //       ],
// //     ),
// //   );