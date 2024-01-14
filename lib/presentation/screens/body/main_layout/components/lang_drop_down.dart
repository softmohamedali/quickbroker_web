import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';


class LangMenu extends StatelessWidget {
  const LangMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          // Handle onTap action
        },
        borderRadius: BorderRadius.circular(defaultPadding + 10),
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
            color: Colors.white, // Border color
            width: 2.0, // Border width
          ),
            borderRadius: BorderRadius.circular(defaultPadding),
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.white,
              ],
            ),
          ),
          child: InputDecorator(
            decoration: InputDecoration(
              border: OutlineInputBorder( // Add border styling
                borderRadius: BorderRadius.circular(defaultPadding),
                borderSide: BorderSide(
                  color: Colors.white, // Border color
                  width: 2.0, // Border width
                ),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust content padding
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true, // Ensure the dropdown button takes full width
                hint: Text(
                  "ENGLISH", // Set your hint text
                  style: TextStyle(color: Colors.grey[400]), // Hint text style
                ),
                dropdownColor: Colors.transparent, // Set dropdown background color
                items: <String>['Item 1', 'Item 2', 'Item 3'] // Add your dropdown items
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Handle dropdown value change
                },
                style: TextStyle(color: Colors.white), // Set dropdown text color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
