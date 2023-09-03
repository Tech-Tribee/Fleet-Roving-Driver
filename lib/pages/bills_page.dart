import 'package:fleet_roving_driver/components/AppDrawer/main_drawer.dart';
import 'package:fleet_roving_driver/components/app_bar.dart';
import 'package:flutter/material.dart';

class MyBills extends StatelessWidget {
  const MyBills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(isShowMenuIcon: true, screenName: 'Bills',),  
      drawer: MainDrawer(),
      body:Center(
     child :Text('Bills'),
    )
    )
    ;
  }
}