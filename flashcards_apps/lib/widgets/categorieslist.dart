

import '../models/categories.dart';
import './QandA.dart';
import 'package:flutter/material.dart';


class CategoriesList extends StatelessWidget {
  final List<Categories> categories;
  final Function deleteCt;
  CategoriesList(this.categories, this.deleteCt);

  void selectCategory(BuildContext qx) {
    Navigator.of(qx).push(MaterialPageRoute
    (builder: (_) {
      return NextPage();
    },),);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        //crossAxisAlignment: CrossAxisAlignment.center
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () => selectCategory(context),
            splashColor: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(15),
            child: Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: FittedBox(
                      child: Text(
                        categories[index].sno.toString(),
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  categories[index].categoryname,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                  onPressed: () => deleteCt(categories[index].id),
                ),
              ),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
