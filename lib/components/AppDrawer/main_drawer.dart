
import 'package:fleet_roving_driver/components/AppDrawer/drawer_list.dart';
import 'package:fleet_roving_driver/components/AppDrawer/header_drawer.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyHeaderDrawer(),
            MyDrawerList(),
          ],
        ),
      ),
    );
  }
}
