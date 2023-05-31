import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onTap;
  bool isLoading;
  CustomButton({this.onTap, this.isLoading = false});
  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text('Save'),
        ),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
