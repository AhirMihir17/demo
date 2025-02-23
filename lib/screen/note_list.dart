import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("FAB clicked");
      },
      tooltip: "Add Note",
        child: Icon(Icons.add),
      ),
    );
  }
 ListView getNoteListView() {
    return ListView.builder(itemCount: count,itemBuilder: (BuildContext context,int position) {
      return Card(
        color: Colors.white,
        elevation: 2.0,
        child:ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Icon(Icons.keyboard_arrow_right),
          ),
          subtitle: Text("Dummy date"),
          title: Text("Dummy Title",),
          trailing:Icon(Icons.delete) ,
          onTap: (){
            debugPrint("List Style Taped");
          },
        ),
      );

    },);


  }
}
