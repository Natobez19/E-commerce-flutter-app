import 'package:flutter/material.dart';
import 'package:nati/modeles/cart.dart';
import 'package:nati/pages/shoe.dart';
import 'package:provider/provider.dart';
class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key,required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false) .removeItemFromCart(widget.shoe);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),
      margin:const  EdgeInsets.only(bottom: 10),

   child:   ListTile(
      
      leading: Image.network(widget.shoe.imagepath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
      trailing: IconButton(icon: Icon(Icons.delete_outlined),onPressed: removeItemFromCart,
      ),
      
   ),
    );
    
  }
}