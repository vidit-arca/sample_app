import 'package:flutter/material.dart';

class CovidDurationOfStayWidget extends StatelessWidget {
  final int? durationOfStay; // Stores the duration of stay in days
  final Function(int?) onDurationChanged; // Callback when the numeric value changes

  const CovidDurationOfStayWidget({
    Key? key,
    required this.durationOfStay,
    required this.onDurationChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Specify Duration of Hospital Stay (in days):',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            initialValue: durationOfStay != null ? durationOfStay.toString() : '',
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Duration of Stay',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
            ),
            onChanged: (value) {
              // Convert input to integer if it's a valid number
              final int? duration = int.tryParse(value);
              onDurationChanged(duration);
            },
          ),
        ],
      ),
    );
  }
}
