import 'package:fleet_roving_driver/components/AppDrawer/main_drawer.dart';
import 'package:fleet_roving_driver/components/app_bar.dart';
import 'package:fleet_roving_driver/components/status_button.dart';
import 'package:fleet_roving_driver/components/trip_information_card.dart';
import 'package:fleet_roving_driver/utils/colors.dart';
import 'package:flutter/material.dart';

const tripInformation = [
  {
    "Trip ID": "#365758",
    "Pick Up": "Electronic city",
    "Bill Amount": "650",
    "Bill Status": "Paid",
    "Drop": "IBM",
    "Distance": "10 km",
    "Status": "Completed",
    "No. of passengers": "4"
  }
];

class TripInformation extends StatelessWidget {
  const TripInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        isShowMenuIcon: true,
        screenName: 'Trip information',
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 10),
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            StatusButton(btnName: 'Start', textColor: AppColors.whiteColor, bgColor: AppColors.green),
            StatusButton(btnName: 'End', textColor: AppColors.whiteColor, bgColor: AppColors.red)
          ],),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: tripInformation.length,
              itemBuilder: (context, index) {
                return TripInformationCard(tripInfo: tripInformation[index]);
              },
            ),
          ),
          // const SizedBox(height: 20),
         
        ],
      ),
    );
  }
}