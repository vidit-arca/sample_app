import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final bool isBackVisible;

  const NavigationButtons({
    required this.onPrevious,
    required this.onNext,
    required this.isBackVisible,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back Button
        if (isBackVisible)
          ElevatedButton(
            onPressed: onPrevious,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text("Back"),
          ),

        // Next or Submit Button
        ElevatedButton(
          onPressed: onNext,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text("Next"),
        ),
      ],
    );
  }
}
