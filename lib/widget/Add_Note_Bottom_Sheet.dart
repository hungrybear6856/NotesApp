import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynote/widget/Custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
          ],
        ),
      ),
    );
  }
}
