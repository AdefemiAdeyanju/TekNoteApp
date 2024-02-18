import 'package:flutter/material.dart';
import 'package:teknote/pages/login_page.dart';
import 'package:teknote/pages/register_page.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      
          //Create Account Button
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: SizedBox(width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => RegisterPage())));
                  },
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
            ),
          ),
      
              const SizedBox(height: 25),
      
              //Login Button
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: SizedBox(width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder:(context) => const LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    side: const BorderSide(),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                
                child: const Text('Log in'),
                ),
              ),
            ),
        ],

        
    );
  }
}