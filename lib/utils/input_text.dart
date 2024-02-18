import 'package:flutter/material.dart';
import 'package:teknote/pages/login_page.dart';

class InputText extends StatefulWidget {
 const InputText({
  super.key,
  required this.controller,
  required this.labelText,
  required this.obscureText});

  @override
  State<InputText> createState() => _InputTextState();
  final dynamic controller;
  final String labelText;
  final bool obscureText;
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
            padding: const EdgeInsets.fromLTRB(20,0,20,0),
            child: Column(
              children: [

                //Full Name
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),
                    fillColor: Colors.white,
                    labelText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)
                      ),
                    borderSide: BorderSide(color: Colors.black)),
                  ),),
             
             //E-mail
              const SizedBox(height: 20,),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),
                  fillColor:Colors.white,
                  labelText: 'E-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)
                    ),
                    borderSide: BorderSide(color: Colors.black))
                  )),
              
              //Password
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),
                  fillColor: Colors.white,
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)
                    ),
                    borderSide: BorderSide(color: Colors.black)
                  )
                ),
              ),
              
              const SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    side: const BorderSide(),
                    backgroundColor: const Color.fromARGB(255, 27, 20, 68),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  
                  child: const Text('Create Account')
                  ),
            
            
                  const SizedBox(height: 20,),
            
                  const Text('Already have an account?'),
            
                  TextButton(onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
                  }, 
                  child:const Text('Sign in', 
                  style: TextStyle(color: Colors.blue,
                  decoration: TextDecoration.underline))),
                  
                  
              ],
            ),
          
             
      ),
    );
  }
}