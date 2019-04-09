import 'package:flutter/material.dart';

class AddWearDataAlert extends StatefulWidget {
  @override
  _AddWearDataAlertState createState() => _AddWearDataAlertState();
}

class _AddWearDataAlertState extends State<AddWearDataAlert> {

  final TextEditingController _textController = new TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(10),
      backgroundColor: Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7)
      ),
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.50,
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              SizedBox(height: 16,),
              Text(
                "Todays Wear Time",
                style: TextStyle(
                  fontSize: 30
                ),
              ),
              SizedBox(height: 16,),
              // Dialog Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hours",
                          style: TextStyle(
                            fontSize: 24
                          ),
                        ),
                        SizedBox(height: 16,),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: _textController,
                          onSubmitted: _handleSubmitted,
                          decoration: new InputDecoration.collapsed(
                            hintText: "Optional"
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Minutes",
                          style: TextStyle(
                            fontSize: 24
                          ),
                        ),
                        SizedBox(height: 16,),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: _textController,
                          onSubmitted: _handleSubmitted,
                          decoration: new InputDecoration.collapsed(
                            hintText: "Optional"
                          ),
                        ),
                      ],
                    ),
                  ), 
                ],
              ),
              // Ok and Cancel buttons
            ]
          ),
        )
      ],
    );
  }

  void _handleSubmitted(String text) {
  _textController.clear();
}
}