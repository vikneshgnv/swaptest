import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swap_tech_test/ui/dashboard_page.dart';
import 'package:swap_tech_test/ui/loginPage.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({Key? key}) : super(key: key);

  @override
  State<SplashScreeen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      checkLogin();
      // Do something
    });
    // TODO: implement initState
    super.initState();
  }

  checkLogin() async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey('token')){
      Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) =>  DashBoardPage()));
    }else {
      Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) =>  LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
