import 'package:fleet_roving_driver/components/app_bar.dart';
import 'package:fleet_roving_driver/components/AppDrawer/main_drawer.dart';
import 'package:fleet_roving_driver/components/monthly_report_card.dart';
import 'package:fleet_roving_driver/components/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyProfile extends StatefulWidget {

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:const MyAppBar(isShowMenuIcon: true, screenName: 'Dashbooard',),  
        drawer:const MainDrawer(),
        body: Container(
          padding:const EdgeInsets.symmetric(horizontal:15,),
           child:const Column(
               children: [
          ProfileCard(profileImageUrl: 'assets/images/profile.png',name:'Nikita Patel', id:'365758'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MonthlyReportCard(title: 'Total trips this month', value: 14),
              MonthlyReportCard(title: 'Total revenue this month',symbol: '₹', value: 9260),
            ],
          )
          ],
        ),
        ),
    );
  }
}


