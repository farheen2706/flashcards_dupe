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
                width: 500,
               // color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      border:Border.all(width: 10, color:Colors.greenAccent),
                      //borderRadius: BorderRadius.circular(100),
                      shape: BoxShape.circle,
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: val,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(100),
                         gradient: RadialGradient(
                 /* begin: Alignment.topLeft,
                  end: Alignment.bottomRight,*/
                  colors: <Color>[
                Colors.yellow,
                Colors.red,
              ]),
                      ),
                    ),
                  ),
                ],
                ),
                ),

          MaterialButton(
          onPressed: () {
            setState(() {
              val= val+0.1;
            });
          },
          
         //padding:  EdgeInsets.all(30),
         // textColor: Colors.white,
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.white,
                  Colors.blue,
                ],
              ),
              
            ),
            
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                'Increase',
                style: TextStyle(fontSize: 20,
                color: Colors.black,),
                
              ),
            ),
            
          ),
         
          ),
            ],
        ),
        ),
    )
    );
  }
}