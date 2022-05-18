import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final String type;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const TextBox({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.type,
  }) : super(key: key);

  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.type == 'password' ? true : false,
    
    keyboardType: widget.type=='amount'?TextInputType.number:TextInputType.name,
      decoration: InputDecoration(
          // suffixIcon: widget.type == 'password'
          //     ? Icon(Icons.remove_red_eye_outlined,color: Theme.of(context).primaryColor,)
          //     : SizedBox(),
          // filled: true,
          // fillColor: Colors.grey,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          hintText: widget.hintText,
          border: const OutlineInputBorder()),
    );
  }
}
