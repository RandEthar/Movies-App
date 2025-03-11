import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/theming/colors.dart';
import 'package:movies_app/core/theming/font_wight_helper.dart';

class Styles {

static  TextStyle roboto12RegularGray=GoogleFonts.roboto( 
fontSize:14,
color: ColorsManager.greyShade,
fontWeight: FontWeightHelper.regular
);

static  TextStyle poppins18SemiBoldWhite=GoogleFonts.poppins( 
fontSize:18,
color: Colors.white,
fontWeight: FontWeightHelper.semiBold
);
static  TextStyle poppins14RegularGreyShade=GoogleFonts.poppins( 
fontSize:14,
color: ColorsManager.greyShade,
fontWeight:FontWeightHelper.regular
);
static  TextStyle montserrat96semiBoldprimaryColor=GoogleFonts.montserrat( 
fontSize:96,
color: ColorsManager.primaryColor,
fontWeight:FontWeightHelper.semiBold
);
static  TextStyle poppins14MediumWhite=GoogleFonts.poppins( 
fontSize:14,
color: Colors.white,
fontWeight: FontWeightHelper.medium
);













}