import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/MyColors.dart';

class CheakBoxWithTilte extends StatelessWidget {
  String? title;
  bool isChecked;

  CheakBoxWithTilte({super.key,this.title,required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4), // shadow color
                  spreadRadius: 1,
                  blurRadius:11,
                  offset: Offset(0, 8),
                ),
              ],
              borderRadius: BorderRadius.circular(8.0),
              color: isChecked ? AppColors.activeColor : AppColors.baseColor,
              border: Border.all(
                color: isChecked ? AppColors.activeColor :  AppColors.baseColor,
                width: 2.0,
              ),
            ),
            child: Checkbox(
                value: isChecked,
                onChanged: (valur){},
                checkColor:AppColors.activeColor,
                activeColor:AppColors.activeColor,
                focusColor:AppColors.baseColor,
              side: BorderSide.none,

            )
        ),
        SizedBox(width: 8),
        Text(
          title??"",
          style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
