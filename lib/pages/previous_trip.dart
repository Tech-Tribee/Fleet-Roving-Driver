import 'package:fleet_roving_driver/components/AppDrawer/main_drawer.dart';
import 'package:fleet_roving_driver/components/app_bar.dart';
import 'package:fleet_roving_driver/components/trip_details_card.dart';
import 'package:flutter/material.dart';

const tripData = [
  {
    'Sl.no': '1',
    'Trip ID': '#285123',
    'Distance': '10 Km',
    'Number of Boarding People': '5',
    'Status': 'Completed',
  },
  {
    'Sl.no': '2',
    'Trip ID': '#895456',
    'Distance': '8 Km',
    'Number of Boarding People': '3',
    'Status': 'In Progress',

  },
    {
    'Sl.no': '3',
    'Trip ID': '#336133',
    'Distance': '15 Km',
    'Number of Boarding People': '4',
    'Status': 'Completed',

  },
  {
    'Sl.no': '4',
    'Trip ID': '#741856',
    'Distance': '8 Km',
    'Number of Boarding People': '6',
    'Status': 'In Progress',

  },
];

class RecentTrips extends StatelessWidget {
  const RecentTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> tripDetailsTable = [
      const ListTile(
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Center(child: Text('Sl.no'))),
            Expanded(child: Center(child: Text('Trip ID'))),
            Expanded(child: Center(child: Text('Distance'))),
            Expanded(child: Center(child: Text('No.of boarding people'))),
            Expanded(child: Center(child: Text('Status'))),
          ],
        ),
      ),
      for (final trip in tripData)
        TripDetails(trip: trip),
    ];

    return Scaffold(
      appBar: const MyAppBar(isShowMenuIcon: true, screenName: 'Previous Trips'),
      drawer: const MainDrawer(),
      body: ListView(
        children: tripDetailsTable,
      ),
    );
  }
}


// class RecentTrips extends StatelessWidget {
//   const RecentTrips({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> tripDetailsTable = [
//       // Subheader
//       const ListTile(
//         subtitle: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(child: Text('Sl.no')),
//               Expanded(child: Text('Trip ID')),
//               Expanded(child: Text('Distance')),
//               Expanded(child: Text('No.of boarding people')),
//               Expanded(child: Text('Status')),
//             ],
//           ),
//         ),
//       ),
//       // Trip details
//       for (final trip in tripData)
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 1.0), // Set the vertical margin
//           decoration: BoxDecoration(
//             color: AppColors.whiteColor,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 4,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: ListTile(
//             tileColor: AppColors.whiteColor,
//             subtitle: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(child: Text(trip['Sl.no'] ?? '')),
//                   Expanded(child: Text(trip['Trip ID'] ?? '')),
//                   Expanded(child: Text(trip['Distance'] ?? '')),
//                   Expanded(child: Text(trip['Number of Boarding People'] ?? '')),
//                   Expanded(
//                     child: StatusButton(
//                       btnName: trip['Status'] ?? '',
//                       textColor: AppColors.whiteColor,
//                       bgColor: AppColors.limeGreen,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//     ];

//     return Scaffold(
//       appBar: const MyAppBar(isShowMenuIcon: true, screenName: 'Previous Trips'),
//       drawer: const MainDrawer(),
//       body: ListView(
//         children: tripDetailsTable,
//       ),
//     );
//   }
// }
