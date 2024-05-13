import 'package:flutter/material.dart';
import 'package:nati/homepage.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        
        children: [
         Padding(
           padding: const EdgeInsets.all(30.0),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/2560px-Logo_NIKE.svg.png',width: 320,height: 200,),
         

         ),
         const SizedBox(height: 40),
         Text("just do it",style:
          TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
         )
         ),
         
           
         const SizedBox(height: 40),

         Text("brand new senekers and shoes",
         style:
          TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.grey,
         ),
         textAlign: TextAlign.center,
         
         ),
        const SizedBox(height: 48.0,),
        GestureDetector(
            onTap: () => Navigator.push(
              context,MaterialPageRoute(builder: (context) =>HomePage()),
              // to navigate another page 

            ),
            child: Container(
              width: 280,
           height: 60,
           decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(15),
            


          ),
          padding: EdgeInsets.all(10),
          child: Center(
          
          child:const Text("shop now",style: TextStyle(color: Colors.white),)
          ),
       

            ),
        ),

        const SizedBox(height: 48.0,),
        
         
        ],
      ),
    );
  }
}