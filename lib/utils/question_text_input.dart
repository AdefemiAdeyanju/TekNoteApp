import 'package:flutter/material.dart';

class QuestionInput extends StatefulWidget {
  const QuestionInput({super.key});

  @override
  State<QuestionInput> createState() => _QuestionInputState();
}

final questioncontroller = TextEditingController();

class _QuestionInputState extends State<QuestionInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: questioncontroller,
            maxLines: 5,
            decoration: const InputDecoration(
              hintText: 'Untitled Question',
              hintStyle: TextStyle(fontSize: 13),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Row(
          children: [
            //Bold
            IconButton(
              style: const ButtonStyle(
                iconColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 3, 41, 73),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.format_bold),
            ),
            //Italic
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
        )
      ],
    );
  }
}
