import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  Button({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SizedBox(
      height: height / 18,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.text),
        style:
            ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
      ),
    );
  }
}
