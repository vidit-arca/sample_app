import 'package:flutter/material.dart';

class MentalWellnessWidget extends StatefulWidget {
  final Function(Map<String, String?>) onMentalWellnessChanged;

  const MentalWellnessWidget({
    Key? key,
    required this.onMentalWellnessChanged,
  }) : super(key: key);

  @override
  _MentalWellnessWidgetState createState() => _MentalWellnessWidgetState();
}

class _MentalWellnessWidgetState extends State<MentalWellnessWidget> {
  String? depressionLevel;
  String? anxietyLevel;
  String? stressLevel;

  void _updateMentalWellness() {
    widget.onMentalWellnessChanged({
      'Depression': depressionLevel,
      'Anxiety': anxietyLevel,
      'Stress': stressLevel,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Mental Wellness Data',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Dropdown for Depression
          DropdownButtonFormField<String>(
            value: depressionLevel,
            decoration: InputDecoration(
              labelText: 'Depression Level',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Normal', child: Text('Normal')),
              DropdownMenuItem(value: 'Mild', child: Text('Mild')),
              DropdownMenuItem(value: 'Moderate', child: Text('Moderate')),
              DropdownMenuItem(value: 'Severe', child: Text('Severe')),
              DropdownMenuItem(value: 'Extremely Severe', child: Text('Extremely Severe')),
            ],
            onChanged: (value) {
              setState(() {
                depressionLevel = value;
              });
              _updateMentalWellness();
            },
          ),
          const SizedBox(height: 10),

          // Dropdown for Anxiety
          DropdownButtonFormField<String>(
            value: anxietyLevel,
            decoration: InputDecoration(
              labelText: 'Anxiety Level',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Normal', child: Text('Normal')),
              DropdownMenuItem(value: 'Mild', child: Text('Mild')),
              DropdownMenuItem(value: 'Moderate', child: Text('Moderate')),
              DropdownMenuItem(value: 'Severe', child: Text('Severe')),
              DropdownMenuItem(value: 'Extremely Severe', child: Text('Extremely Severe')),
            ],
            onChanged: (value) {
              setState(() {
                anxietyLevel = value;
              });
              _updateMentalWellness();
            },
          ),
          const SizedBox(height: 10),

          // Dropdown for Stress
          DropdownButtonFormField<String>(
            value: stressLevel,
            decoration: InputDecoration(
              labelText: 'Stress Level',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Normal', child: Text('Normal')),
              DropdownMenuItem(value: 'Mild', child: Text('Mild')),
              DropdownMenuItem(value: 'Moderate', child: Text('Moderate')),
              DropdownMenuItem(value: 'Severe', child: Text('Severe')),
              DropdownMenuItem(value: 'Extremely Severe', child: Text('Extremely Severe')),
            ],
            onChanged: (value) {
              setState(() {
                stressLevel = value;
              });
              _updateMentalWellness();
            },
          ),
          const SizedBox(height: 20),

          const Text(
            'Digital Version of DASS-21 (Depression, Anxiety, and Stress Scale - 21 Items)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Placeholder for accessing the DASS-21 digital link
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('DASS-21 link will be provided after permission.')),
              );
            },
            child: const Text('Access DASS-21 Assessment'),
          ),
        ],
      ),
    );
  }
}
