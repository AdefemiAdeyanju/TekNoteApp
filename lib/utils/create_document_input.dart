import 'package:flutter/material.dart';

class DocInput extends StatelessWidget {
  const DocInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(
              hintText: 'Document Name', border: InputBorder.none),
          style: TextStyle(),
        ),
        backgroundColor: const Color.fromARGB(255, 215, 218, 221),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            onSelected: ((value) => value),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Save',
                  child: Text('Save'),
                )
              ];
            },
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        IconButton(
                          style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 3, 41, 73),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.format_bold),
                        ),
                        IconButton(
                          style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 3, 41, 73),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.format_italic),
                        ),

                        //TextField
                        IconButton.filled(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 3, 41, 73),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.text_fields),
                        ),
                        //Underline
                        IconButton.filled(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 3, 41, 73),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.format_underline),
                        ),
                        //Strikethrough
                        IconButton.filled(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 3, 41, 73),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.format_strikethrough),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      maxLines: 15,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.redo_outlined)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.undo_outlined))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
