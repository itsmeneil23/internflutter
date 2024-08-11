import 'package:flutter/material.dart';
import 'package:clothy/colors.dart';
import 'package:clothy/screens/home.dart';
import 'package:clothy/screens/login.dart';
import 'package:clothy/screens/mypay.dart';
class MyCart{
  static bool _00=false;
  static void meth2(){
    if(MyHome.get_00()=='0'){
      
        _00=false;
      
    }
    else{
      
        _00=true;
      
    }
  }
}
class ScreenCart extends StatefulWidget {
  ScreenCart({Key? key}) : super(key: key);

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  int _selectedIndex = 1;
  int _prevIndex = 1;
  bool _00=MyCart._00;
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
  setting(){
    setState(() {
      _00=false;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    //   drawer: SafeArea( //sure
    //     child: Padding(
    //       padding: const EdgeInsets.all(15.0),
    //       child: Column(
    //         children: [
    //           Text('Settings'),
    // //           const SizedBox(
    // //             height: 20,
    // //           ),
    // //           TextButton(onPressed: () {
    // //             Navigator.of(context).push(
    // //   MaterialPageRoute(
    // //     builder: (ctx){
    // //       return ScreenCart();
    // //     }
    // //   )
    // // );
    // //           }, child: Text('Cart')),
    //           const SizedBox(
    //             height: 20,
    //           ),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: //Column(
          //   children: [
              Visibility(
                visible: MyCart._00 && _00,
                child: Row(
                  children: [
                    Text('cart'),
                    IconButton(onPressed: () {
                      MyHome.set_00('0');
                              MyCart.meth2();
                              setting();
                    }, icon: Icon(Icons.delete)),
                  ],
                )),
              
          //   ]
          //   )
        //   ListView.separated(
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
            )
            )
            );
            }
            }