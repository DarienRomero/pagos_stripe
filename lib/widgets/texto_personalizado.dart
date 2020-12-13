import 'package:flutter/material.dart';
class TextoPersonalizado extends StatelessWidget {
  Color color;
  String texto;
  TextoPersonalizado(
    this.color,
    this.texto
  );
  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: color
      )
    );
  }
}