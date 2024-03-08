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
    );
  }
}