
import 'package:fleet_roving_driver/components/app_bar.dart';
import 'package:fleet_roving_driver/components/monthly_report_card.dart';
import 'package:fleet_roving_driver/components/profile_card.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:const MyAppBar(isShowMenuIcon: true, screenName: 'Dashbooard',),  
        drawer:const Drawer(),
        body: Container(
          padding:const EdgeInsets.symmetric(horizontal:15,),
           child:const Column(
               children: [
          ProfileCard(profileImageUrl: 'assets/images/profile.png',name:'Driver Name', id:'ID here'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MonthlyReportCard(title: 'Total trips this month', value: 12),
              MonthlyReportCard(title: 'Total revenue this month',symbol: '₹', value: 12090),
            ],
          )
          ],
        ),
        ),
    );
  }
}
