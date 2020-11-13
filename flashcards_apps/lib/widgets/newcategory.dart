import 'package:flutter/material.dart';


class NewCategory extends StatefulWidget {//convert to stateful to reflect changes on the UI
  final Function addCt;

NewCategory(this.addCt);

  @override
  _NewCategoryState createState() => _NewCategoryState();
}

class _NewCategoryState extends State<NewCategory> {
  final titleController = TextEditingController();

  final snocontroller = TextEditingController();

void submitData() {
  final enteredTitle = titleController.text;
  final enteredsno   = int.parse(snocontroller.text);

  if(enteredTitle.isEmpty || enteredsno <=0){
    return;
  }
  widget.addCt( 
    enteredTitle,
    enteredsno,
  );

  Navigator.of(context).pop();
}

  @override
  Widget build(BuildContext context) {
    return 
     Card(
         child: Column(children: <Widget>[
           TextField(
       
          controller: titleController,
          onSubmitted: (_) => submitData(),
         ),
        TextField(
          controller: snocontroller,
          onSubmitted: (_) => submitData(),
        ),
       RaisedButton(
         child: Text("Add"),
         onPressed: submitData,
         ),
         ],
         ),   
        
     );
  }
}