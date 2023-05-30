import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynote/views/edit_note_view.dart';

class customNotes extends StatelessWidget {
  const customNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return EditNoteView();
          },
        ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        padding: EdgeInsets.only(top: 24, bottom: 18, left: 16),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Flutter tips",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text('"blued Your creaer with Bander   "',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Text('"May 2 2002"',
                  style: TextStyle(fontSize: 14, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
