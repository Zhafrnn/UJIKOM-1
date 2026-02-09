import 'package:flutter/material.dart';
import '/data/menu_data.dart';
import '/widgets/menu_card.dart';

class ChooseMenuSection extends StatelessWidget {
  const ChooseMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          const Text(
            'Choose Your Favorite Menu',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Order delicious food and enjoy your meal',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 60),

          /// MENU LIST
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuItems
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: MenuCard(item: item),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
