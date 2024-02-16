import 'package:flutter/material.dart';
import 'package:teknote/pages/login_page.dart';

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  final TextEditingController _usernameController =TextEditingController();
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController  _passwordController =TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
            padding: const EdgeInsets.fromLTRB(20,0,20,0),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  controller: _usernameController,
                  decoration: const InputDecoration(contentPadding: EdgeInsets.all(10.0),
                    fillColor: Colors.white,
                    labelText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)
                      ),
                    borderSide: BorderSide(color: Colors.black)),
                  ),),
             
             //E-mail
              const SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                controller: _emailController,
                decoration: const InputDecoration(contentPadding: EdgeInsets.all(10.0),
                  fillColor:Colors.white,
                  labelText: 'E-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)
                    ),
                    borderSide: BorderSide(color: Colors.black))
                  )),
              //Password
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(contentPadding: EdgeInsets.all(10.0),
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