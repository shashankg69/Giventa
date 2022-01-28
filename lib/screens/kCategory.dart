import 'package:flutter/material.dart';
import 'kConstants.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;

  const CategoryCard({
    Key? key,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 76,
        width: 76,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: COLOR_SHADY_WHITE,
          border: Border.all(
            color: COLOR_BORDER_GREY,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 6),
            Text(
              categoryName,
              style: const TextStyle(
                fontFamily: "jk_med",
                fontSize: 11,
                color: COLOR_TEXT_GREY,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
