import 'package:flutter/material.dart';

import '../utils/input_text.dart';

class RegisterPage extends StatelessWidget {
  
  RegisterPage({super.key});

  final _usernameController =TextEditingController();
  final  _emailController =TextEditingController();
  final  _passwordController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [const SizedBox(height: 10,),
                const Row(mainAxisAlignment: MainAxisAlignment.center,
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
                  const Text('Kindly create an account with us at TekNote'),
            
                  const SizedBox(height: 20,),
            
                  
            
                  //Username,Email,Password
                  InputText(
                    controller: _usernameController,
                    labelText: 'Full Name',
                    obscureText: false,),

                  InputText(
                    controller: _emailController,
                    labelText: 'E-mail',
                    obscureText: false,),

                  InputText(
                    controller: _passwordController,
                    labelText: 'Password',
                    obscureText: true,)
            
            
              ],
              ),
          )
          ),
      );
  }
}