import 'package:flutter/material.dart';

class SleepWellnessWidget extends StatefulWidget {
  final Function(Map<String, String?>) onSleepWellnessChanged;

  const SleepWellnessWidget({
    Key? key,
    required this.onSleepWellnessChanged,
  }) : super(key: key);

  @override
  _SleepWellnessWidgetState createState() => _SleepWellnessWidgetState();
}

class _SleepWellnessWidgetState extends State<SleepWellnessWidget> {
  String? sleepQuality;

  void _updateSleepWellness() {
    widget.onSleepWellnessChanged({
      'Sleep Quality': sleepQuality,
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
            'Sleep Wellness Data',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Dropdown for Sleep Quality Assessment
          DropdownButtonFormField<String>(
            value: sleepQuality,
            decoration: InputDecoration(
              labelText: 'Quality of Sleep',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Very Good', child: Text('Very Good')),
              DropdownMenuItem(value: 'Fairly Good', child: Text('Fairly Good')),
              DropdownMenuItem(value: 'Fairly Bad', child: Text('Fairly Bad')),
              DropdownMenuItem(value: 'Very Bad', child: Text('Very Bad')),
            ],
            onChanged: (value) {
              setState(() {
                sleepQuality = value;
              });
              _updateSleepWellness();
            },
          ),
          const SizedBox(height: 20),

          const Text(
            'Digital Version of Pittsburgh Sleep Quality Index (PSQI)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Placeholder for accessing the PSQI digital link
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('PSQI link will be provided after permission.')),
              );
            },
            child: const Text('Access PSQI Assessment'),
          ),
        ],
      ),
    );
  }
}
