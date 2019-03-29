import 'package:flutter/material.dart';
import "package:lens_tracker/widgets/fab_list.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Lense Tracker"),
      //   backgroundColor: Color.fromRGBO(89, 172, 255, 1),
        
      // ),
      backgroundColor: Color.fromRGBO(89, 172, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Center(child: Text("Testing Testing")),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
              )

              //Ads
              //Count/Total Time row
              //Graph
              //Button
            ],
          ),
        ),
      ),
      floatingActionButton: FancyFab(),
    );
  }
}
