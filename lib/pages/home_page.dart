import 'package:flutter/material.dart';
import 'package:teknote/pages/document_page.dart';
import 'package:teknote/pages/create_document.dart';
import 'package:teknote/utils/create_form.dart';
import 'package:teknote/pages/profile_setting_page.dart';
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
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DocPage(),
        ),
      );
    }
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Container(
                margin: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset('lib/images/apple.jpg',
                  width: 30,
                  height:40,
                  fit: BoxFit.cover),
                ),
              ),
            ),
            
          ],
        ),
        // Contact Support Icon
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.contact_support),
          ),

          //Notification Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),  
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
                      onPressed: () {}),
                  const SizedBox(
                    height: 50,
                  ),
                  HomeComponent(
                    text1: 'Create Form',
                    text2: 'Create a form here',
                    image: 'lib/images/apple.jpg',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateForm(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  HomeComponent(
                    text1: 'Create Document',
                    text2: 'Create a document here',
                    image: 'lib/images/apple.jpg',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateDoc(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 3, 41, 73),
        fixedColor: Colors.white,
        iconSize: 30,
        elevation: 0,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          /*BottomNavigationBarItem(
              icon: Icon(Icons.access_time), label: 'Recent'),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: 'Document',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
