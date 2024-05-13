import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nati/modeles/cart.dart';
import 'package:nati/pages/shoe.dart';
import 'package:nati/pages/shoeTile.dart';
import 'package:provider/provider.dart';



// import 'package:nati/componets/shoeTile.dart';
 
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    
  showDialog(
    context: context,
    builder:(context) => AlertDialog(
      title: Text("Add to cart sucessfull"
      ),
      content: Text('check your cart'),
    )
    );

  }

  @override


  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child) => Column(
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
              
              Text('Search bar'),
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
        const SizedBox(height: 30,),
        Expanded(
          
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context , index) {

          Shoe shoe = value.getShoeList()[index];
               return ShoeTile(
                  shoe: shoe,
                    // shoe: shoe,
                  onTab: () => addShoeToCart(shoe),
                  );
               
        },
        ),
        ),
        const Padding(
          padding: 
          EdgeInsets.only(top: 25.0,left: 28,right: 28),
          child: Divider( color: Colors.white,)
          ),
           
        
      ],
    ),
    );
  }
}