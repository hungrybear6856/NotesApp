import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynote/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:mynote/model/note_model.dart';
import 'package:mynote/widget/Custom_Text_Field.dart';
import 'package:mynote/widget/custom_button.dart';

class AddNoteFormState extends StatefulWidget {
  AddNoteFormState({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<AddNoteFormState> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidatemode,
      key: formkey,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            maxline: 1,
            hint: 'title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            maxline: 5,
            hint: "containt",
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel = NoteModel(title!, subTitle!,
                    DateTime.now().toString(), Colors.blue.value);

                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                print(noteModel);
              } else {
                autovalidatemode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
