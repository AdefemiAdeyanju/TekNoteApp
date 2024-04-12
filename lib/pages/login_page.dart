import 'package:flutter/material.dart';
import 'package:teknote/pages/forgot_password.dart';
import 'package:teknote/pages/home_page.dart';
import 'package:teknote/pages/registration_page.dart';
import 'package:teknote/utils/login_register_text_input.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:teknote/firebase_options.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  //Visibility Icon
  bool _obscureText = true;

  //init function
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

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
      body: FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Welcome Back!',
                          style: TextStyle(
                            color: Color.fromARGB(255, 33, 57, 161),
                            fontSize: 24,
                          ),
                        ),

                        const Text(
                          'Enter Your Details',
                          style: TextStyle(
                            color: Color.fromARGB(255, 17, 36, 139),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        const Text('Enter Your Details Below'),

                        const SizedBox(
                          height: 25,
                        ),

                        //Email
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InputText(
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailController,
                            labelText: 'E-mail',
                            obscureText: false,
                            suffixIcon: null,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //Password
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
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

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: ElevatedButton(
                              onPressed: () async {
                                //final username = _usernameController.text;
                                final email = _emailController.text;
                                final password = _passwordController.text;
                                try {
                                  final userCredential = await FirebaseAuth
                                      .instance
                                      .signInWithEmailAndPassword(
                                    email: email,
                                    password: password,
                                  );
                                  print(userCredential);
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'invalid-credential') {
                                    print(
                                        "Invalid Credential, 'User Not Found'");
                                  }
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                                backgroundColor:
                                    const Color.fromARGB(255, 27, 20, 68),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: const BorderSide(),
                                ),
                              ),
                              child: const Text('Log in'),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: const BorderSide(),
                                  ),
                                ),
                                child: const Text('Create Account')),
                          ),
                        ),

                        const SizedBox(height: 25),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgotPassword(),
                                ),
                              );
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            default:
              return const Text('loading');
          }
        },
      ),
    );
  }
}
