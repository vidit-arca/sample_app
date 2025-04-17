import 'package:flutter/material.dart';

class PsychiatricRxRegimenWidget extends StatefulWidget {
  final bool isPsychiatricIllnessYes; // Flag to check if Psychiatric Illness = Yes
  final List<String> initialRegimens; // Initial list of regimens
  final Function(List<String>) onUpdated; // Callback to update regimens

  const PsychiatricRxRegimenWidget({
    Key? key,
    required this.isPsychiatricIllnessYes,
    required this.initialRegimens,
    required this.onUpdated,
  }) : super(key: key);

  @override
  State<PsychiatricRxRegimenWidget> createState() =>
      _PsychiatricRxRegimenWidgetState();
}

class _PsychiatricRxRegimenWidgetState
    extends State<PsychiatricRxRegimenWidget> {
  late List<String> regimens;

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    regimens = widget.initialRegimens; // Initialize regimens list
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addRegimen() {
    final newRegimen = _controller.text.trim();
    if (newRegimen.isNotEmpty) {
      setState(() {
        regimens.add(newRegimen);
      });
      widget.onUpdated(regimens); // Update parent
      _controller.clear();
    }
  }

  void _removeRegimen(int index) {
    setState(() {
      regimens.removeAt(index);
    });
    widget.onUpdated(regimens); // Update parent
  }

  @override
  Widget build(BuildContext context) {
    return widget.isPsychiatricIllnessYes
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Specify Current Rx Regimen for Psychiatric Illness:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: 'Enter medication name',
                        hintStyle: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _addRegimen,
                    child: const Text("Add"),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              if (regimens.isNotEmpty)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: regimens.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(regimens[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeRegimen(index),
                    ),
                  ),
                ),
            ],
          )
        : const SizedBox.shrink(); // Return an empty widget if Psychiatric Illness = No
  }
}
