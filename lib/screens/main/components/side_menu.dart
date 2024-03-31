import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {

  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("images/logo.png")
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Element",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Product",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Channnel",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Order",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "User",
            svgSrc: "",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);
  
  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      )
    );
  }

}