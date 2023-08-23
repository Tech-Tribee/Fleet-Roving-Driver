
import 'package:fleet_roving_driver/components/AppDrawer/menu_items.dart';

import 'package:fleet_roving_driver/pages/bills_page.dart';
import 'package:fleet_roving_driver/pages/dash_bord.dart';
import 'package:fleet_roving_driver/pages/login_page.dart';
import 'package:fleet_roving_driver/pages/previous_trip.dart';
import 'package:fleet_roving_driver/pages/trip_details.dart';

import 'package:flutter/material.dart';

class MyDrawerList extends StatefulWidget {
  const MyDrawerList({super.key});

  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          CustomMenuItem(iconName:'Dashboard',  iconType: Icons.dashboard_customize_outlined,onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> MyProfile()));
          },),
          
          CustomMenuItem(iconName:'Previous trips',  iconType: Icons.trip_origin_outlined,onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const  RecentTrips()));

          },),
          CustomMenuItem(iconName:'Bills',  iconType: Icons.book_online_outlined,onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const MyBills()));

          },),
          
          const Divider(color: Colors.black12,thickness: 2),
          const Text('ACCOUNT PAGES'),
          
          CustomMenuItem(iconName:'Profile',  iconType: Icons.man_2_outlined,onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const TripInformation()));
          },),
          
          CustomMenuItem(iconName:'Log out',  iconType: Icons.logout_outlined,onTap: () {
              // Clear any user session or authentication status here
              // For example, you can use shared preferences or a state management solution.
              // After clearing the session, navigate to the login screen
          Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) =>const LoginPage()), // Replace with your login screen
          (route) => false,); // This removes all previous routes from the stack
          },
          ),
      
        ],
      ),
    );
  }
}
