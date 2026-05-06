import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my app demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              height: 200,
              child: Card(
                elevation: 20, //陰影高度
                color: Colors.red,
                child: Center(child: Text('card 1', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),)),
              ),
            ),
            SizedBox(
              width: 120,
              height: 200,
              child: Card(
                elevation: 20,//陰影高度
                color: Colors.green,
                child: Center(child: Text('card 2', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),)),
              ),
            ),
            SizedBox(
              width: 120,
              height: 200,
              child: Card(
                elevation: 20,//陰影高度
                color: Colors.blue,
                child: Center(child: Text('card 3', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}