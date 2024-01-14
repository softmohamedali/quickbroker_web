import 'package:flutter/material.dart';
import 'package:quickbroker/presentation/ui/MyColors.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool? isSelected;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text,this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:20,vertical:5 ),
        decoration: BoxDecoration(
          // You can set any color here
          color: isSelected??false ?  AppColors.secondryColor : Colors.transparent ,
          borderRadius: BorderRadius.circular(5.0), // Set the border radius
        ),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
