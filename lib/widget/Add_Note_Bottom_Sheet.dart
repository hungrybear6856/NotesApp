import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynote/widget/Custom_Text_Field.dart';
import 'package:mynote/widget/custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              maxline: 1,
              hint: 'title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              maxline: 5,
              hint: "containt",
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
