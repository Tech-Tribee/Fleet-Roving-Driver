import 'package:fleet_roving_driver/components/status_button.dart';
import 'package:fleet_roving_driver/utils/colors.dart';
import 'package:flutter/material.dart';

class BillDetailsCard extends StatelessWidget {
  final Map<String, String> tripInfo;

  const BillDetailsCard({Key? key, required this.tripInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 300,
        maxWidth: 400,
        minHeight: 180,
      ),
      child: Container(
        margin: const EdgeInsets.all(14.0),
      child: Material(
        elevation: 5.0,
         borderRadius:const BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
        child:InkWell(
          onTap: () {
            // Handle tap event if need
          },
          child: Container(
            decoration:const BoxDecoration(
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
                _buildInfoRow2Items('Pick Up', tripInfo['Pick Up'] ?? '','Distance', tripInfo['Distance'] ?? ''),
                _buildInfoRow2Items('Drop', tripInfo['Drop'] ?? '','Bill Amount', '₹${tripInfo['Bill Amount'] ?? ''}'),
                _buildInfoBtnRow('Status', tripInfo['Status'] ?? '','Bill Status', tripInfo['Bill Status'] ?? ''),
                _buildInfoRow1Item('No. of passengers', tripInfo['No. of passengers'] ?? ''),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }

Widget _buildInfoRow2Items(String label1, String value1,String label2, String value2){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$label1 : $value1",
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlack, // Adjust color as needed
            ),
          ),
          Text(
            '$label2 : $value2',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlack, // Adjust color as needed
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildInfoBtnRow(String label1, String value1,String label2, String value2){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label1 : $value1",
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color:AppColors.darkBlack, // Adjust color as needed
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children :[
          Text(
            '$label2 : ',
            style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color:AppColors.darkBlack, // Adjust color as needed
            ),
          ),
          StatusButton(
                  btnName: tripInfo['Bill Status'] ?? '',
                  textColor: AppColors.whiteColor,
                  bgColor: tripInfo['Bill Status'] == 'Paid' ? AppColors.green : AppColors.red,
                ),
        ],
          )
        ],
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
            '$label: ',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.black, // Adjust color as needed
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.black, // Adjust color as needed
            ),
          ),
        ],
      ),
    );
  }
}