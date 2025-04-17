import 'package:flutter/material.dart';

class OSASScreeningWidget extends StatefulWidget {
  final Function(Map<String, String?>) onOSASScreeningChanged;

  const OSASScreeningWidget({
    Key? key,
    required this.onOSASScreeningChanged,
  }) : super(key: key);

  @override
  _OSASScreeningWidgetState createState() => _OSASScreeningWidgetState();
}

class _OSASScreeningWidgetState extends State<OSASScreeningWidget> {
  String? osasRiskLevel;

  void _updateOSASScreening() {
    widget.onOSASScreeningChanged({
      'OSAS Risk Level': osasRiskLevel,
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
            'Screening for OSAS',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Dropdown for OSAS Risk Level
          DropdownButtonFormField<String>(
            value: osasRiskLevel,
            decoration: InputDecoration(
              labelText: 'Risk Level for OSAS',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Low Risk', child: Text('Low Risk')),
              DropdownMenuItem(value: 'Intermediate Risk', child: Text('Intermediate Risk')),
              DropdownMenuItem(value: 'High Risk', child: Text('High Risk')),
            ],
            onChanged: (value) {
              setState(() {
                osasRiskLevel = value;
              });
              _updateOSASScreening();
            },
          ),
          const SizedBox(height: 20),

          const Text(
            'Digital Version of STOPBANG Questionnaire',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Placeholder for accessing the STOPBANG questionnaire link
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('STOPBANG Questionnaire link will be provided after permission.')),
              );
            },
            child: const Text('Access STOPBANG Questionnaire'),
          ),
        ],
      ),
    );
  }
}
