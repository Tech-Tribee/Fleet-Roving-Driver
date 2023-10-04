import 'package:fleet_roving_driver/pages/trip_information.dart';
import 'package:flutter/material.dart';
import 'package:fleet_roving_driver/components/status_button.dart';
import 'package:fleet_roving_driver/utils/colors.dart';

class TripDetails extends StatelessWidget {
  final Map<String, String> trip;

  const TripDetails({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1.0),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        textColor: AppColors.darkBlack,
        tileColor: AppColors.whiteColor,
        titleTextStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>const TripInformation(),
        ),
        );
          },
        title: Center(
          child: Row(
            children: [
              Expanded(child: Center(child: Text(trip['Sl.no'] ?? ''))),
              Expanded(child: Center(child: Text(trip['Trip ID'] ?? ''))),
              Expanded(child: Center(child: Text(trip['Distance'] ?? ''))),
              Expanded(child: Center(child: Text(trip['Number of Boarding People'] ?? ''))),
              Expanded(
                child: Center(
                  child: StatusButton(
                    btnName: trip['Status'] ?? '',
                    textColor: AppColors.whiteColor,
                    bgColor: trip['Status'] == 'Completed' ? AppColors.limeGreen :AppColors.yellowGreen ,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
