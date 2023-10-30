import 'package:fleet_roving_driver/components/person_details.dart';
import 'package:fleet_roving_driver/utils/colors.dart';
import 'package:flutter/material.dart';

const passengersInfo = [
  {
    'Name': 'John Doe',
    'Phno': '123456XXXX',
    'Drop location': 'MG Road',
    'Action': 'Drop',
  },
  {
    'Name': 'Jane Doe',
    'Phno': '987654XXXX',
    'Drop location': 'Kormangla',
    'Action': 'Drop',
  },
  {
    'Name': 'Bob Smith',
    'Phno': '555852XXXX',
    'Drop location': 'Wilson Garden',
    'Action': 'In Ride',
  },
  {
    'Name': 'Alice Johnson',
    'Phno': '111852XXXX',
    'Drop location': 'Electronic City',
    'Action': 'IN Ride',
  },
];

class TripInformationCard extends StatelessWidget {
  final Map<String, String> tripInfo;

  const TripInformationCard({Key? key, required this.tripInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 300,
        minHeight: 150,
      ),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Material(
          elevation: 2.0,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
          child: InkWell(
            onTap: () {
              // Handle tap event if need
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
                color: AppColors.lightTransparentBlack,
              ),
              width: cardWidth * 0.8, // Adjust as needed
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow1Item('Trip ID', tripInfo['Trip ID'] ?? ''),
                  _buildInfoRow1Item('Pick Up', tripInfo['Pick Up'] ?? ''),
                  _buildInfoRow1Item('Distance', tripInfo['Distance'] ?? ''),
                  _buildInfoRow1Item('Bill Amount', '₹${tripInfo['Bill Amount'] ?? ''}'),
                  const SizedBox(height: 10,),
                  Container(
                    // padding:const EdgeInsets.only(top: 10,bottom: 20),
                     decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(16),
                     ),  
                     child:   _buildTabulerCard(context),    
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow1Item(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$label:  ',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlack, // Adjust color as needed
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.gray, // Adjust color as needed
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildTabulerCard(BuildContext context) {
  List<Widget> tripDetailsTable = [
    Container(
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
        child: const Column(
          children: [
            SizedBox(height: 20, child: Text('Passengers Information',textAlign: TextAlign.left,)),
            ListTile(
              textColor: AppColors.lightGray,
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Center(child: Text('Name'))),
                  Expanded(child: Center(child: Text('Phno'))),
                  Expanded(child: Center(child: Text('Drop location'))),
                  Expanded(child: Center(child: Text('Action'))),

                ],
              ),
            ),
          ],
        )),
    for (final trip in passengersInfo) PersonDetails(trip: trip),
  ];

  return Column(
    children: tripDetailsTable,
  );
}
