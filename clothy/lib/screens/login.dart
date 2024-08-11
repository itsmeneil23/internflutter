import 'package:flutter/material.dart';
import 'package:clothy/screens/home.dart';
//import 'package:flutter/widgets.dart';
import 'package:clothy/colors.dart';
import 'package:clothy/screens/signup.dart';
class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isWrongMatch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login to your Clothy Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      print('acc');
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenSignup()));
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return ScreenSignup();
                          },
                        ),
                      );
                    },
                    child: Text('Create an account',style: TextStyle(
                      color: MyColors.c1,fontWeight: FontWeight.bold),)
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
                  hintText: 'Username',
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
                  hintText: 'Password',
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
                    child: Text('Credentials incorrect',style: TextStyle(color: Colors.red),)),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),
                    onPressed: () {
                      checkLogin();
                      if (!_isWrongMatch) {
                        print('login');
                        Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenHome();
        }
      )
    );
                      }
                    },
                    icon: const Icon(Icons.check),
                    label: const Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin()
  {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if((_username == 'name1' && _password == 'pass1') || (_username == 'name2' && _password == 'pass2') || (_username == 'name3' && _password == 'pass3'))
    {
      //goto home

      setState(() {
        _isWrongMatch = false;//login correct
      });
    }
    else
    {
      //snackbar
      //alert dialog
      //show text
      setState(() {
        _isWrongMatch = true;
      });
    }
  }
}