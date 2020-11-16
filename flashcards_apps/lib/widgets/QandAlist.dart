import '../models/QndA.dart';
import 'package:flutter/material.dart';

class QandAlist extends StatelessWidget {
  final List<QandA> qnda;
  final Function deleteCt;
  QandAlist(this.qnda, this.deleteCt);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemBuilder: (qtx, index) {
        return Card(
          elevation: 10,

          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 5,
          ),
          child: ListTile(
            title: Text(
              qnda[index].question,
            ),
            subtitle: Text(
              qnda[index].answer,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(icon: Icon(Icons.delete),
            color: Colors.red, 
            onPressed: () => deleteCt(qnda[index].id),),
          ),
        );
      },
      itemCount: qnda.length,
      ),
    );
  }
}
