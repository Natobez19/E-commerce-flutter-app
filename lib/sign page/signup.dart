
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:nati/pages/shoppage.dart';
import 'package:nati/sign%20page/login.dart';



// void main() {
//   runApp(const SignUP());
// }

class SignUP extends StatefulWidget {
  const SignUP({super.key });

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {

  final signinkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return 
      // debugShowCheckedModeBanner: false,
       Scaffold(
        // backgroundColor: Colors.grey,

        
        appBar: AppBar(
          elevation: 0,
        // backgroundColor: Colors.grey,


        ),
          
        body: Form (
        
          key: signinkey,
          
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
           
            children:  <Widget>[
         
          
                const SizedBox(height: 20,),
              
                const Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30 ,color: Colors.black,letterSpacing: 1.5),),
              

                const SizedBox(height: 5,),

                //  SizedBox(height: 10,),
                 
              Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
             
               validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "plase enter name";
                 }
                 return null;
                },
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.person_3),
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.20),
                  ),
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                 
                  isCollapsed: false,
                  isDense: true,

                      enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black)
                    
                  
                   ),
                   hintText: 'enter your full name',
                   labelText:'nathan' 
                ),
              ),
             ),
            SizedBox(height: 2,),


              Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                
               validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "plase enter email";
                 }
                 return null;
                },
                 keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.mark_email_read_outlined),
                

                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.20),
                  ),
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                 
                  isCollapsed: false,
                  isDense: true,

                      enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black)
                    
                  
                   ),
                   hintText: 'enter your email',
                   labelText:'nath****@gmail.com' 
                ),
              ),
             ),
            SizedBox(height: 5,),

              Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "plase enter password";
                  }else if(value.length < 6) {
                    return "password must be at least 6 character";
                  }
                  return null;
                },
                 keyboardType: TextInputType.emailAddress,
                controller: _passwordcontroller,
                decoration:InputDecoration(
                  labelText:'********' ,
                   prefixIcon: Icon(Icons.password_sharp),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.20),
                  ),
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                 
                  isCollapsed: false,
                  isDense: true,

                      enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black)
                    
                  
                   ),
                  //  hintText: 'enter your password',
                   
                ),
              ),
             ),
            Container(
              width: 250,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30)),

            child:  ElevatedButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ()));
             
                 if (signinkey.currentState!.validate()) {
                    debugPrint("Email: ${_emailController.text}");
                     debugPrint("Password: ${_passwordcontroller.text}");
                 };
            print("button pressed");
            

            }, 
            
            
           
            child:  Text('Sbmmit',style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                 backgroundColor:  MaterialStateProperty.all<Color>(Colors.black),
                 
                //  primary:Colors.black,
                //  onPrimary
                ),
            
             ),
             

            ),
           const SizedBox(height: 5,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("you already have an account ?"),
                  
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));

                  }, child: Text("Login",style: TextStyle(color: Colors.blue),)),
                ],
              ),
            )
            ],
       
            
            )
            
          ),

          // child:

        );
      
    
  }
}