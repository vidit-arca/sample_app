import 'package:flutter/material.dart';

class AlcoholDependenceWidget extends StatelessWidget {
  final List<String> questions;
  final Function(int questionIndex, String? answer) onAnswerChanged;

  const AlcoholDependenceWidget({
    Key? key,
    required this.questions,
    required this.onAnswerChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Assess Alcohol Dependence',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        for (int i = 0; i < questions.length; i++) ...[
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  questions[i],
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Never', child: Text('Never')),
                    DropdownMenuItem(value: 'Rarely', child: Text('Rarely')),
                    DropdownMenuItem(
                        value: 'Sometimes', child: Text('Sometimes')),
                    DropdownMenuItem(value: 'Often', child: Text('Often')),
                  ],
                  onChanged: (String? answer) {
                    onAnswerChanged(i, answer);
                  },
                  hint: const Text('Select your answer'),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
