import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text('Save'),
      ),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
    );
  }
}
