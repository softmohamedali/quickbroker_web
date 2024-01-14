import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle onTap action
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4), // shadow color
              spreadRadius: 1,
              blurRadius:11,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: InputDecorator(
          decoration: InputDecoration(
            border: OutlineInputBorder( // Add border styling
              borderRadius: BorderRadius.circular(defaultPadding),
              borderSide:BorderSide.none
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust content padding
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true, // Ensure the dropdown button takes full width
              hint: Text(
                "", // Set your hint text
                style: TextStyle(fontSize: 10,color: Colors.grey[400]),
              ),
              dropdownColor: Colors.transparent, // Set dropdown background color
              items: <String>['It', 'It', 'Ite'] // Add your dropdown items
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,style: TextStyle(fontSize: 10,color: Colors.white),),
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
    );

  }
}
