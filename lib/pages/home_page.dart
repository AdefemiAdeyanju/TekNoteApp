import 'package:flutter/material.dart';

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
                  Scaffold.of(context).openDrawer();
                },
                icon: const CircleAvatar(
                  backgroundImage: AssetImage('lib/images/apple.jpg'),
                ));
          },
        ),
     actions: [IconButton(
      onPressed: (){},
      icon: const Icon(Icons.contact_support)),

      IconButton(onPressed: (){},
      icon: const Icon(Icons.notifications)),
     ], ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 120,
                      width: 350,
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'Templates',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.purple),
                                ),
                                Text('asddffg'),
                                
                                Text(
                                  'aasss',
                                  style: TextStyle(
                                      backgroundColor: Colors.grey,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      height: 120,
                      width: 350,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        height: 120,
                        width: 350),
                  ),
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
              icon: Icon(Icons.description_outlined), label: 'Document'),
          //BottomNavigationBarItem(icon: Icon(Icons.settings),
          //label: 'Se'),
        ],
      ),
    );
  }
}
