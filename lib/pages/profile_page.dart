import 'package:flutter/material.dart';
import 'package:teknote/utils/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(223, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(223, 255, 255, 255),
        title: const Text(
          'Profile',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Profile'),
          ),
          ProfileCard(
              text1: 'Profile',
              text2: 'Personal Name',
              text3: 'Ajani Ben D.',
              icon: null),
          ProfileCard(
              text1: '',
              text2: 'Username',
              text3: '@username',
              icon: null),
          ProfileCard(
              text1: '',
              text2: 'Business Name',
              text3: 'abc@gamil.com',
              icon: null),
          ProfileCard(
              text1: '',
              text2: 'Set Signature',
              text3: 'abc@gamil.com',
              icon: Icons.list),
          
          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Company Profile'),
          ),

          ProfileCard(
              text1: '',
              text2: 'Business E-mail',
              text3: 'abc@gamil.com',
              icon: null),

        ],
      ),
    );
  }
}
