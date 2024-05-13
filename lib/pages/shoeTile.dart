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
  void Function()? onTab;
   ShoeTile({super.key,required this.shoe,required this.onTab});

  @override
  Widget build(BuildContext context) {
    return  Container (
      
      
      margin: EdgeInsets.only(left: 25),
    
      width: 300,
      
      decoration: BoxDecoration(
       
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
       ),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),

            child: 
            
             Image.network(shoe.imagepath),

          ),
          //description
          Text(shoe.describtion,style: TextStyle(color: Colors.grey),),
           
            Padding(padding: EdgeInsets.only(left: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  const SizedBox(height: 5,),

                  Text(
                    '\$' + shoe.price,style: TextStyle(fontWeight: FontWeight.bold),),

                ],
              ),
              GestureDetector(
                onTap: onTab,
                child:Container (
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12)),),
              child:  Icon(Icons.add,color: const Color.fromARGB(255, 231, 230, 230),),
             ) ,
              )
            
            ],
           ),
            ),
         
        ],
       ),
    );
  }
}