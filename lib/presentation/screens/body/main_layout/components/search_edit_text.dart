import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/constants.dart';

class SearchEditText extends StatelessWidget {
  const SearchEditText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {

        },
        borderRadius: BorderRadius.circular(defaultPadding +10),
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
              gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.white,
              ]),

          ),
          child: TextField(
            decoration: InputDecoration(
              filled: false, // Disable filling
              hintText: 'SEARCH'.tr, // Hint text
              hintStyle: TextStyle(color: Colors.grey[400]), // Hint text style
              contentPadding: EdgeInsets.all(15.0),
              border: OutlineInputBorder( // Border styling
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.white, // Border color
                  width: 2.0, // Border width
                ),
              ),
              enabledBorder: OutlineInputBorder( // Border when not focused
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder( // Border when focused
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              suffixIcon: Icon(Icons.search, color: Colors.white), // Icon on the right side
            ),
          )
        ),
      ),
    );
  }
}


