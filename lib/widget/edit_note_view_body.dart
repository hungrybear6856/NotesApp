import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynote/widget/CustomAppBar.dart';
import 'package:mynote/widget/Custom_Text_Field.dart';

class editNoteViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CustomAppBar(
            iconData: Icons.check,
            tiltle: 'edit  Note',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(maxline: 1, hint: 'title'),
          SizedBox(
            height: 15,
          ),
          CustomTextField(maxline: 5, hint: 'contiant'),
        ],
      ),
    );
  }
}
