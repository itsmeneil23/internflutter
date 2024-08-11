import 'package:flutter/material.dart';
import 'package:clothy/colors.dart';
class ScreenBuy extends StatefulWidget {
  ScreenBuy({Key? key}) : super(key: key);

  @override
  State<ScreenBuy> createState() => _ScreenBuyState();
}

class _ScreenBuyState extends State<ScreenBuy> {
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
              
              ElevatedButton(
                style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),
                onPressed: () {
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
// import 'package:flutter/material.dart';
// class ScreenBuy extends StatefulWidget {
//   ScreenBuy({Key? key}) : super(key: key);

//   @override
//   State<ScreenBuy> createState() => _ScreenBuyState();
// }

// class _ScreenBuyState extends State<ScreenBuy> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: //Column(
//             // children: [
//             //   Text('pay'),
//             // ]
//             // )
//             ListView.separated(
//           itemBuilder: (ctx,index){
//             return ListTile(
//               title: Text('PERSON $index'),
//               subtitle: Text('Message $index'),
//               leading: CircleAvatar(
//                 radius: 30,
//                 backgroundColor: Colors.green,
//                 backgroundImage: AssetImage(
//                   'assets/images/logo.jpg'
//                 ),
//               ),
//               trailing: Text('1$index:00 PM'),
//             );
//           },
//           separatorBuilder: (ctx,index){
//             return Divider();
//           },
//           itemCount: 3,
//         ),
//             )
//             )
//             );
//             }
//             }