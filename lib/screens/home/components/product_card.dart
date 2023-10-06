import 'package:flutter/material.dart';
import 'package:flutter_myapp/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
    required this.press,
  });

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultBorderRadius))),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(title,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Text("\$" + price.toString(),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
