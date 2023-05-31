import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  @override
  CustomTextField({required this.maxline, required this.hint, this.onSaved});

  var maxline;
  String hint;
  void Function(String?)? onSaved;

  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Filed is requird";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxline,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.blueAccent)),
    );
  }
}
