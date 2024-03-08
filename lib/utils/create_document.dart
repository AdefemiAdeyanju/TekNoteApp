import 'package:flutter/material.dart';

class CreateDoc extends StatelessWidget {
  const CreateDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),),
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),

        body: SafeArea(
          child: ListView(children:  [
            Align(alignment:Alignment.bottomRight ,
              child: FloatingActionButton(onPressed: (){},
              
              backgroundColor: const Color.fromARGB(255, 215, 218, 221),
              child: const Icon(Icons.add),),
            )
          ],) ),
    );
  }
}