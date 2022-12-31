import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  final FontWeight? bold;

  const AppText(
      {super.key,
      required this.text,
      required this.size,
      this.color,
      this.bold});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size, fontWeight: bold),
      ),
    );
  }
}
