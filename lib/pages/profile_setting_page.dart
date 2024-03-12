import 'package:flutter/material.dart';
import 'package:teknote/utils/profile_page_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),
        title: const Text(
          'Profile',
        ),
        centerTitle: true
      ),
      body: ListView(
        children: const [SizedBox(height: 10 ,),
          Center(
            child: Row(
              children: [CircleAvatar(radius: 50,
              foregroundImage:AssetImage('lib/images/apple.jpg',),
              backgroundColor: Colors.transparent,
               ),
              SizedBox(width: 10,),
                Column(crossAxisAlignment:CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children:[
                      Text('Ajani Ben D.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                    
                        Text('@username',
                        style: TextStyle(
                        fontSize: 9,
                          ),),]),
              ],
            ),
          ),
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
            padding: EdgeInsets.only(left: 15),
            child: Text('Company Profile'),
          ),

          ProfileCard(
              text1: '',
              text2: 'Business E-mail',
              text3: 'abc@gamil.com',
              icon: null),
          ProfileCard(
              text1: '',
              text2: 'Company Address(Physical/Online)',
              text3: 'www.speakafica.io',
              icon: null),
          ProfileCard(
              text1: '',
              text2: 'Business Industry',
              text3: 'IT services',
              icon: Icons.list),
          ProfileCard(
              text1: '',
              text2: 'Location',
              text3: 'Lagos, Nigeria',
              icon: Icons.list),
          ProfileCard(
              text1: '',
              text2: 'Number of Employees',
              text3: '1-6',
              icon: Icons.list),


          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Others'),
          ),

          ProfileCard(
              text1: '',
              text2: 'Password',
              text3: '',
              icon: null),
          
          ProfileCard(
              text1: '',
              text2: 'Signature',
              text3: '',
              icon: null),
          ProfileCard(
              text1: '',
              text2: 'Log out',
              text3: '',
              icon: null),
          ProfileCard(
              text1: '',
              text2: 'Language',
              text3: 'English',
              icon: Icons.list),
        ],
      ),
    );
  }
}
