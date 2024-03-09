import 'package:flutter/material.dart';
import 'package:teknote/utils/profile_page_card.dart';

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Share',
          style: TextStyle(
            color: Color.fromARGB(255, 3, 41, 73),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      ),
      backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      body: SafeArea(
        child: ListView(
          children: [
            const ProfileCard(
                text1: '',
                text2: 'Email',
                text3: 'ajaniben23456@gmail.com',
                icon: null),
            const ProfileCard(
                text1: '',
                text2: 'Role',
                text3: 'Can Sign',
                icon: Icons.view_headline),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Share',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 41, 73),
                    fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),

            
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(300, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 3, 41, 73),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 3, 41, 73),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Share',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(300, 50),
                        foregroundColor: const Color.fromARGB(255, 3, 41, 73),
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(
                          color: Color.fromARGB(255, 3, 41, 73),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Copy link',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'People that can access',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 41, 73),
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileCard(
              icon: Icons.menu,
              text1: '',
              text2: 'Ajaniben123456@gmail.com',
              text3: 'Owner',
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileCard(
              icon: Icons.menu,
              text1: '',
              text2: 'Ajaniben123456@gmail.com',
              text3: 'Can Sign',
            )
          ],
        ),
      ),
    );
  }
}
