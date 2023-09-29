import 'package:fleet_roving_driver/utils/colors.dart';
import 'package:flutter/material.dart';

class MonthlyReportCard extends StatelessWidget {
  final String title;
  final String? symbol;
  final int value;

  const MonthlyReportCard(
      {Key? key, required this.title, this.symbol = '', required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 155,
        minHeight: 90,
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
            height: 92,
            width: cardWidth * 0.45,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 14, color: AppColors.slateGray),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '$symbol $value',
                      style: const TextStyle(
                          fontSize: 20, color: AppColors.darkBlue),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColors.dodgerBlue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/world.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
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

