import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double val=0.0;
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         title: Text("Progress Bar"),
         //backgroundColor: Colors.blueAccent,
flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Colors.blue,
                Colors.white,
              ])),
        ),
        ),
        body: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 500,
                width: 100,
                color: Colors.white,
                child: Stack(
                children: <Widget>[
                    Container(
                    decoration: BoxDecoration(
                      border:Border.all(width: 10, color: Color.fromRGBO(220,220,220,1)), 
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: val,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                         gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Colors.,
                Colors.yellow,
              ])
                      ),
                    ),
                  ),
                ],
                ),
                ),

               MaterialButton(onPressed: (){
                 setState(() {
                   val =val+0.1;
                 });
               },
               child: Text("Increase"),
               minWidth: 200,
               shape: StadiumBorder(),
               height: 50,
               )
            ],
          ),
        ),
        ),
    );
  }
}