import 'package:fleet_roving_driver/utils/colors.dart';
import 'package:flutter/material.dart';

class BillReportCard extends StatelessWidget {
  final String title;
  final String? symbol;
  final int value;

  const BillReportCard({Key? key,this.symbol = '', required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 160,
        minHeight: 70,
      ),
      child: Material(
        elevation: 5.0,
        borderRadius:const BorderRadius.only(
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
        child: InkWell(
          onTap: () {
            // Handle tap event if needed
          },
          child: Container(
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              color: AppColors.whiteColor,
            ),
            width: cardWidth * 0.40,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 14, color: AppColors.lightGray),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$symbol $value',
                      style: const TextStyle(fontSize: 20, color: AppColors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

