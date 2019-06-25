import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/widgets/fab_menu.dart';
import 'package:lens_tracker/widgets/lense_data.dart';
//import 'package:lens_tracker/models/lense.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: LenseData(),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      elevation: 2.0,
                    )
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
                      child:
                        Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "Some graph will go here later"
                            )
                          ),
                        ),
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
