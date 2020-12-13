
//import './screens/QandA.dart';
//import './widgets/categorieslist.dart';
import './screens/maincategory.dart';
import 'package:flutter/material.dart';
//import 'maincategory.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      initialRoute: '/',
      routes: {
        '/' : (ctx) => MyHome(),
      },
    );
  }
}
 
