import 'package:flutter/material.dart';
import 'package:flutter_myapp/constants.dart';
import 'package:flutter_myapp/screens/home/components/categories.dart';
import 'package:flutter_myapp/screens/home/components/new_arrival.dart';
import 'package:flutter_myapp/screens/home/components/popular.dart';
import 'package:flutter_myapp/screens/home/components/search_form.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/menu.svg",
            )),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset("assets/icons/Location.svg"),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
            "15/2 New Texas",
            style: Theme.of(context).textTheme.titleSmall,
          )
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Explore",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 34)),
            Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const SizedBox(
              height: defaultPadding,
            ),
            NewArrival(),
            const SizedBox(
              height: defaultPadding,
            ),
            Popular(),
          ]),
        ),
      ),
    );
  }
}
