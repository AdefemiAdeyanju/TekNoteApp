import 'package:flutter/material.dart';

class MoreButtons extends StatelessWidget {
  const MoreButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Column(
        children :[
      
        //Continue With Google
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 0,
                side: const BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
            ), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/google.jpg',
            height: 20),
            const SizedBox(width: 10,),
            const Text('Continue with Google'),
          ],
          ),
            ),
     
      
        const SizedBox(height: 20),
      
        //Continue with Facebook
        ElevatedButton(onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          side: const BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(10) )
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Image.asset('lib/images/facebook.jpg',
            height: 20,),
            const SizedBox(width: 10,),
            const Text('Continue with Facebook')
        ],
        ),

        ),
      
        const SizedBox(height: 25,),
      
        //Continue with Apple
        ElevatedButton(onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          side: const BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(10) )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[Image.asset('lib/images/apple.jpg',
          height: 20,),
          const SizedBox(width: 10,),
          const Text('Continue with Apple')
        ],),
        ),
        ], 
      ),
    );
  }
}