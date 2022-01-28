import 'package:flutter/material.dart';

Size getUsableScreenSize(BuildContext context) {
  final Size entireScreenSize = MediaQuery.of(context).size;
  final EdgeInsets screenPadding = MediaQuery.of(context).padding;
  final Size usableScreenSize = Size(
    entireScreenSize.width,
    entireScreenSize.height - screenPadding.top - screenPadding.bottom,
  );
  return usableScreenSize;
}
