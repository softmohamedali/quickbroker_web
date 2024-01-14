import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String? hint;

  MyTextField({super.key,this.hint});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4), // shadow color
            spreadRadius: 1,
            blurRadius:11,
            offset: Offset(0, 8),
          ),
        ],
      ),
      height: 30,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          hintText: hint,
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
        ),
      ),
    );
  }
}
