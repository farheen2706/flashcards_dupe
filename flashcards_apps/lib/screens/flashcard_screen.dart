import 'package:flashcards_apps/models/QndA.dart';
import 'package:flashcards_apps/widgets/QandAlist.dart';
import 'package:flutter/material.dart';
import '../models/QndA.dart';

class FlashCardShow extends StatelessWidget {
 // final List<QandA> qnda;
  //final String id;
 // final var id2= new id();
  //FlashCardShow(this.id,this.qnda);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'flashcard',
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: 600,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColorLight,
                Theme.of(context).primaryColorDark,
              ]),
        ),
        child: Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 25,
            ),
            child: Column(
              children: [
                Text('hello'),
                Text('Yolo'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
