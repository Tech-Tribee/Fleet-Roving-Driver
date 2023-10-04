import 'package:flutter/material.dart';


class StatusButton extends StatelessWidget {
  final String btnName;
  final Color textColor;
  final Color bgColor;


  const StatusButton({
    Key? key,
    required this.btnName,
    required this.textColor,
    required this.bgColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your button click logic here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize:const Size(50, 20),
        maximumSize:const Size(58, 21),
        padding:const EdgeInsets.all(1), 
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
      ),
      child: Text(
        btnName,
        style: TextStyle(
          fontSize: 8, 
          color: textColor,
        ),
      ),
    );
  }
}
