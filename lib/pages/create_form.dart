import 'package:flutter/material.dart';
import 'package:teknote/utils/question_text_input.dart';

class CreateForm extends StatelessWidget {
  const CreateForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 218, 221),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: const Size(150, 50),
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 41, 73),
                              side: const BorderSide(
                                color: Color.fromARGB(255, 3, 41, 73),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: const Text(
                            'Questions',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: const Size(150, 50),
                              foregroundColor:
                                  const Color.fromARGB(255, 3, 41, 73),
                              backgroundColor: Colors.transparent,
                              side: const BorderSide(
                                color: Color.fromARGB(255, 3, 41, 73),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: const Text(
                            'Responses',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    color: Color.fromARGB(255, 241, 243, 245),
                    elevation: 0,
                    child: ListTile(
                      title: Text(
                        'Form Name',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 41, 73),
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        'Design Feedback',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //Text Input
                const QuestionInput()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
