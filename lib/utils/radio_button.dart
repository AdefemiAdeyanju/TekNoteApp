import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({
    super.key,
  });
  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int? _value = 1;
  void _handleRadioValueChanged(int? value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Row(
            children: [
              Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: _handleRadioValueChanged,
                  toggleable: true),
              const Text('Anyone with link can view'),
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: _handleRadioValueChanged,
                  toggleable: true),
              const Text('Only people invited'),
            ],
          ),
        ],
      ),
    );
  }
}
