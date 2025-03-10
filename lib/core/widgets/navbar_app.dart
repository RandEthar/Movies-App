import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/routing/routes.dart';
import 'package:movies_app/core/theming/colors.dart';
import 'package:movies_app/core/theming/styles.dart';

class NavbarApp extends StatelessWidget {
  const NavbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 78,
        decoration:const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: ColorsManager.blueAccent,
                width: 1.7
              )
            ),
          
          
          
          color: ColorsManager.primaryColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:10,horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(icons.length, (index) {
              return GestureDetector(
            
                child: bottomNavBarItem(
                   context: context, label: "Home", icon: "assets/svg/Home.svg",routeName:routes[index] ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget bottomNavBarItem(
      {  required BuildContext context,
    required String label,
    required String icon,
    required String routeName,}) {
    return GestureDetector(
          onTap: ()=>  Navigator.pushNamed(context,routeName),
      child: Column(
        children: [SvgPicture.asset(
         icon,height: 28,width: 28,
      ),verticalSpace(6),Text(label,style: Styles.roboto12RegularGray,)],
      ),
    );
  }
}

List<String> icons = [
  "assets/svg/Home.svg",
  "assets/svg/Search.svg",
  "assets/svg/Bookmark.svg"
];

List<String> labels = [
  "Home",
  "Search",
  "Watch list"
];
List<String> routes = [
  Routes.homeScreen,
   Routes.homeScreen,
 Routes.homeScreen,
];