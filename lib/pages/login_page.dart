import 'package:fleet_roving_driver/components/app_bar.dart';
import 'package:fleet_roving_driver/components/text_field.dart';
import 'package:fleet_roving_driver/pages/dash_bord.dart';
import 'package:flutter/material.dart';
import 'package:fleet_roving_driver/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailText = TextEditingController();
final passwordText = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:const MyAppBar(isShowMenuIcon: false),  
        body: Container(
        color:AppColors.whiteColor,
        padding: const EdgeInsets.only(
        top: 10,
        left: 15,
        right: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Driver Login',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400,color:AppColors.darkBlack),
          ),
          const Text(
            'Enter your email and password to sign in',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 237,
              width: 288,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lockimg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BuildTextfield(
              lebel: 'Email',
              placeholder: 'username@gmail.com',
              textController: emailText,
              isSecureText: false,
            ),
            const SizedBox(height: 5),
            BuildTextfield(
              lebel: 'Password',
              placeholder: 'Password',
              textController: passwordText,
              isSecureText: true,
            ),
            const SizedBox(height:15),
            buildSignInButton(context),
          ]),
        ],
      ),
      ),
      
    )
    );
  }
}

Widget buildSignInButton(BuildContext context) {
  return 
  ElevatedButton(
    onPressed: () {
      String userEmail = emailText.text.toString();
      String userpass = passwordText.text;
      print('Email: $userEmail pass: $userpass');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyProfile(),
        ),
      );
    },
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      minimumSize: const Size(
        double.infinity,
        50,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: const Text(
      'SIGN IN',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        letterSpacing: 1,
      ),
    ),
  );
}
