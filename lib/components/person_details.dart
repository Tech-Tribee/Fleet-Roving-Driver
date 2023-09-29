import 'package:flutter/material.dart';
import 'package:fleet_roving_driver/components/status_button.dart';
import 'package:fleet_roving_driver/utils/colors.dart';

class PersonDetails extends StatelessWidget {
  final Map<String, String> trip;

  const PersonDetails({Key? key, required this.trip}) : super(key: key);

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
        titleTextStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        title: Center(
          child: Row(
            children: [
              Expanded(child: Center(child: Text(trip['Name'] ?? ''))),
              Expanded(child: Center(child: Text(trip['Phno'] ?? ''))),
              Expanded(child: Center(child: Text(trip['Drop location'] ?? ''))),

              Expanded(
                child: Center(
                  child: StatusButton(
                    btnName: trip['Action'] ?? '',
                    textColor: AppColors.darkBlack,
                    bgColor: trip['Action'] == 'Drop' ? AppColors.yellow :AppColors.yellowGreen ,
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
