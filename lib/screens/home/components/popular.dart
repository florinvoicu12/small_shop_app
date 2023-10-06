import 'package:flutter/material.dart';
import 'package:flutter_myapp/constants.dart';
import 'package:flutter_myapp/models/Product.dart';
import 'package:flutter_myapp/screens/home/components/product_card.dart';
import 'package:flutter_myapp/screens/home/components/section_title.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: ProductCard(
                        image: demo_product[index].image,
                        title: demo_product[index].title,
                        press: () {},
                        price: demo_product[index].price,
                        bgColor: demo_product[index].bgColor,
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
