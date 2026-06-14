import 'package:flutter/material.dart';

void main() {
  runApp(const BuddyOS());
}

class BuddyOS extends StatelessWidget {
  const BuddyOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuddyOS - AI Life OS',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFCDB4FF), // Lavender
        scaffoldBackgroundColor: const Color(0xFFFFF8F0), // Cream White
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Good Evening, User",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 10),
              _buildAIWidget("Future Self AI", "Your timeline is 84% on track for Google SWE role.", const Color(0xFFCDB4FF)),
              _buildAIWidget("Digital Twin Forecast", "Burnout risk: Low. Peak focus tonight: 8 PM - 11 PM.", const Color(0xFFA2D2FF)),
              _buildAIWidget("Opportunity Intel", "3 New Hackathons match your profile (92% Match).", const Color(0xFFFFC8DD)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAIWidget(String title, String subtitle, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color, width: 1.5),
      ),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.auto_awesome, color: Colors.indigo),
      ),
    );
  }
}
