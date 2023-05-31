import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onTap;

  CustomButton({this.onTap});
  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text('Save'),
        ),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
