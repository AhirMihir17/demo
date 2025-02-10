import 'package:flutter/material.dart';
import 'package:uidesign3/screen/note_detail.dart';
import 'screen/note_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NoteKeeper",

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple, // Set AppBar color
          foregroundColor: Colors.white, // Set text/icon color
        ),
      ),
      home:NoteDetail(),
    );
  }
}
