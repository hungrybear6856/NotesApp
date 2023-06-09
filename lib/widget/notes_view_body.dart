import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynote/widget/CustomAppBar.dart';
import 'package:mynote/widget/custom_note.dart';
import 'package:mynote/widget/notes_ListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CustomAppBar(
            iconData: Icons.search,
            tiltle: 'Note',
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
