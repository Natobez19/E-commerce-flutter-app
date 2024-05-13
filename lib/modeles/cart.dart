import 'package:flutter/material.dart';
import 'package:nati/pages/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> ShoeShop = [

 Shoe(name: 'air jordan 1 black', 
 price: '150', 
 imagepath:'https://cdn-images.farfetch-contents.com/14/08/89/05/14088905_18503305_2048.jpg',
  describtion: "all star convece it's cool show"),



  Shoe(name: 'Air jordan 4 ',
   price: "400", 
   imagepath: 'https://cdn-images.farfetch-contents.com/18/37/67/56/18376756_39863773_2048.jpg',
   describtion: "nice shoe"),
   Shoe(name:
    'air jordan 1 ',
     price: '230', 
     imagepath:'https://cdn-images.farfetch-contents.com/13/15/76/82/13157682_21516339_1000.jpg',
    
     describtion: 'air jordan 1 blue its cool shoe'),
  ];

  List<Shoe> UserCart =[];



  List<Shoe> getShoeList(){
    return ShoeShop;
  }

  List<Shoe> getUserCard(){
    return UserCart;

  }
  void addItemToCart(Shoe shoe){
    UserCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    UserCart.remove(shoe);
    notifyListeners();
  }
}