import 'package:flutter/material.dart';
import '../../../data/dummy_data.dart';
import '../../../widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      child: Column(
        children: [
          const Text(
            'Our Services',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: services
                .map(
                  (service) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ServiceCard(service: service),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
