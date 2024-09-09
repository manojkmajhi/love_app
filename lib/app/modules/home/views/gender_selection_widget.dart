import 'package:flutter/material.dart';

class GenderSelectionWidget extends StatefulWidget {
  const GenderSelectionWidget({super.key});

  @override
  _GenderSelectionWidgetState createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Gender:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        RadioListTile<String>(
          title: const Text('Male'),
          value: 'Male',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value;
            });
          },
        ),
        const SizedBox(height: 5),
        RadioListTile<String>(
          title: const Text('Female'),
          value: 'Female',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value;
            });
          },
        ),
      ],
    );
  }
}
