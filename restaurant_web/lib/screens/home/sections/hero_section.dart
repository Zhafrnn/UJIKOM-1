import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // === HERO CONTENT ===
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'More\nBetter Taste For\nYour Day',
                      style: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Lorem ipsum is simply dummy text of the printing and '
                      'typesetting industry. Lorem ipsum has been the '
                      'industry\'s standard dummy text ever since the 1500s.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.7,
                        color: Colors.black54,
                      ),
                    ),

                    const SizedBox(height: 32),

                    // ✅ ORDER NOW BUTTON (PASTI MUNCUL)
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA24D),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 36,
                          vertical: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Order Now',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 40),

              Expanded(
                flex: 5,
                child: Image.asset(
                  'assets/images/hero_pizza.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),

          // === JARAK KHUSUS BIAR MIRIP DESAIN ===
          const SizedBox(height: 40),
          
        ],
      ),
    );
  }
}
