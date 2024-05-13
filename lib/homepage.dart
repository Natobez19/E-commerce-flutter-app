

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:nati/pages/navbar.dart';
import 'package:nati/pages/cartpage.dart';
import 'package:nati/pages/shoppage.dart';
import 'package:nati/sign%20page/login.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int  _selectIndex = 0;
  void navigateButtomBar(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  final List<Widget> _pages = [
    const ShopPage(),

    const CartPage(),

  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Nav_buttom(
        onTabChange: (index) => navigateButtomBar(index)
        ,
         
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 54, 31, 31),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton( icon: const Icon(Icons.menu),
          
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
          
       
          // icon: Icon(Icons.menu,color: Colors.black,)),
      ),
      // drawer: Drawer(),
      // body: _pages[_selectIndex],
        ),
      ),
             drawer: Drawer(
              backgroundColor: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      
                      
                  DrawerHeader(child:
                   Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/2560px-Logo_NIKE.svg.png',width: 150,height: 30,color: Colors.white,)),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child:   Divider(
                  color: Colors.grey,
                ),
                     ),
                    const Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ListTile(
                        leading: Icon(Icons.home,color: Colors.white,),
                        title: Text('HOME',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       ),
                     ),
                      const Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ListTile(
                        leading: Icon(Icons.info,color: Colors.white,),
                        title: Text('About',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       ),
                     ),
                    ],
                  ),
                  
                     
                      Padding(
                       padding: EdgeInsets.only(left:25.0,bottom: 25),
                       
                       child: ListTile(
                        
                        
                        leading: Icon(Icons.logout_outlined,color: Colors.white,),
                        
                        title: Text('Log Out',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                       onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => LogIn()));
                       },
                       
                       ),
                       
                     ),
              
                ],
              ),
             ),
      body: _pages[_selectIndex],
      );

    
  } 
}