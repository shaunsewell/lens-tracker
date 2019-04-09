import 'package:flutter/material.dart';
import 'package:lens_tracker/widgets/fab_menu.dart';
import 'package:lens_tracker/widgets/lense_data.dart';
//import 'package:lens_tracker/models/lense.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      //backgroundColor: Color.fromRGBO(89, 172, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: Center(child: LenseData()),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child:
                          Center(child: Text("Some graph will go here later")),
                    ),
                  ),
                )
                //Ads
                //Count/Total Time row
                //Graph
                //Button
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FabMenu(),
    );
  }
}
