import 'package:flutter/material.dart';

class MyStepperScreen extends StatefulWidget {
  @override
  _MyStepperScreenState createState() => _MyStepperScreenState();
}

class _MyStepperScreenState extends State<MyStepperScreen> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stepper")),
      body: Stepper(
        currentStep: _currentStep,
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
        onStepContinue: () {
          if (_currentStep < 2) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
        steps: [
          Step(
            title: Text('Step 1'),
            content: Text('This is step 1'),
            isActive: _currentStep == 0,
          ),
          Step(
            title: Text('Step 2'),
            content: Text('This is step 2'),
            isActive: _currentStep == 1,
          ),
          Step(
            title: Text('Step 3'),
            content: Text('This is step 3'),
            isActive: _currentStep == 2,
          ),
        ],
      ),
    );
  }
}
