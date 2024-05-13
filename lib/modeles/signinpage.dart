import 'package:flutter/material.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Sign up' ,style: TextStyle(color: Colors.black),),
        
      ),
      body: Form(
        child:
         Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 10.0,),

          const Text('Sign up here',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,letterSpacing: 1.5),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(50.23)),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "enter your first name",
                hintText: "natobez",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0)
                ),
              ),
            ),
          )
        ],


      ),),
        
      );
    
  }
}