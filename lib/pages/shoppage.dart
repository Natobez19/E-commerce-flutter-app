import 'package:flutter/material.dart';
import 'package:nati/pages/shoe.dart';
import 'package:nati/pages/shoeTile.dart';



// import 'package:nati/componets/shoeTile.dart';
 
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding : EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.grey,borderRadius: BorderRadius.circular(15),
            
          ),
          child: const Row(
            mainAxisAlignment : MainAxisAlignment.spaceBetween,
            children:  [
              
              Text('search bar'),
              Icon(Icons.search_rounded,color: Colors.black,),
            ],
           
          ),

        ),
       const Padding(padding:EdgeInsets.symmetric(vertical: 20),
        child: Text('New arrival shoes are here',
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
        ),


         ),
        const Padding(padding:  EdgeInsets.symmetric(horizontal: 25.0),
         child:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  [
            Text("Hot pics 🔥",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20
            ),
            ),
             Text("See all ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
          ],
          
         ),
         
         ),
        const SizedBox(height: 10,),
        Expanded(
          
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context , index) {
          Shoe shoe = Shoe(name: " Air jordan 1", price: "300", imagepath: "https://cdn-images.farfetch-contents.com/13/15/76/82/13157682_21516339_1000.jpg", , describtion: " this cool shoe");
               return ShoeTile(
                shoe: shoe,
               );
        },
        ),
        ),
        
        
      ],
    );
  }
}