import 'package:flutter/material.dart';
class ScreenPay extends StatefulWidget {
  ScreenPay({Key? key}) : super(key: key);

  @override
  State<ScreenPay> createState() => _ScreenPayState();
}

class _ScreenPayState extends State<ScreenPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('itmnm'),
              const SizedBox(
                  height: 20,
                ),
              Icon(Icons.anchor,size: 100,),
              const SizedBox(
                  height: 20,
                ),
              Text('ct'),
              const SizedBox(
                  height: 20,
                ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                  hintText: 'loctn',
                ),
              ),
              const SizedBox(
                  height: 20,
                ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                  hintText: 'phno',
                ),
              ),
              const SizedBox(
                  height: 20,
                ),
              
              ElevatedButton(onPressed: () {
                showDialog(
            context: context,
            builder: (BuildContext context) {
              return SimpleDialog(
                title: Text('Mode Of Payment'),
                children: [
                  // Custom content here
                  ElevatedButton(onPressed: () {
                    meth1();
                  }, child: Text('Net Banking')),
                  ElevatedButton(onPressed: () {
                    meth1();
                  }, child: Text('UPI')),
                  ElevatedButton(onPressed: () {
                    meth1();
                  }, child: Text('Credit / Debit Card')),
                ],
              );
            },
          );
              }, child: Text('pay'))
            ]
          //         children: [
              
          //           TextButton(onPressed: () {
          //             showDialog(
          //   context: context,
          //   builder: (BuildContext context) {
          //     return SimpleDialog(
          //       title: Text('Simple Dialog'),
          //       children: [
          //         // Custom content here
          //       ],
          //     );
          //   },
          // );
          
          //           }, child: Text('a')),
          //           TextButton(child: Text('d'),onPressed: () {
          //             showDialog(
          //             context: context,
          //             builder: (BuildContext context) {
          //               return AlertDialog(
          //           title: Text('Alert'),
          //           content: Text('This is an alert message.'),
          //           actions: [
          //             TextButton(
          //               onPressed: () {
          //                 Navigator.pop(context); // Dismiss the dialog
          //               },
          //               child: Text('OK'),
          //             ),
          //           ],
          //               );
          //             },
          //           );
              
          //           },),
          //         ],
          ),
        ),
      ),
            );
            }
            meth1()
            {
                          showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                    title: Text('Payment Status'),
                    content: Text('Payment Done Successfully'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Dismiss the dialog
                        },
                        child: Text('OK'),
                      ),
                    ],
                        );
                      },
                    );
            }
            }