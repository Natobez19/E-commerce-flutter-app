import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nati/componets/cart-item.dart';
import 'package:nati/modeles/cart.dart';
import 'package:nati/pages/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child) => 
   Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
    child:
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),


        const SizedBox(height: 10,),

        Expanded(child: ListView.builder(
          itemCount: value.getUserCard().length,
          itemBuilder: (context , index) {
          Shoe indevidualShoe = value.getUserCard()[index];

          return CartItem(shoe: indevidualShoe);

        },),)
        
      ],

    ) ,
    
    ),
   
    );
    
  }
}