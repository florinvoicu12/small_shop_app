import 'package:flutter/material.dart';
import 'package:flutter_myapp/constants.dart';
import 'package:flutter_svg/svg.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search items...",
              fillColor: Colors.white,
              filled: true,
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset("assets/icons/Search.svg"),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding / 2),
                child: SizedBox(
                  height: 48,
                  width: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(defaultBorderRadius)))),
                    child: SvgPicture.asset("assets/icons/Filter.svg"),
                  ),
                ),
              ))),
    );
  }
}

const outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(defaultBorderRadius),
  ),
  borderSide: BorderSide.none,
);
