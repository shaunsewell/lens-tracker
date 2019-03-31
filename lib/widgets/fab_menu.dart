import 'package:flutter/material.dart';
import 'dart:math' as math;

class FabMenu extends StatefulWidget {
  FabMenu();

  @override
  createState() => FabMenuState();
}

class FabMenuState extends State<FabMenu> with TickerProviderStateMixin {
  AnimationController _controller;

  static const List<IconData> icons = const [
    Icons.settings,
    Icons.history,
    Icons.alarm_add,
    Icons.remove_circle_outline,
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(icons.length, (int index) {
        return ScaleTransition(
          scale: CurvedAnimation(parent: _controller, curve: Curves.easeOut),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Theme.of(context).cardColor,
              mini: true,
              child: Icon(icons[index], color: Theme.of(context).accentColor),
              onPressed: () {
                if (icons[index] == Icons.settings) {
                  
                } else if (icons[index] == Icons.history){
                  
                } else if (icons[index] == Icons.alarm_add) {

                } else {
                  
                }
              },
            ),
          ),
        );
      }).toList()
        ..add(
          FloatingActionButton(
            backgroundColor: Colors.white,
            foregroundColor: Color.fromRGBO(89, 172, 255, 1),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget child) {
                return Transform.rotate(
                  angle: _controller.value * math.pi,
                  child:
                      Icon(_controller.isDismissed ? Icons.code : Icons.close),
                );
              },
            ),
            onPressed: () {
              if (_controller.isDismissed) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            },
          ),
        ),
    );
  }
}