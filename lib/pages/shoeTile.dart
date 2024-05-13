// import 'package:flutter/material.dart';

// import 'shoe.dart';

// // import 'package:nati/modeles/shoe.dart';

// class ShoePage extends StatelessWidget { 

//   Shoe shoe ;
  
//    ShoePage({super.key ,required this.shoe});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 25),
//       width: 200,
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 87, 72, 72),
//         borderRadius: BorderRadius.circular(12),

//       ),
//       child: Column(
//         children: [
//           Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/2560px-Logo_NIKE.svg.png'),
//         ],

//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nati/pages/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
   ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return  Container (
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
       
        color: Color.fromARGB(255, 87, 72, 72),
        borderRadius: BorderRadius.circular(12),
       ),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),

            child: 
            
             Image.network('https://cdn-images.farfetch-contents.com/13/15/76/82/13157682_21516339_1000.jpg'),

          ),
          //description
          Text(shoe.describtion,style: TextStyle(color: Colors.grey),),
           

           Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  const SizedBox(height: 5,),

                  Text(shoe.price,style: TextStyle(fontWeight: FontWeight.bold),),

                ],
              ),
            Container (
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12)),),
              child:  Icon(Icons.add,color: const Color.fromARGB(255, 231, 230, 230),),
             )
            ],
           )
         
        ],
       ),
    );
  }
}