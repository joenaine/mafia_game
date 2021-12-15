import 'package:flutter/material.dart';

class MafiaView extends StatelessWidget {
  final String text;

  MafiaView({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Card(
        elevation: 4,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 48, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
