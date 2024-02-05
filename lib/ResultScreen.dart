import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final int result;
  const ResultScreen({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Text(
          'The result is $result',
          style: TextStyle(
            fontSize: 24,
             color: Colors.white,
          )
        ),
      ),
    );
  }
}
