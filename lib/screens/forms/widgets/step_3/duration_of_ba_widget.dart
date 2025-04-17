import 'package:flutter/material.dart';

class DurationOfBAWidget extends StatefulWidget {
  final bool isBASelected; // Indicates if BA = Yes
  final Function(String?) onChanged; // Callback for entered duration

  const DurationOfBAWidget({
    Key? key,
    required this.isBASelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DurationOfBAWidgetState createState() => _DurationOfBAWidgetState();
}

class _DurationOfBAWidgetState extends State<DurationOfBAWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isBASelected) ...[
          const Text(
            "Specify Duration of Bronchial Asthma (in years)",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Duration (years)',
              labelStyle: TextStyle(
                color: Colors.grey[600], // Consistent label color
              ),
              hintText: "Enter duration in years",
              hintStyle: TextStyle(
                color: Colors.grey[400], // Softer hint text color
              ),
              prefixIcon: Icon(
                Icons.timer, // Icon representing duration/time
                color: Colors.blueAccent, // Consistent icon color
              ),
              filled: true,
              fillColor: Colors.grey[100], // Light background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blueAccent.withOpacity(0.5),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ), // Padding inside the text field
            ),
            onChanged: widget.onChanged,
          ),
        ]
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
