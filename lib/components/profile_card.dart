import 'package:flutter/material.dart';
import 'package:fleet_roving_driver/utils/colors.dart';

class ProfileCard extends StatelessWidget {
  final String profileImageUrl;
  final String name;
  final String id;
  final String msg;

  const ProfileCard(
      {Key? key,
      required this.profileImageUrl,
      required this.name,
      required this.id,
      this.msg = 'Hello,'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 110,
        color: AppColors.lightTransparentBlack,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(profileImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    msg,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightBlack),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkBlack),
                  ),
                  Text(
                    'Driver ID: $id',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkGray),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
