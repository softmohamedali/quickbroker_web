
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui/MyColors.dart';

Widget AddAssetBtn(
    String title
    ){
  return InkWell(
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.baseColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0, // Border width
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: AppColors.secTextColor),
          ),
          SizedBox(width: 8,),
          Container(
            width: 20,
              height: 20,
              child: SvgPicture.asset("icons/add.svg")
          )
        ],
      ),
    ),
  );
}