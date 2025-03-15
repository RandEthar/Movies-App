import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/font_wight_helper.dart';
import 'package:movies_app/core/theming/styles.dart';

class RowDetuilsMoves extends StatelessWidget {
  const RowDetuilsMoves({super.key, required this.icon, required this.text});
  final String icon;
    final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(  mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
      
        children: [
           SvgPicture.asset(
            icon,height: 16,width: 16,
           color: Colors.white,),
           horezontalSpace(4),
           Text(text,style: Styles.poppins12MediumBlueAccent.copyWith(
            fontWeight: FontWeightHelper.regular,
            color: Colors.white
           ),)
      ],),
    );
  }
}