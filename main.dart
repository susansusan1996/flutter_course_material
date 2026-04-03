import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home:new HomePage2(),
  ));
}

//---------------StatelessWidget---------------
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title:Text('my app demo'),
      ), body: Column(
      children:<Widget>[
        Container(
          color: Colors.red,
          width:100.0,
          height:100.0,
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.blue,
          width:100.0,
          height:100.0, ),
      ]
    )
    );
  }
}

//---------------StatefulWidget---------------
class HomePage2 extends StatefulWidget{
  @override
  HomePage2State createState() {
    return HomePage2State();
  }
}


class HomePage2State extends State<HomePage2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         floatingActionButton: FloatingActionButton(
             child: Icon(Icons.forward),
             onPressed: (){
           // 刷新頁面
           setState((){

           });
         }),
        appBar: new AppBar(
          title:Text('my app demo'),
        ), body: Column(
        children:<Widget>[
          Container(
            color: getColor(),
            width:100.0,
            height:100.0,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            color: getColor(),
            width:100.0,
            height:100.0, ),
        ]
    )
    );
  }

  Color getColor(){
    return Color.fromARGB(255,Random().nextInt(255),Random().nextInt(255),Random().nextInt(255));
  }

 
}
