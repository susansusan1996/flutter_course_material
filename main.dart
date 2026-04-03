import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home:new HomePage(),
  ));
}


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title:Text('my app demo'),
      ), body: Container(color: Colors.red, width:100.0, height:100.0, ),
    );
  }

}

