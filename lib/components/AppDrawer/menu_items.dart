// import 'package:flutter/material.dart';

// class CustomMenuItem extends StatefulWidget {
//   final String iconName;
//   final IconData iconType;
//   final VoidCallback? onTap;

//   const CustomMenuItem({
//     required this.iconName,
//     required this.iconType,
//     this.onTap,
//   });

//   @override
//   _CustomMenuItemState createState() => _CustomMenuItemState();
// }

// class _CustomMenuItemState extends State<CustomMenuItem> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         margin:const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
//         height: 55,
//         child: InkWell(
//           onTap: widget.onTap,
//           onHover: (value) {
//             setState(() {
//               isHovered = !isHovered;
//             });
//           },
//           borderRadius: BorderRadius.circular(14),
//           child: Container(
//             padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 4),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               color: isHovered ? Colors.blue : Colors.transparent,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 40,
//                   width: 40,
//                   decoration: BoxDecoration(
//                     color: isHovered ? Colors.white : Colors.black,
//                     shape: BoxShape.rectangle,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Icon(
//                     widget.iconType,
//                     size: 20,
//                     color: isHovered ? Colors.blue : Colors.lightBlue,
//                   ),
//                 ),
//                 Padding(
//                   padding:const EdgeInsets.all(16.0),
//                   child: Text(
//                     widget.iconName,
//                     style: TextStyle(
//                       color: isHovered ? Colors.black : Colors.grey,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:fleet_roving_driver/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomMenuItem extends StatefulWidget {
  final String iconName;
  final IconData iconType;
  final VoidCallback? onTap;

  const CustomMenuItem({
    Key? key, 
    required this.iconName,
    required this.iconType,
    this.onTap,
  }): super(key: key);


  @override
  _CustomMenuItemState createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        child: InkWell(
          onTap: widget.onTap,
          onHover: (value) {
            setState(() {
              isHovered = value;
            });
          },
          borderRadius: BorderRadius.circular(14),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            tileColor: isHovered ? AppColors.lightTransparentBlack: Colors.white,
            leading: Container(
              height: 32,
              width: 35,
              decoration: BoxDecoration(
                color: isHovered ? AppColors.dodgerBlue  : const Color.fromARGB(248, 255, 255, 255),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                widget.iconType,
                size: 20,
                color: isHovered ? AppColors.lightwhite : AppColors.lighblue,
              ),
            ),
            title: Text(
              widget.iconName,
              style: TextStyle(
                color: isHovered ? AppColors.lightBlack :AppColors.slateGray,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
