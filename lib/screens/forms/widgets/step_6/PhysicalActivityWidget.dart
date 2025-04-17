import 'package:flutter/material.dart';

class PhysicalActivityWidget extends StatefulWidget {
  final Function(String?) onPhysicalActivityChanged;

  const PhysicalActivityWidget({
    Key? key,
    required this.onPhysicalActivityChanged,
  }) : super(key: key);

  @override
  _PhysicalActivityWidgetState createState() => _PhysicalActivityWidgetState();
}

class _PhysicalActivityWidgetState extends State<PhysicalActivityWidget> {
  String? _physicalActivity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Physical Activity Data',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: _physicalActivity,
            decoration: InputDecoration(
              labelText: 'Assess Physical Activity',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Sedentary', child: Text('Sedentary')),
              DropdownMenuItem(value: 'Light Activity', child: Text('Light Activity')),
              DropdownMenuItem(value: 'Moderate Activity', child: Text('Moderate Activity')),
              DropdownMenuItem(value: 'High Activity', child: Text('High Activity')),
            ],
            onChanged: (String? newValue) {
              setState(() {
                _physicalActivity = newValue;
              });
              widget.onPhysicalActivityChanged(newValue);
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Digital Version of CMC Lifestyle Medicine Physical Activity Monitoring Sheet',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Placeholder for the link action after permission is obtained
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Link will be uploaded after permission.')),
              );
            },
            child: const Text('Access Monitoring Sheet'),
          ),
        ],
      ),
    );
  }
}
