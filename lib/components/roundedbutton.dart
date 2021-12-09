import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
   const RoundButton({Key? key, this.color, required this.onPressed, this.label}) : super(key: key);
  final color;
  final Function onPressed;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 10.0,
        child: MaterialButton(
          onPressed: onPressed as void Function(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label!,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
