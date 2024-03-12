import 'package:flutter/material.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent(
      {super.key,
      required this.text1,
      required this.text2,
      required this.image,
      required this.onPressed});

  final dynamic text1;
  final dynamic text2;
  final dynamic image;
  final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 120,
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 3, 41, 73),
                    ),
                  ),
                  Text(text2),
                  const SizedBox(height: 10,),
                  //ElevatedButton
                  SizedBox(height: 35,width: 120,
                    child: ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: const Text(
                        'Create',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                image,
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
