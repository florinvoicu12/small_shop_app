import 'package:flutter/material.dart';
import 'package:flutter_myapp/constants.dart';
import 'package:flutter_myapp/models/Product.dart';
import 'package:flutter_myapp/screens/details/components/color_dot.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(color: Colors.black),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  "assets/icons/Heart.svg",
                  height: 20,
                ),
              ),
            )
          ]),
      body: Column(children: [
        Image.asset(
          product.image,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Expanded(
          child: Container(
              padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2,
                  defaultPadding, defaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultBorderRadius * 3),
                      topRight: Radius.circular(defaultBorderRadius * 3))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(product.title,
                              style: Theme.of(context).textTheme.titleSmall),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text("\$" + product.price.toString(),
                            style: Theme.of(context).textTheme.titleSmall)
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                          "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches(8 to 13 cm) long and ussually having 2-5 buttons."),
                    ),
                    Text(
                      "Colors",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      children: [
                        ColorDot(
                            color: Color(0xFFBEE8EA),
                            isActive: false,
                            press: () {}),
                        ColorDot(
                            color: Color(0xFF141B4A),
                            isActive: true,
                            press: () {}),
                        ColorDot(
                            color: Color(0xFFF4C5C3),
                            isActive: false,
                            press: () {}),
                      ],
                    ),
                    const SizedBox(
                      height: defaultPadding * 1.5,
                    ),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: StadiumBorder()),
                            child: Text("Add to cart")),
                      ),
                    )
                  ],
                ),
              )),
        )
      ]),
    );
  }
}
