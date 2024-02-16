import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(223, 255, 255, 255),
      body:  SafeArea(
          child: Column(children: [const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(5)),
                height: 100,
                width: 350,
                child: const Center(child:
                Text('Box 1')),
             ),
            ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
              height: 100,
              width: 350,
            ),
          ),
          
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)),
                height:100,
                width:350 
            ),
          ),
        ],
        ),     
  ),
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.purple[400],
    iconSize: 30,
    elevation: 0,
    onTap: _onItemTapped,
    currentIndex: _selectedIndex,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),
    label: 'Ho'),
    BottomNavigationBarItem(icon: Icon(Icons.access_time),
    label: 'Ret'),
    BottomNavigationBarItem(icon: Icon(Icons.description_outlined),
    label: 'Doc'),
    BottomNavigationBarItem(icon: Icon(Icons.settings),
    label: 'Se')
    
    ],
  ),
);

  }
}