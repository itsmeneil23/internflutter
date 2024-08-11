import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:flutter_application_sample/screens/profile.dart';
import 'package:clothy/screens/login.dart';
import 'package:clothy/screens/mypay.dart';
import 'package:clothy/screens/buy.dart';

import 'package:clothy/screens/cart.dart';
import 'package:clothy/colors.dart';
class MyHome{
  static String _00 = '0';
  static get_00(){
    return _00;
  }
  static set_00(String x){
    _00 = x;
  }
}
class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _selectedIndex = 0;
  int _prevIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _prevIndex = _selectedIndex;
      _selectedIndex = index;

    });
    if(_prevIndex!=_selectedIndex) {
      if(_selectedIndex==0){
        Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenHome();
        }
      )
    );
      }
      else{
        Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenCart();
        }
      )
    );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: MyColors.c2,
      bottomNavigationBar: BottomNavigationBar( //add
      // currentIndex: 1,
      currentIndex: _selectedIndex,
    unselectedItemColor: MyColors.c2,
    //backgroundColor: MyColors.c1,
    selectedItemColor: MyColors.c3,
    onTap: _onItemTapped,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Cart',
      ),
      
    ],
  ),
    //   drawer: SafeArea( //sure
    //     child: Padding(
    //       padding: const EdgeInsets.all(15.0),
    //       child: Column(
    //         children: [
    //           Text('Settings'),
    //           const SizedBox(
    //             height: 20,
    //           ),
    // //           TextButton(onPressed: () {
    // //             Navigator.of(context).push(
    // //   MaterialPageRoute(
    // //     builder: (ctx){
    // //       return ScreenCart();
    // //     }
    // //   )
    // // );
    // //           }, child: Text('Cart')),
    // //           const SizedBox(
    // //             height: 20,
    // //           ),
    //           TextButton(onPressed: () {
    //             Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (ctx){
    //       return ScreenPay();
    //     }
    //   )
    // );
    //           }, child: Text('My Payments')),
    //           const SizedBox(
    //             height: 20,
    //           ),
    //           ElevatedButton(onPressed: () {
    //             Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (ctx){
    //       return ScreenLogin();
    //     }
    //   )
    // );
    //           }, child: Text('Logout'))
    //         ],
    //       ),
    //     ),
    //   ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                    title: Text('Confirming Logout'),
                    content: Text('Are you sure you want to logout?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenLogin();
        }
      )
    );
                          //Navigator.pop(context); // Dismiss the dialog
                        },
                        child: Text('Yes'),
                      ),
                    ],
                        );
                      },
                    );
          }, icon: Icon(Icons.logout)),
          // Icon(Icons.abc),
          // Icon(Icons.ac_unit),
          const SizedBox(
                width: 20,
              ),
        ],
        leading: Icon(Icons.account_circle),
        backgroundColor: MyColors.c3,
        foregroundColor: Colors.white,
        title: Text('Clothy'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('usr'),
            Column(
              children: [
                Text('cat1'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(
                              style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),
                              onPressed: () {
                              Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenBuy();
        }
      )
    );
                            }, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),onPressed: () {
                              MyHome.set_00('1');
                              MyCart.meth2();
                              Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx){
          return ScreenCart();
        }
      )
    );
                            }, child: Text('to cart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            Column(
              children: [
                Text('cat2'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Text('cat1'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Text('cat1'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),//ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),// ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),// ElevatedButton(onPressed: () {}, child: Text('tocart'),),
                          ],),
                        ],),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(

                        )),
                        child: Column(children: [
                          Icon(Icons.account_box,size: 200,),
                          Text('itmnm'),
                          Row(
                            children: [
                            ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(MyColors.c1)),onPressed: () {}, child: Text('buy'),),
                            const SizedBox(
                width: 20,
              ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {}, child: Text('to cart'),),
                          ],),
                        ],),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SingleChildScrollView(
      //         child: Column(children: [
      //           Text('data'),
      //           Text('data'),
      //           Icon(Icons.account_box,size: 80,),
      //           Text('data'),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //           Icon(Icons.account_box,size: 80,),
      //         ],),
      //       ),
      //       SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Row(
      //           //mainAxisSize: MainAxisSize.max,
      //           children: [
      //           Icon(Icons.account_box,size: 80,),
      //           Text('data'),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         Icon(Icons.account_box,size: 80,),
      //         ],),
      //       ),
      //     ],
      //   ),
      // ),
      // SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.all(15.0),
      //     child: ListView(
      //       //scrollDirection: Axis.horizontal,
      //     children: List.generate(
      //       100,
      //       (index) {
      //         return Column(
      //           children: [
      //             //Icon(Icons.account_box,size: 100,),
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Column(
      //                 children: [
      //                   Text('Item $index'),
      //                   Text('cat $index'),

      //                   Image.asset('assets/images/logo.jpg'),
      //                   Text('price $index'),
      //                   Text('noofitems $index'),
      //                 ],
      //               ),
      //             ),
      //             //Text('Text $index'),
      //             // Divider(
      //             //   height: 5,
      //             //   thickness: 5,
      //             //   color: Colors.red,
      //             // ),
      //           ],
      //         );
      //       }
      //     ),
      //   ),
         
          //ListView.separated(
        //   itemBuilder: (ctx,index){
        //     return ListTile(
        //       title: Text('PERSON $index'),
        //       subtitle: Text('Message $index'),
        //       leading: CircleAvatar(
        //         radius: 30,
        //         backgroundColor: Colors.green,
        //         backgroundImage: AssetImage(
        //           'assets/images/logo.jpg'
        //         ),
        //       ),
        //       trailing: Text('1$index:00 PM'),
        //     );
        //   },
        //   separatorBuilder: (ctx,index){
        //     return Divider();
        //   },
        //   itemCount: 3,
        // ),
    //       child: Column(
    //         // mainAxisAlignment: MainAxisAlignment.center,
    //         // crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Row(
    //             children: [
    //               IconButton(onPressed: () {
    //                 Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (ctx){
    //       return ScreenLogin();
    //     }
    //   )
    // );
    //               }, icon: Icon(Icons.account_circle)),
    //             ],
    //           ),
    //           Text('Home->Bottom Nav,Cardsofitems,Profile Icon;Profile Icon->settings,logout,mypayments,cart'),
    //         ],
    //       ),
    
      //   ),
      // ),
    );
  }
}