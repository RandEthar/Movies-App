
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class NotFound extends StatelessWidget {
  const NotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         SvgPicture.asset("assets/svg/Group.svg",height: 73,width: 73,fit: BoxFit.cover,),
         verticalSpace(16)
       ,  Text("we are sorry, we can\n not find the movie :(",style: Styles.montserrat16semiBoldwhite,)
            ,  verticalSpace(8)
       , Text(" Find your movie by Type title",style: Styles.montserrat14MediumgrayishBlueGray.copyWith(
        fontSize: 12
       ),)
              
    
    ],);
  }
}