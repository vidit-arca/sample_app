import 'package:flutter/material.dart';

class SmokingPackYearWidget extends StatelessWidget {
  final String? smokingStatus;
  final Function(String?) onPackYearChanged;

  const SmokingPackYearWidget({
    Key? key,
    required this.smokingStatus,
    required this.onPackYearChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: smokingStatus == 'Current' || smokingStatus == 'Former',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'How many pack years of smoking?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Pack Years',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: (String value) {
                onPackYearChanged(value);
              },
            ),
            const SizedBox(height: 10),
            Text(
              'Note: Pack Years = Number of packs smoked per day × number of years smoked.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
