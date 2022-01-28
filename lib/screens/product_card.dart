import 'package:flutter/material.dart';
import 'package:giventa_app/screens/kConstants.dart';
import 'package:giventa_app/screens/textConstrainOverflow.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.name,
    required this.location,
    required this.dayPrice,
    required this.image,
    required this.rating,
  }) : super(key: key);

  final String name;
  final String location;
  final String image;
  final String dayPrice;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 130,
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: COLOR_SHADY_WHITE,
          border: Border.all(
            color: COLOR_BORDER_GREY,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image(
                // Aspect Ratio is 4/3
                width: 150,
                height: 112.5,
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
            const SizedBox(width: 8),
            // const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150, // TODO: CALCULATED RISK
                    child: Text(
                      name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: MT_B_16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      ICON_LOCATION,
                      TextConstrainOverflow(
                        text: " $location",
                        characterLimit: 50,
                        textStyle: MT_M_12,
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 24,
                        width: 40,
                        decoration: BoxDecoration(
                          color: COLOR_BACKGROUND,
                          border: Border.all(
                            color: COLOR_PRIMARY,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              rating,
                              style: const TextStyle(
                                fontFamily: "mt_med",
                                color: COLOR_TEXT_GREY,
                                fontSize: 13,
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              size: 13,
                              color: COLOR_TEXT_GREY,
                            ),
                          ],
                        ),
                      ),
                      TextConstrainOverflow(
                        text: dayPrice + "/day",
                        characterLimit: 10,
                        textStyle: MT_B_16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
