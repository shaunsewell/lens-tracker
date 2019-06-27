import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NumPad extends StatefulWidget {

  final BoxConstraints constraints;
  NumPad({@required this.constraints});

  @override
  _NumPadState createState() => _NumPadState();
}

class _NumPadState extends State<NumPad> {

  String _textBoxValue = "";
  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildTextBox(context),
        _buildButtonRows(["1", "2", "3"], context),
        _buildButtonRows(["4", "5", "6"], context),
        _buildButtonRows(["7", "8", "9"], context),
        _buildButtonRows([".", "0", "-"], context),
        _buildButtonRows(["Cancel", "OK"], context),
      ],
    );
  }

  Widget _buildButtonRows(List buttonTitles, BuildContext context){
    
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List<Widget>.generate(buttonTitles.length, (int index) {
        return MaterialButton(
          color: Theme.of(context).primaryColor,
          minWidth: (widget.constraints.minWidth - 16) / buttonTitles.length,
          height: 44,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
            '${buttonTitles[index]}'
          ),
          onPressed: () {
            setState(() {
              if(buttonTitles[index] == "." && !_textBoxValue.contains(".")) {
                _textBoxValue += buttonTitles[index];
              } else if(buttonTitles[index] == "-" && !_textBoxValue.contains("-")) {
                _textBoxValue = buttonTitles[index] + _textBoxValue;
              } else if(buttonTitles[index] == "OK") {
                // add total to storage
                // navigate back
                if(_textBoxValue.length != 0 && _textBoxValue != "." && _textBoxValue != "-"){
                  Navigator.pop(context, double.parse(_textBoxValue));
                } else {
                  Navigator.pop(context, 0);
                }
              } else if(buttonTitles[index] == "Cancel"){
                Navigator.pop(context, 0);
              } else if(buttonTitles[index] != "." && buttonTitles[index] != "-"){
                _textBoxValue += buttonTitles[index];
              }
            });
          },
        );
      }).toList()
    
    );
  }

  Widget _buildTextBox(BuildContext context){
    return Container(
      width: widget.constraints.minWidth,
      height: 50,
      child: Card(
        child: Center(
          child: Text(_textBoxValue.toString())
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        
      ),
    );
  }
}
