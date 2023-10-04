import 'package:flutter/material.dart';
import 'package:fleet_roving_driver/utils/colors.dart';


class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColors.dodgerBlue,
      width: double.infinity,
      height: 150,
      padding:const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile.png'),
              ),
            ),
          ),
          Text('Nikita Patel', style: Theme.of(context).textTheme.titleMedium,),
          Text('nikita56@gmail.com', style: Theme.of(context).textTheme.titleMedium,),

        ],
      ),
    );
  }
}