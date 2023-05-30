import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynote/widget/CustomAppBar.dart';
import 'package:mynote/widget/custom_note.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody();
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
          CustomAppBar(),
          customNotes(),
          customNotes(),
        ],
      ),
    );
  }
}
