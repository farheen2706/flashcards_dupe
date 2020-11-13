import './widgets/newcategory.dart';
import './widgets/categorieslist.dart';
import './models/categories.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flashcards',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.purple,
        fontFamily: 'Quicksand',
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(fontFamily: 'OpenSans', fontSize: 20),
              ),
        ),
      ), //to not put colors everytime
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  /* String titleInput;
  String sno;*/
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final List<Categories> _userCategories = [
    /* Categories(id: 'c1',categoryname: "Physics",sno: 1),
    Categories(id: 'c2', categoryname: "Programming in C", sno: 2),*/
  ];

  void _addnewcategory(String categoryname, int sno) {
    final newCt = Categories(
      id: DateTime.now().toString(),
      categoryname: categoryname,
      sno: sno,
    );

    setState(() {
      _userCategories.add(newCt);
    }); //to enter data into the modal bottom sheet
  }

  void _startAddnewCategory(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewCategory(_addnewcategory), //add new category
            behavior: HitTestBehavior
                .opaque, //to not close the sheet upon touching it
          );
        });
  }

  void _deleteCategory(String id) {
    setState(() {
      _userCategories.removeWhere((ct) => ct.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        'Categories',
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => _startAddnewCategory(context),
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
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 
                appBar.preferredSize.height,
                child: CategoriesList(
                  _userCategories,
                  _deleteCategory,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddnewCategory(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
