import 'package:flutter/material.dart';
import 'AlcoholDependenceWidget.dart';
import 'AlcoholIntakeFrequencyWidget.dart';

class AlcoholWidget extends StatefulWidget {
  final Function(String?) onAlcoholStatusChanged;
  final Function(int questionIndex, String? answer)
      onAlcoholDependenceAnswerChanged;
  final Function(String?) onAlcoholFrequencyChanged;

  const AlcoholWidget({
    Key? key,
    required this.onAlcoholStatusChanged,
    required this.onAlcoholDependenceAnswerChanged,
    required this.onAlcoholFrequencyChanged,
  }) : super(key: key);

  @override
  _AlcoholWidgetState createState() => _AlcoholWidgetState();
}

class _AlcoholWidgetState extends State<AlcoholWidget> {
  String? _alcoholStatus;
  String? _alcoholFrequency;
  final List<String?> _dependenceAnswers = [
    null,
    null,
    null
  ]; // Adjust size to the number of questions

  final List<String> _dependenceQuestions = [
    'How often do you have a drink containing alcohol?',
    'How many drinks do you have on a typical day when you are drinking?',
    'How often do you find it difficult to stop drinking once you’ve started?',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Participant’s H/O Alcohol Consumption',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          // Alcohol Status Dropdown
          DropdownButtonFormField<String>(
            value: _alcoholStatus,
            decoration: InputDecoration(
              labelText: 'Alcohol Status',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Never', child: Text('Never')),
              DropdownMenuItem(value: 'Former', child: Text('Former')),
              DropdownMenuItem(value: 'Current', child: Text('Current')),
            ],
            onChanged: (String? newValue) {
              setState(() {
                _alcoholStatus = newValue;
                if (_alcoholStatus != 'Current') {
                  for (int i = 0; i < _dependenceAnswers.length; i++) {
                    _dependenceAnswers[i] = null; // Reset dependence answers
                  }
                  _alcoholFrequency =
                      null; // Reset alcohol frequency if not "Current"
                }
              });
              widget.onAlcoholStatusChanged(newValue);
            },
            hint: const Text('Select Alcohol Status'),
          ),
          const SizedBox(height: 20),
          // Alcohol Frequency Widget (if status is "Current")
          if (_alcoholStatus == 'Current')
            AlcoholIntakeFrequencyWidget(
              selectedFrequency: _alcoholFrequency,
              onFrequencyChanged: (String? frequency) {
                setState(() {
                  _alcoholFrequency = frequency;
                });
                widget.onAlcoholFrequencyChanged(frequency);
              },
            ),
          const SizedBox(height: 20),
          // Alcohol Dependence Questions (if status is "Current")
          if (_alcoholStatus == 'Current')
            AlcoholDependenceWidget(
              questions: _dependenceQuestions,
              onAnswerChanged: (int questionIndex, String? answer) {
                setState(() {
                  _dependenceAnswers[questionIndex] = answer;
                });
                widget.onAlcoholDependenceAnswerChanged(questionIndex, answer);
              },
            ),
        ],
      ),
    );
  }
}
