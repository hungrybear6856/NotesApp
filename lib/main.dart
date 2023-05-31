import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mynote/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:mynote/model/note_model.dart';
import 'package:mynote/simple_bloc_observer.dart';
import 'package:mynote/views/notes_view.dart';

void main() async {
  Bloc.observer = simpleBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox("note_box");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: NotesView(),
    );
  }
}
