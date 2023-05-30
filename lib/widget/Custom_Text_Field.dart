import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  @override
  CustomTextField({required this.maxline, required this.hint});

  var maxline;
  String hint;

  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.blueAccent)),
    );
  }
}
