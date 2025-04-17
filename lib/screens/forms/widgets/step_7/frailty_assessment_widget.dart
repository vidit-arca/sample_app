import 'package:flutter/material.dart';

class FrailtyAssessmentWidget extends StatefulWidget {
  final Function(Map<String, String?>) onFrailtyChanged;

  const FrailtyAssessmentWidget({Key? key, required this.onFrailtyChanged})
      : super(key: key);

  @override
  _FrailtyAssessmentWidgetState createState() =>
      _FrailtyAssessmentWidgetState();
}

class _FrailtyAssessmentWidgetState extends State<FrailtyAssessmentWidget> {
  String? frailtyStatus;

  void _updateFrailty() {
    widget.onFrailtyChanged({'Frailty Status': frailtyStatus});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Frailty Assessment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: frailtyStatus,
            decoration: InputDecoration(
              labelText: 'Select Frailty Status',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
            items: const [
              DropdownMenuItem(value: 'Not Frail', child: Text('Not Frail')),
              DropdownMenuItem(value: 'Pre-Frail', child: Text('Pre-Frail')),
              DropdownMenuItem(value: 'Frail', child: Text('Frail')),
            ],
            onChanged: (value) {
              setState(() {
                frailtyStatus = value;
              });
              _updateFrailty();
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text(
                        'Simple Frail Questionnaire link will be provided after permission.')),
              );
            },
            child: const Text('Access Frailty Questionnaire'),
          ),
        ],
      ),
    );
  }
}
