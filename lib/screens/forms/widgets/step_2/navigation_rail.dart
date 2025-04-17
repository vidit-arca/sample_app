import 'package:flutter/material.dart';

class NavigationRailWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const NavigationRailWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onItemTapped,
      labelType: NavigationRailLabelType.all,
      destinations: const [
        NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home Page')),
        NavigationRailDestination(icon: Icon(Icons.person), label: Text('Profile')),
        NavigationRailDestination(icon: Icon(Icons.edit), label: Text('Form')),
      ],
      backgroundColor: Colors.blueGrey[50],
      selectedLabelTextStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      unselectedLabelTextStyle: const TextStyle(color: Colors.black),
    );
  }
}
