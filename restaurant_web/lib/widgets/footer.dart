import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      color: const Color(0xFF1E1E1E),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BRAND
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Foodie',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Delicious food delivered to your doorstep with love and quality.',
                      style: TextStyle(
                        color: Colors.white70,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),

              // MENU
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Home', style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 8),
                    Text('Menu', style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 8),
                    Text('Services', style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 8),
                    Text('Contact', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),

              // CONTACT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Email: foodie@mail.com',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Phone: +62 812 3456 7890',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Address: Jakarta, Indonesia',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
          const Divider(color: Colors.white24),
          const SizedBox(height: 20),

          const Text(
            '© 2026 Foodie Restaurant. All rights reserved.',
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
