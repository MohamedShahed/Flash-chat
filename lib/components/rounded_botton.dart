import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  Button({this.color, this.text, this.onPressed});
  final Color color;
  final Function onPressed;
  final Text text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: text,
        ),
      ),
    );
  }
}

class textField extends StatelessWidget {
  textField({@required this.hintText, @required this.onChanged, this.passwordStatus, this.type});
  final String hintText;
  final Function onChanged;
  final bool passwordStatus;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return TextField(
    keyboardType: type,
      obscureText: passwordStatus,
      textAlign: TextAlign.center,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey
        ),
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
