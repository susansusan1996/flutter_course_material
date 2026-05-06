import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> cardData = [
    {'text': 'card 1', 'color': Colors.red},
    {'text': 'card 2', 'color': Colors.green},
    {'text': 'card 3', 'color': Colors.blue},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('my app demo')),
      body: ListView.builder(
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          return Center(
            child: SizedBox(
              height: 200,
              child: Card(
                elevation: 20,
                color: cardData[index]['color'],
                child: Center(
                  child: Text(
                    cardData[index]['text'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}