import 'package:flutter/material.dart';
import 'package:teknote/pages/home_page.dart';
import 'package:teknote/pages/register_page.dart';

class LoginPage extends StatefulWidget {
const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final  _emailController = TextEditingController();
  final  _passwordController = TextEditingController();

  //Visibility Icon
  bool _obscureText = true;
  
  //Dispose function
  @override
  void dispose() {
    _emailController.text;
    _passwordController.text;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
              
                  children: [const SizedBox(height: 10),
                  const Text('Welcome Back!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 57, 161),
                    fontSize: 24,
                  ),),
              
                  const Text('Enter Your Details',
                  style: TextStyle(
                    color: Color.fromARGB(255, 17, 36, 139),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
              
                  const SizedBox(height: 10,),
              
                  const Text('Enter Your Details Below'),
        
                  const SizedBox(height: 25,),
        
                  Padding(
                    padding: const EdgeInsets.only(right : 20),
                    child: TextField(controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        contentPadding: const EdgeInsets.all(10),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )
                      ),
                    ),
                  ),
        
                  const SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextField(controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(contentPadding: const EdgeInsets.all(10),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: _obscureText ?
                        const Icon(Icons.visibility):const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))
                      
                    ),),
                  ),
        
                  const SizedBox(height: 30,),
        
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:
                        (context) => const HomePage()
                        ,));
                      },

                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: const Color.fromARGB(255, 27, 20, 68),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide()
                        )
                      ),
                      child: const Text('Log in')),
                    ),
                  ),
        
                  const SizedBox(height: 25,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right:20),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                        (context) => RegisterPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide()
                        ),                      
                      ),
                      child: const Text('Create Account')),
                    ),
                  ),
        
                  const SizedBox(height: 25),
                  Center(
                    child: TextButton(onPressed: () {},
                      child: const Text('Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),),
                    ),
                  )
                ],
                ),
              ),
            ),
          ),
      ),
      
    );
  }
}