import '../models/QndA.dart';
import 'package:flutter/material.dart';
import '../screens/flashcard_screen.dart';
//import '../models/QndA.dart';

class QandAlist extends StatelessWidget {
  final List<QandA> qnda;
  final Function deleteCt;
  //final String id;
  QandAlist(this.qnda, this.deleteCt);

  void selectCategory(BuildContext qax) {
    Navigator.of(qax).push(
      MaterialPageRoute(
        builder: (_) {
          return FlashCardShow();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // onTap:() => selectCategory(context),
      child: ListView.builder(
        itemBuilder: (qtx, index) {
          return InkWell(
            onTap: () => selectCategory(context),
            child: Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              child: ListTile(
                title: Text(
                  "Q: " + qnda[index].question,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  "A: " + qnda[index].answer,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                  onPressed: () => deleteCt(qnda[index].id),
                ),
              ),
            ),
          );
        },
        itemCount: qnda.length,
      ),
    );
  }
}
