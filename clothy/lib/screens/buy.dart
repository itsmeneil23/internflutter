import 'package:flutter/material.dart';
import 'package:clothy/colors.dart';
class ScreenBuy extends StatefulWidget {
  ScreenBuy({Key? key}) : super(key: key);

  @override
  State<ScreenBuy> createState() => _ScreenBuyState();
}

class _ScreenBuyState extends State<ScreenBuy> {
  final _locationController=TextEditingController();
  final _phoneController=TextEditingController();
  bool _error=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [
                    Text('itmnm'),
              const SizedBox(
                  height: 20,
                ),
              Icon(Icons.image_sharp,size: 100,),
              const SizedBox(
                  height: 20,
                ),
              Text('ct'),
                  ],
                ),
              ),
              const SizedBox(
                  height: 20,
                ),
              TextFormField(
                controller: _locationController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                  hintText: 'Location',
                ),
              ),
              const SizedBox(
                  height: 20,
                ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                  hintText: 'Phone No +91',
                ),
              ),
              const SizedBox(
                  height: 20,
                ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _error,
                    child: Text('Invalid entry',style: TextStyle(color: Colors.red),)),
                  ElevatedButton(
                    style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(MyColors.c1)),
                    onPressed: () {
                      validator();
                    if(!_error){
                      showDialog(
                              context: context,
                              builder: (BuildContext context) {
                  return SimpleDialog(
                    title: Text('Mode Of Payment'),
                    children: [
                      // Custom content here
                      ElevatedButton(
                        onPressed: () {
                        meth1();
                      }, child: Text('Net Banking',style: TextStyle(color: MyColors.c1),)),
                      ElevatedButton(onPressed: () {
                        meth1();
                      }, child: Text('UPI',style: TextStyle(color: MyColors.c1),)),
                      ElevatedButton(onPressed: () {
                        meth1();
                      }, child: Text('Credit / Debit Card',style: TextStyle(color: MyColors.c1),)),
                    ],
                  );
                              },
                            );
                    }
                  }, child: Text('Pay')),
                ],
              )
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
                        child: Text('OK',style: TextStyle(color: MyColors.c1),),
                      ),
                    ],
                        );
                      },
                    );
            }
            void validator()
            {
              if(_locationController.text=='' || _phoneController.text=='')
              {
                setState(() {
                  _error=true;
                });
              }
              else{
                setState(() {
                  _error=false;
                });
              }
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