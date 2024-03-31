import 'package:flutter/material.dart';
import 'package:flutter_entellitrade/controllers/menu_app_controller.dart';
import 'package:flutter_entellitrade/responsive.dart';
import 'package:flutter_entellitrade/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_entellitrade/screens/main/components/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu()
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        )
      )
    );
  }
  
}