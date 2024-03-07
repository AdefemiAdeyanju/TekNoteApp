import 'package:flutter/material.dart';
import 'package:teknote/pages/profile_page.dart';
import 'package:teknote/utils/home_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(223, 255, 255, 255),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ));
                },
                icon: const CircleAvatar(
                  backgroundImage: AssetImage('lib/images/apple.jpg'),
                ));
          },
        ),
        // Contact Support Icon
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.contact_support)),

          //Notification Icon
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  HomeComponent(
                      text1: 'Templates',
                      text2: 'Create a template here',
                      image: 'lib/images/apple.jpg',
                      onPressed: (){}),
                      
                  const SizedBox(
                    height: 50,
                  ),
                  HomeComponent(
                      text1: 'Create Form',
                      text2: 'Create a form here',
                      image: 'lib/images/apple.jpg',
                      onPressed: (){}),

                  const SizedBox(
                    height: 50,
                  ),
                  HomeComponent(
                      text1: 'Create Document',
                      text2: 'Create a document here',
                      image: 'lib/images/apple.jpg',
                      onPressed: (){}),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        iconSize: 30,
        elevation: 0,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), label: 'Recent'),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: 'Document',
          ),
          //BottomNavigationBarItem(icon: Icon(Icons.settings),
          //label: 'Se'),
        ],
      ),
    );
  }
}
