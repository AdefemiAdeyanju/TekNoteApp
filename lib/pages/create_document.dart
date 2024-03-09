import 'package:flutter/material.dart';
import 'package:teknote/pages/share_page.dart';

class CreateDoc extends StatelessWidget {
  const CreateDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Documents Name',
          style: TextStyle(fontSize: 13),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cloud_done),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SharePage(),
                ),
              );
            },
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {
              _showBottomSheet(context);
            },
            icon: const Icon(Icons.more_vert_sharp),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      ),
      backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, bottom: 40),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: const Color.fromARGB(255, 3, 41, 73),
              foregroundColor: Colors.white,
              child: const Icon(Icons.edit_sharp),
            ),
          ),
        ),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Card(
        elevation: 0,
        child: SizedBox(
          height: 250,
          child: Column(
            children: [
              const ListTile(
                leading: Icon(Icons.file_copy),
                title: Text(
                  'Marketing Department',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'E-Signing',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'E-Signing',
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'E-Signing',
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'E-Signing',
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'E-Signing',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      );
    },
  );
}
