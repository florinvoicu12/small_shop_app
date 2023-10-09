import 'package:flutter/material.dart';
import 'package:flutter_myapp/constants.dart';
import 'package:flutter_myapp/models/Category.dart';
import 'package:flutter_svg/svg.dart';

class NewCategoryCard extends StatelessWidget {
  const NewCategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  final String icon;
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius)))),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding / 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            SizedBox(
              height: defaultPadding,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class NewCategoryCardsList extends StatelessWidget {
  const NewCategoryCardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            demo_categories.length,
            (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NewCategoryCard(
                      icon: demo_categories[index].icon,
                      text: demo_categories[index].title,
                      press: () {}),
                )),
      ),
    );
  }
}

const outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(defaultBorderRadius),
  ),
  borderSide: BorderSide.none,
);
