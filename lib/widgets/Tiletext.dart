// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Tiletext extends StatelessWidget {
  final String text;
  final Color textcolor;
  final double textSize;
  final FontWeight textFontweight;
  const Tiletext( {
    super.key,
    required this.text,
    required this.textcolor,
    required this.textSize,
    required this.textFontweight,
  });

   @override
  Widget build(BuildContext context) {
    return Text(text,
    style:TextStyle(
      color:textcolor,
      fontSize: textSize,
      fontWeight: textFontweight,
    ));
  }
}
