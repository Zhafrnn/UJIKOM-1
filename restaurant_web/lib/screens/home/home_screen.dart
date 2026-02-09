import 'package:flutter/material.dart';

// import semua section
import '../../widgets/navbar.dart';
import 'sections/hero_section.dart';
// import 'sections/slider_section.dart';
import 'sections/choose_menu_section.dart';
import 'sections/quality_section.dart';
import 'sections/services_section.dart';
import 'sections/order_section.dart';
import 'sections/testimonial_section.dart';
import '../../widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            const Navbar(),
            const HeroSection(),
            // const SliderSection(),
            const ChooseMenuSection(),
            const QualitySection(),
            const ServicesSection(),
            const OrderSection(),
            const TestimonialSection(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
