import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mynote/widget/custom_note.dart';

class NotesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return customNotes();
        },
      ),
    );
  }
}
