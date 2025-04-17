import 'package:flutter/material.dart';

class NicotineDependenceWidget extends StatefulWidget {
  final String? smokingFrequency; // This will be passed from the parent widget
  final Function(Map<String, int>) onFTNDChanged;

  const NicotineDependenceWidget({
    Key? key,
    required this.smokingFrequency,
    required this.onFTNDChanged,
  }) : super(key: key);

  @override
  _NicotineDependenceWidgetState createState() =>
      _NicotineDependenceWidgetState();
}

class _NicotineDependenceWidgetState extends State<NicotineDependenceWidget> {
  Map<String, int> _ftndScores = {
    'Q1': 0, // First question of FTND
    'Q2': 0, // Second question of FTND
    'Q3': 0, // Third question of FTND
    'Q4': 0, // Fourth question of FTND
    'Q5': 0, // Fifth question of FTND
    'Q6': 0, // Sixth question of FTND
    'Q7': 0, // Seventh question of FTND
  };

  int _totalScore = 0;
  bool _isSubmitted = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.smokingFrequency ==
          'Daily', // Show only if frequency is "Daily"
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Assessing Nicotine Dependence (Fagerström Test for Nicotine Dependence)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            // FTND Questions (Example)
            _buildFTNDQuestion(
              questionText: '1. How soon after waking up do you smoke?',
              options: [
                'Within 5 minutes',
                '6-30 minutes',
                '31-60 minutes',
                'After 60 minutes'
              ],
              scoreKey: 'Q1',
            ),
            _buildFTNDQuestion(
              questionText:
                  '2. Do you find it difficult to refrain from smoking in places where it is prohibited?',
              options: ['Yes', 'No'],
              scoreKey: 'Q2',
            ),
            _buildFTNDQuestion(
              questionText:
                  '3. Which cigarette would you hate most to give up?',
              options: ['The first one in the morning', 'Any other'],
              scoreKey: 'Q3',
            ),
            _buildFTNDQuestion(
              questionText: '4. How many cigarettes per day do you smoke?',
              options: ['Less than 10', '11-20', '21-30', 'More than 30'],
              scoreKey: 'Q4',
            ),
            _buildFTNDQuestion(
              questionText:
                  '5. Do you smoke more frequently during the first hours after waking than during the rest of the day?',
              options: ['Yes', 'No'],
              scoreKey: 'Q5',
            ),
            _buildFTNDQuestion(
              questionText:
                  '6. Do you smoke even if you are sick in bed most of the day?',
              options: ['Yes', 'No'],
              scoreKey: 'Q6',
            ),
            _buildFTNDQuestion(
              questionText:
                  '7. Do you smoke if you are unwell or have health issues?',
              options: ['Yes', 'No'],
              scoreKey: 'Q7',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Calculate the total score based on responses
                _totalScore = _calculateTotalScore();
                setState(() {
                  _isSubmitted = true; // Mark as submitted
                });
                widget.onFTNDChanged(
                    _ftndScores); // Pass the FTND scores to the parent
              },
              child: const Text('Submit Assessment'),
            ),

            // Display score after submission
            if (_isSubmitted)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Nicotine Dependence Score: $_totalScore',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Interpretation:\n'
                      '0-4: Low dependence\n'
                      '5-6: Moderate dependence\n'
                      '7-10: High dependence\n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  // Helper method to create FTND question widgets
  Widget _buildFTNDQuestion({
    required String questionText,
    required List<String> options,
    required String scoreKey,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(questionText, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        ...List.generate(
          options.length,
          (index) => RadioListTile<int>(
            title: Text(options[index]),
            value: index,
            groupValue: _ftndScores[scoreKey],
            onChanged: (value) {
              setState(() {
                _ftndScores[scoreKey] = value ?? 0; // Update the score
              });
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  // Function to calculate the total score based on selected responses
  int _calculateTotalScore() {
    int score = 0;

    // Define scoring logic for each question
    score += _ftndScores['Q1'] == 0
        ? 3
        : _ftndScores['Q1'] == 1
            ? 2
            : _ftndScores['Q1'] == 2
                ? 1
                : 0;
    score += _ftndScores['Q2'] == 0 ? 1 : 0;
    score += _ftndScores['Q3'] == 0 ? 1 : 0;
    score += _ftndScores['Q4'] == 0
        ? 0
        : _ftndScores['Q4'] == 1
            ? 1
            : _ftndScores['Q4'] == 2
                ? 2
                : 3;
    score += _ftndScores['Q5'] == 0 ? 1 : 0;
    score += _ftndScores['Q6'] == 0 ? 1 : 0;
    score += _ftndScores['Q7'] == 0 ? 1 : 0;

    return score;
  }
}
