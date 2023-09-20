import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final int num;

  const Cards(this.num);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: Text('Card $num'),
      ),
    );
  }
}