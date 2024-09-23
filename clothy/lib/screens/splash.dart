import 'package:clothy/colors.dart';
import 'package:flutter/material.dart';
import 'package:clothy/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    
    gotoLogin();
    // TODO: implement initState

    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF394048),
      body: Center(
        child: Image.asset(
          'assets/images/logo.jpg',
          scale: 5,
          //height:double.infinity,
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Future<void> gotoLogin() async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenLogin();
        }
      )
    );
  }
}