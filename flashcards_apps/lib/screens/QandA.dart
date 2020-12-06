import '../widgets/newQandA.dart';
import '../widgets/QandAlist.dart';
import '../models/QndA.dart';
//import '../models/categories.dart';
import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  static const routname = "/NextPage";
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  final List<QandA> _userQandA = [];

  void _addnewqanda(String question, String answer) {
    final newqa = QandA(
        id: DateTime.now().toString(),
        question: question,
        answer: answer); // categoryIds: Categories. );
    setState(() {
      _userQandA.add(newqa);
    });
  }

  void _startAddnewqa(BuildContext qax) {
    showModalBottomSheet(
        context: qax,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewQndA(_addnewqanda),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  void _deleteqanda(String id) {
    setState(() {
      _userQandA.removeWhere((qa) => qa.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        'flashcards',
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => _startAddnewqa(context),
        )
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColorDark,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height -
                    appBar.preferredSize.height,
                child: QandAlist(
                  _userQandA,
                  _deleteqanda,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
