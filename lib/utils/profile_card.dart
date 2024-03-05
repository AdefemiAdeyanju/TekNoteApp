import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.icon});

  final String text1;
  final String text2;
  final String text3;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 0, bottom: 0, right: 10),
              child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text2,
                              style: const TextStyle(color: Colors.purple),
                            ),
                            Text(text3),
                          ],
                        ),
                        const Spacer(),
                        Icon(icon)
                      ],
                    ),
                  ),),
            ),
          ],
        ),
    
    );
  }
}
