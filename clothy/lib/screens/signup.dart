import 'package:flutter/material.dart';
import 'dart:math';
//import scratch card->dashboard->each page in nav(incl. cart and delivery)
//import 'package:flutter_application_sample/screens/scratch.dart';
import 'package:clothy/screens/login.dart';
import 'package:clothy/screens/home.dart';
import 'package:clothy/colors.dart';
class ScreenSignup extends StatefulWidget {
  ScreenSignup({Key? key}) : super(key: key);

  @override
  State<ScreenSignup> createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rpasswordController = TextEditingController();
  bool _isWrongMatch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawerEnableOpenDragGesture: false,
      // drawer: 
      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 250,horizontal: 50),
      //   child: Scaffold(
      //   body: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.all(15.0),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Icon(Icons.image,size: 225,),
      //             ],
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               TextButton(onPressed: () {
      //                 print('scratch');
      //                 Navigator.of(context).push(
      //                       MaterialPageRoute(
      //                         builder: (ctx){
      //                           return ScreenHome();
      //                         }
      //                       )
      //                     );
      //               },
      //               child: Text('Proceed'),
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Create a Clothy Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account?'),
                  TextButton(
                    onPressed: () {
                      print('acc');
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenSignup()));
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return ScreenLogin();
                          },
                        ),
                      );
                    },
                    child: Text('Login to your account',style: TextStyle(color: MyColors.c1,fontWeight: FontWeight.bold),)
                    ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  hintText: 'Email id',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  hintText: 'Enter password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _rpasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  hintText: 'Confirm password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _isWrongMatch,
                    child: Text('Creation failed',style: TextStyle(color: Colors.red),)),
  //                 Builder(
  //   builder: (scaffoldContext) => ElevatedButton(onPressed: () {
  //                   checkLogin();
  //                   if(!_isWrongMatch)
  //                   {Scaffold.of(scaffoldContext).openDrawer();}
  //                 },
  //                 child: Text('Create'),//icon?
  //                 ),
  // ),
  ElevatedButton(
    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),
    onPressed: () {
                    checkLogin();
                    if(!_isWrongMatch)
                    {meth1();}
                  },
                  child: Text('Create'),//icon?
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin() {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    final _rpassword = _rpasswordController.text;
    if((_username!='') && (_password!='') && (_rpassword!='') && (_password==_rpassword))
    {
      setState(() {
        _isWrongMatch = false;//login correct
      });
    }
    else
    {
      setState(() {
        _isWrongMatch = true;
      });
    }
  }
  meth1()
            {
                          showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                //title: Text('Mode Of Payment'),
                children: [
                  // Custom content here
                  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon([
    Icons.home,
    Icons.favorite,
    Icons.search,
  ][Random().nextInt(3)]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: () {
                      print('scratch');
                      Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx){
                                return ScreenHome();
                              }
                            )
                          );
                    },
                    child: Text('Proceed'),
                    ),
                  ],
                )
              ],
            ),
                ],
              );
                      },
                    );
            }
}