import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  const NoteDetail({super.key});

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  static var _priorities = ["high", "low"];
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                  items: _priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (valueSelectedByUser) {
                    setState(() {
                      debugPrint("User selected $valueSelectedByUser");
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller: titlecontroller,
                onChanged: (value) {
                  debugPrint("something change in title text");
                },
                decoration: InputDecoration(
                    labelText: "Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller: descriptioncontroller,
                onChanged: (value) {
                  debugPrint("something change in Description text");
                },
                decoration: InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15,bottom: 15,),
              child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed:(){
                    print("SaveButton Clicked");
                    }, child: Text("Save",style: TextStyle(color: Colors.purple),))),

                  Expanded(child: ElevatedButton(onPressed:(){
                    print("Delete Clicked");
                  }, child: Text("Delete",style: TextStyle(color: Colors.purple),))),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
