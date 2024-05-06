

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Nav_buttom extends StatelessWidget {
  void Function(int)? onTabChange;
   
  Nav_buttom({super.key,required this.onTabChange});

 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
      
        color: Colors.grey,
        activeColor: Color.fromARGB(255, 34, 25, 25),
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: const Color.fromARGB(255, 136, 146, 151),
        mainAxisAlignment: MainAxisAlignment.center,
       onTabChange: (value) => onTabChange!(value),
      // onTabChange: (value) => {
      //   onTabChange!(value)
      // },
       
        tabs: const [
            
          GButton(
            
            
            icon: Icons.home,
            text: 'shop',
            ),
             GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'cart',
            ),
          
        ],
         )
    );
  }
}