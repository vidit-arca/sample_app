import 'package:flutter/material.dart';

class HealthRelatedQOLWidget extends StatefulWidget {
  final Function(Map<String, String?>) onQOLChanged;

  const HealthRelatedQOLWidget({Key? key, required this.onQOLChanged})
      : super(key: key);

  @override
  _HealthRelatedQOLWidgetState createState() => _HealthRelatedQOLWidgetState();
}

class _HealthRelatedQOLWidgetState extends State<HealthRelatedQOLWidget> {
  String? qolScore;

  void _updateQOL() {
    widget.onQOLChanged({'QOL Score': qolScore});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Health Related QOL',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: qolScore,
            decoration: InputDecoration(
              labelText: 'Select QOL Score',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
            items: const [
              DropdownMenuItem(value: 'Excellent', child: Text('Excellent')),
              DropdownMenuItem(value: 'Good', child: Text('Good')),
              DropdownMenuItem(value: 'Fair', child: Text('Fair')),
              DropdownMenuItem(value: 'Poor', child: Text('Poor')),
            ],
            onChanged: (value) {
              setState(() {
                qolScore = value;
              });
              _updateQOL();
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text(
                        'SF-36 Survey link will be provided after permission.')),
              );
            },
            child: const Text('Access SF-36 Survey'),
          ),
        ],
      ),
    );
  }
}
