import 'package:flutter/material.dart';
import 'package:sample_app/screens/forms/widgets/home_layout.dart';
import 'package:sample_app/screens/forms/widgets/step_2/navigation_rail.dart';
import 'package:sample_app/screens/forms/widgets/profile_page.dart';
import 'package:sample_app/screens/forms/multi_step_form.dart';
import 'package:sample_app/screens/forms/widgets/step_2/navigation_rail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text('Profile Page Content'),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late final List<Widget> _layouts;

  @override
  void initState() {
    super.initState();
    _layouts = [
      _buildHomePage(),
      const ProfilePage(),
      const MultiStepForm(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildHomePage() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWideScreen = constraints.maxWidth > 600;
        final horizontalPadding = isWideScreen ? 40.0 : 20.0;

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome, User!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 8),
              const Text(
                "Here's an overview of your activities and quick actions.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: isWideScreen ? 30 : 15,
                runSpacing: 20,
                alignment: isWideScreen ? WrapAlignment.start : WrapAlignment.center,
                children: [
                  _buildActionCard(
                    title: "Collect Data",
                    icon: Icons.assignment,
                    color: Colors.teal,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Collect Data feature coming soon!')));
                    },
                  ),
                  _buildActionCard(
                    title: "View Reports",
                    icon: Icons.bar_chart,
                    color: Colors.orange,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('View Reports feature coming soon!')));
                    },
                  ),
                  _buildActionCard(
                    title: "Settings",
                    icon: Icons.settings,
                    color: Colors.blue,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Settings feature coming soon!')));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Recent Activity", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
              const SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 5,
                shadowColor: Colors.black.withOpacity(0.1),
                child: ListTile(
                  leading: const Icon(Icons.history, color: Colors.blue, size: 40),
                  title: const Text("Data Collection Session", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Completed 5 records on Jan 10, 2025."),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Details about recent activities coming soon!')));
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("Announcements", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
              const SizedBox(height: 10),
              Card(
                color: Colors.lightBlue[50],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 3,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("🔔 Reminder: Submit your monthly data reports by Jan 15, 2025.", style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.feedback, size: 24),
                  label: const Text("Give Feedback"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    elevation: 4,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Feedback form coming soon!')));
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildActionCard({required String title, required IconData icon, required Color color, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(2, 2))],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediCollect Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No new notifications')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Settings Page Coming Soon')));
            },
          ),
        ],
      ),
      body: Row(
        children: [
          if (isWideScreen)
            NavigationRailWidget(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          Expanded(child: _layouts[_selectedIndex]),
        ],
      ),
      bottomNavigationBar: isWideScreen
          ? null
          : BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Forms'),
              ],
            ),
    );
  }
}
