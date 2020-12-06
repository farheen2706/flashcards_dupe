import 'package:flutter/material.dart';

class NewQndA extends StatefulWidget {
  final Function addqa;

  NewQndA(this.addqa);

  @override
  _NewQndAState createState() => _NewQndAState();
}

class _NewQndAState extends State<NewQndA> {
  final qcontroller = TextEditingController();
  final acontroller = TextEditingController();

  void submitData() {
    final enteredq = qcontroller.text;
    final entereda = acontroller.text;

    if (enteredq.isEmpty || entereda.isEmpty) {
      return;
    }
    widget.addqa(
      enteredq,
      entereda,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
      TextField(
        controller: qcontroller,
        onSubmitted: (_) => submitData(),
      ),
      TextField(
        controller: acontroller,
        onSubmitted: (_) => submitData(),
      ),
      RaisedButton(
        child: Text("Add"),
        onPressed: submitData,)
      ],
        
      ),
    );
  }
}
