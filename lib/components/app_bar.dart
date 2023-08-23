import 'package:flutter/material.dart';
import 'package:fleet_roving_driver/utils/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isShowMenuIcon;
  final double appBarHeight;
  final String screenName;
  final String appName;

  const MyAppBar({
    Key? key,
    this.isShowMenuIcon = true,
    this.appBarHeight = 65,
    this.screenName = "",
    this.appName = 'Fleet Roving',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.white,
            ),
          ),
        ),
        child: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0x3321D4FD),
                  Color(0x332152FF),
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          title: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //      Text(
              //   '6:18',
              //   style: TextStyle(fontSize: 20),
              // ),
              // Text(
              //   'Airtel',
              //   style: TextStyle(fontSize: 20),
              // ),
              //   ],
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                          ),
                        ),
                      ),
                      if (!isShowMenuIcon)
                        Text(
                          appName,
                          style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                              color: AppColors.lightBlack),
                        ),
                    ],
                  ),
                  if (isShowMenuIcon)
                    Text(
                      screenName,
                      style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: AppColors.lightBlack),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
