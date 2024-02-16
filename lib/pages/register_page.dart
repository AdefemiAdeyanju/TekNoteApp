import 'package:flutter/material.dart';

import '../utils/input_text.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text('Create',
                        style:TextStyle(
                        color: Color.fromARGB(255, 33, 57, 161),
                        fontSize:25),
                        ),
                      
              
                      SizedBox(width: 4,),
                  
                      Text('An Account',
                      style: TextStyle(
                        color: Color.fromARGB(255, 33, 57, 161),
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  Text('Kindly create an account with us at TekNote'),
            
                  SizedBox(height: 20,),
            
                  
            
                  //Username,Email,Password
                  InputText(),
            
            
              ],
              ),
          )
          ),
      );
  }
}