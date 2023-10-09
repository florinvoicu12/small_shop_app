import 'package:flutter/material.dart';
import 'package:flutter_myapp/constants.dart';
import 'package:flutter_myapp/models/Category.dart';
import 'package:flutter_myapp/models/Product.dart';
import 'package:flutter_myapp/new_category_card.dart';
import 'package:flutter_svg/svg.dart';

class NewHomeScreen extends StatelessWidget {
  const NewHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2, horizontal: defaultPadding),
          child: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        elevation: 0,
        title: AppBarTitleSection(),
        actions: [NotificationsWidget()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Explore",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(
              height: 20,
            ),
            NewSearchForm(),
            SizedBox(height: defaultPadding),
            NewCategoryCardsList(),
            SizedBox(
              height: 15,
            ),
            NewProductsSection(),
            PopularProductsSection()
          ]),
        ),
      ),
    );
  }
}

class NewSearchForm extends StatelessWidget {
  const NewSearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search items...",
        filled: true,
        fillColor: Colors.white,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/icons/Search.svg",
          ),
        ),
        suffixIcon: ElevatedButton(
          onPressed: () {},
          child: SvgPicture.asset(
            "assets/icons/Filter.svg",
          ),
        ),
      ),
    );
  }
}

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding / 2),
      child: SvgPicture.asset("assets/icons/Notification.svg"),
    );
  }
}

class AppBarTitleSection extends StatelessWidget {
  const AppBarTitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/icons/Location.svg"),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          "15/2 New Texas",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ],
    );
  }
}

class NewProductsSection extends StatelessWidget {
  const NewProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewSectionTitle(
          firsttext: "New arrival",
          secondtext: "See all",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NewProductCard(
                        title: demo_product[index].title,
                        image: demo_product[index].image,
                        price: demo_product[index].price,
                        press: () {},
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class PopularProductsSection extends StatelessWidget {
  const PopularProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewSectionTitle(
          firsttext: "Popular",
          secondtext: "See all",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NewProductCard(
                        title: demo_product[index].title,
                        image: demo_product[index].image,
                        price: demo_product[index].price,
                        press: () {},
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class NewSectionTitle extends StatelessWidget {
  const NewSectionTitle({
    super.key,
    required this.firsttext,
    required this.secondtext,
  });

  final String firsttext, secondtext;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firsttext,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),
        ),
        Text(secondtext)
      ],
    );
  }
}

class NewProductCard extends StatelessWidget {
  const NewProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.press,
  });

  final String title, image;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          width: 145,
          height: 220,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.all(
                            Radius.circular(defaultBorderRadius / 2))),
                    padding: EdgeInsets.all(20),
                    child: Image.asset(image)),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                    ),
                  ),
                  Text("\$" + price.toString())
                ],
              ),
            ],
          )),
    );
  }
}
