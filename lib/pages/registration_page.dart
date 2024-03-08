import 'package:flutter/material.dart';

import '../utils/login_register_text_input.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //Visibility Icon
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create',
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 57, 161), fontSize: 25),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'An Account',
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 57, 161),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Text('Kindly create an account with us at TekNote'),

            const SizedBox(
              height: 20,
            ),

            //Username,Email,Password
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InputText(
                keyboardType: TextInputType.name,
                controller: _usernameController,
                labelText: 'Full Name',
                obscureText: false,
                suffixIcon: null,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InputText(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                labelText: 'E-mail',
                obscureText: false,
                suffixIcon: null,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InputText(
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                labelText: 'Password',
                obscureText: _obscureText,
                suffixIcon: IconButton(
                  icon: _obscureText
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      side: const BorderSide(),
                      backgroundColor: const Color.fromARGB(255, 27, 20, 68),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Create Account')),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text('Already have an account?'),

            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text('Sign in',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline))),
          ],
        ),
      ),
      ),
    );
  }
}
