import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/theming/styles.dart';

class CustomAppBarSearch extends StatelessWidget {
  const  CustomAppBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
       SvgPicture.asset("assets/svg/arrow-left.svg",height: 20,width: 20,fit: BoxFit.cover,),const Spacer(),
       Text("Search",style: Styles.montserrat16semiBoldwhite,),const Spacer(),

SvgPicture.asset("assets/svg/info-circle.svg",height: 20,width: 20,fit: BoxFit.cover,),



    ],);
  }
}