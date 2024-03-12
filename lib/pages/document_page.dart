import 'package:flutter/material.dart';

class DocPage extends StatelessWidget {
  const DocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      appBar: AppBar(
        title: const Text('Documents'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.menu)]),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Card(
                            elevation: 0,
                            child: ListTile(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Card(
                            elevation: 0,
                            child: ListTile(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Card(
                            elevation: 0,
                            child: ListTile(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Card(
                            elevation: 0,
                            child: ListTile(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Card(
                            elevation: 0,
                            child: ListTile(),
                          ),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Card(
                            elevation: 0,
                            child: ListTile(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: (){
                      showDialog(context: context,
                       builder: (BuildContext context) { return createFileDialog(context);
                       },
                       );
                    },
                    tooltip: 'create',
                    elevation: 1,
                    
                  child: const Icon(Icons.add),),
                ),
              )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

AlertDialog createFileDialog(BuildContext context){
  final fileNameController = TextEditingController();
  return AlertDialog(
    title: const Text('Create New File',
    style: TextStyle(fontSize: 15)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 50,
          width: 250,
          child: TextField(
            controller: fileNameController,
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              hintText: 'Enter a file name'),
          
          ),
        )
      ],
    ),
    actions: [
      TextButton(onPressed: () { Navigator.pop;}, 
      child: const Text('Cancel')),

      TextButton(onPressed: () {
        // String fileName = fileNameController.text;
        // print('Creating file: $fileName');
        Navigator.pop(context);
      }, child: const Text('Create'),
      )
    ],
  );
}