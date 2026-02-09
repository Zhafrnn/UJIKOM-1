import 'package:flutter/material.dart';
import 'package:restaurant_web/core/constant/colors.dart';

class QualitySection extends StatelessWidget {
  const QualitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // LEFT TEXT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'We Cooked With The Best Quality',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Lorem ipsum is simply dummy text of the printing and '
                  'typesetting industry. Lorem ipsum has been the industry\'s '
                  'standard dummy text ever since the 1500s.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 30),
                _QualityItem(text: 'Fresh Ingredients'),
                SizedBox(height: 12),
                _QualityItem(text: 'Best Quality Products'),
                SizedBox(height: 12),
                _QualityItem(text: 'Professional Chef'),
              ],
            ),
          ),

          const SizedBox(width: 60),

          // RIGHT IMAGE
          Expanded(
            child: Image.asset(
              'assets/images/fried_chicken.png',
              height: 420,
            ),
          ),
        ],
      ),
    );
  }
}

class _QualityItem extends StatelessWidget {
  final String text;

  const _QualityItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 16,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
