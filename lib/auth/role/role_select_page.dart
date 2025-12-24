import 'package:flutter/material.dart';

class RoleSelectPage extends StatelessWidget {
  const RoleSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select your role')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _roleCard(context, title: 'Customer', icon: Icons.shopping_bag),
            const SizedBox(height: 16),
            _roleCard(context, title: 'Rider', icon: Icons.delivery_dining),
          ],
        ),
      ),
    );
  }

  Widget _roleCard(
    BuildContext context, {
    required String title,
    required IconData icon,
  }) {
    return InkWell(
      onTap: () {
        // next step: OTP screen
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Icon(icon, size: 32),
            const SizedBox(width: 16),
            Text(title, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
