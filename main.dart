


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){ //first flutter has main funcion
  runApp(MyApp()); //inside main fuction call runApp funcion
                    // inside runApp give application name/create a object

}
// next i have to create Myapp widgets
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) { // The build methon must be ovverridden
    return MaterialApp( // and return meterialapp
      debugShowCheckedModeBanner: false,
      title: "Counter App", // inside Metarial app set the app title
                            // The home page should be set
      home: MyHomePage(), // next The screen of the home page should be created
    );
  }
}


//A stateful Widget has two parts Widgets & View

class MyHomePage extends StatefulWidget{ //when we create statefullwidget then create createstate() methon
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }

}

class MyHomePageUI extends State<MyHomePage> {
  int CountNumber= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Center(
        child: Text("Counting Number : $CountNumber" ),


      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            CountNumber=CountNumber+1;
          });


        },
      ),
    );
  }
}

