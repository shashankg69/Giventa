import 'package:flutter/material.dart';

class TextConstrainOverflow extends StatelessWidget {
  final String text;
  final int characterLimit;
  final TextStyle textStyle;

  const TextConstrainOverflow({
    Key? key,
    required this.text,
    required this.characterLimit,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      (text.length <= characterLimit + 2)
          ? text
          : '${text.substring(0, characterLimit)}...',
      style: textStyle,
    );
  }
}
