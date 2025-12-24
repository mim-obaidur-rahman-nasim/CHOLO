import 'package:cholo/auth/role/role_select_page.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),

              // Logo
              Center(
                child: Image.asset('assets/images/app_icon.png', width: 120),
              ),

              const SizedBox(height: 32),

              // Title
              const Text(
                'Welcome back',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              const Text(
                'Enter your phone number to continue',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),

              const SizedBox(height: 24),

              // Phone Input
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixText: '+880 ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Continue Button
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const RoleSelectPage()),
                    );
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Terms text
              const Center(
                child: Text(
                  'By continuing, you agree to our terms & conditions',
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                  textAlign: TextAlign.center,
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
