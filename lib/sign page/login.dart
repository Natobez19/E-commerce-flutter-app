import 'package:flutter/material.dart';
import 'package:nati/intor.dart';
import 'package:nati/sign%20page/signup.dart';

 

class LogIn extends StatefulWidget {
  
 
  const LogIn({super.key});
  

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

 final GlobalKey<FormState>login = GlobalKey();
 final TextEditingController _emailController =TextEditingController();
 final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

        appBar: AppBar(
        
        
      ),
      body:  Form(
        key: login,
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          // Padding(padding: EdgeInsets.symmetric(vertical: 50
          // )),
          Text('Welcome ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
       
       
       
        SizedBox(height: 10,),
           
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
          const SizedBox(height: 0,),
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
                  
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.20),
                  ),
                  
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                 
                  isCollapsed: false,
                  isDense: true,

                      enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black)
                    
                  
                   ),
                   hintText: 'enter your password',
                   labelText:'**********' ,
                   
                ),
                obscureText: true,
              ),
             ),
             const SizedBox(height: 10,),
             Container(
              width: 280,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30)),

            child:  ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage()));

             
                 if (login.currentState!.validate()) {
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
                )
            
                ),
            
             ),
             SizedBox(height: 40,),

             Divider(
                thickness: 1,
             ),
             Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text("you don't have an account?"),
                  // SizedBox(width: 10,),

                  // GestureDetector(onTap: () =>Navigator.push(context ,MaterialPageRoute(builder: (context)=> SignUP()))),
                  // TextButton("SingUp",style:TextStyle(color: Colors.blue,))
                  TextButton(onPressed: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUP()));
                  }, child: Text('Sign Up',style: TextStyle(color: Colors.blue),))
                ],
              ),
             )
             
        
        ],




      ),

      )


      );
     
    
  }
}