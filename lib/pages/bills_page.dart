import 'package:fleet_roving_driver/components/AppDrawer/main_drawer.dart';
import 'package:fleet_roving_driver/components/app_bar.dart';
import 'package:fleet_roving_driver/components/bill_details_card.dart';
import 'package:fleet_roving_driver/components/bill_report_card.dart';
import 'package:flutter/material.dart';

const tripInfo = [
  {
    "Trip ID": "#365758",
    "Pick Up": "Electronic city",
    "Bill Amount": "650",
    "Bill Status": "Paid",
    "Drop": "IBM",
    "Distance": "10 km",
    "Status": "Completed",
    "No. of passengers": "4"
  },
  {
    "Trip ID": "#361256",
    "No. of passengers": "2",
    "Bill Amount": "300",
    "Bill Status": "Pending",
    "Drop": "Electronic city",
    "Distance": "5 km",
    "Pick Up": "Kudlu Gate",
    "Status": "Ongoing"
  },
  {
    "Trip ID": "#123459",
    "No. of passengers": "3",
    "Bill Amount": "540",
    "Bill Status": "Paid",
    "Drop": "Destination",
    "Distance": "8 km",
    "Pick Up": "Location",
    "Status": "Completed"
  },
  {
    "Trip ID": "#963660",
    "No. of passengers": "5",
    "Bill Amount": "520",
    "Bill Status": "Pending",
    "Drop": "Electronic city",
    "Distance": "3 km",
    "Pick Up": "Bomanhali",
    "Status": "Completed"
  }
];

class MyBills extends StatelessWidget {
  const MyBills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        isShowMenuIcon: true,
        screenName: 'Bills',
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BillReportCard(title: 'Total Pending bills', value: 2),
              BillReportCard(
                  title: 'Total Amount pending', symbol: '₹', value: 950),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: tripInfo.length,
              itemBuilder: (context, index) {
                return BillDetailsCard(tripInfo: tripInfo[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}