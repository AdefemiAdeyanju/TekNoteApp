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
          child: SingleChildScrollView(
            child: Center(
              child: Column(children: [const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                    height: 120,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                        children: [
                          const Text('Templates',
                          style: TextStyle(fontSize: 15,
                          color: Colors.purple),
                          ),
                        const Text('asddffg'),
                        GestureDetector(onTap: () {
                          
                        }, child: const Text('aasss',
                        style: TextStyle(
                          
                          backgroundColor: Colors.grey,
                          color: Colors.white),
                          ))],
                      ),
                    ),
                 ),
                ),
                
            
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(5)),
                  height: 100,
                  width: 350,
                ),
              ),
              
              const SizedBox(height: 50,),
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
          ),     
  ),
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.white,
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
    //BottomNavigationBarItem(icon: Icon(Icons.settings),
    //label: 'Se'),
    ],
  ),
);

  }
}