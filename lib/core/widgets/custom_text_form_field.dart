import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:movies_app/core/theming/colors.dart';
import 'package:movies_app/core/theming/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      cursorColor: ColorsManager.greyShade,
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.symmetric(horizontal: 20),
        suffixIcon: SvgPicture.asset(
          "assets/svg/Search_home.svg",
          height: 16,
          width: 16,
          fit: BoxFit.scaleDown,
        ),
        filled: true,
        fillColor: ColorsManager.charcoalgray,
        hintText: "Search",
        hintStyle: Styles.poppins14RegularGreyShade,
        border: OutLineInputBorder(),
        focusedBorder: OutLineInputBorder(),
        enabledBorder: OutLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder OutLineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: ColorsManager.charcoalgray),
        borderRadius: BorderRadius.circular(16));
  }
}
