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
      body: Center(
        child: Image.asset(
          'assets/images/logo.jpg',
          height: 200,
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
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenLogin();
        }
      )
    );
  }
}