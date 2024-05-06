import 'package:flutter/material.dart';

import 'shoe.dart';

// import 'package:nati/modeles/shoe.dart';

class ShoePage extends StatelessWidget { 

  Shoe shoe ;
  
   ShoePage({super.key ,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 87, 72, 72),
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/2560px-Logo_NIKE.svg.png'),
        ],

      ),
    );
  }
}