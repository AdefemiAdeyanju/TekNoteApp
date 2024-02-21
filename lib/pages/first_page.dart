import 'package:flutter/material.dart';

import '../utils/buttons.dart';
import '../utils/more_buttons.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const SafeArea(
        child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text('Document Management',
                style: TextStyle(
                  color: Color.fromARGB(255, 43, 37, 138),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                ),
              ),
                
                Text('Tools to Manage, Edit, E-Sign, And More!',
                style: TextStyle(
                  color: Color.fromARGB(255, 33, 57, 161),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('By proceeding, you agree to our',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text('Privacy & Terms',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                  ),
                  ],
                ),

              SizedBox(height: 25),
              
              //Username TextField and Password
              Buttons(),

              SizedBox(height: 25),

              //Divider
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 0.5,
                            ),
                        ),
                        
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Or',
                          style: TextStyle(color: Colors.black)),
                        ),

                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 0.5,
                        ),
                    ),
                      ],
                    ),
                  ),

              SizedBox(height: 25,),

              // Apple, Facebook and Apple Login
              MoreButtons(),

              ],),
          ),
        ),
    );
  }
}
