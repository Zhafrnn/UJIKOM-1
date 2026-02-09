import 'package:restaurant_web/models/menu_models.dart';
import 'package:restaurant_web/models/service_models.dart';
import 'package:restaurant_web/models/testimonial_models.dart';



// SLIDER
final sliderMenus = [
  MenuModel(
    name: 'Burger',
    image: 'assets/images/burger.png',
    price: 5.25,
  ),
  MenuModel(
    name: 'Pizza',
    image: 'assets/images/pizza.png',
    price: 7.15,
  ),
  MenuModel(
    name: 'Salad',
    image: 'assets/images/salad.png',
    price: 4.85,
  ),
];

//CHOOSE
final chooseMenus = [
  MenuModel(
    name: 'Donuts',
    image: 'assets/images/donut.png',
    price: 3.25,
  ),
  MenuModel(
    name: 'Salad',
    image: 'assets/images/salad.png',
    price: 5.25,
  ),
  MenuModel(
    name: 'French Fries',
    image: 'assets/images/fries.png',
    price: 8.15,
  ),
  MenuModel(
    name: 'Burger',
    image: 'assets/images/burger.png',
    price: 6.15,
  ),
  MenuModel(
    name: 'Pizza',
    image: 'assets/images/pizza.png',
    price: 10.15,
  ),
  MenuModel(
    name: 'Fried Chicken',
    image: 'assets/images/fried_chicken.png',
    price: 5.15,
  ),
  MenuModel(
    name: 'Spaghetti',
    image: 'assets/images/spaghetti.png',
    price: 9.35,
  ),
];

//SERVICES
final services = [
  ServiceModel(
    title: 'Fast Delivery',
    description: 'Fast and reliable food delivery service.',
    icon: 'assets/images/delivery.png',
  ),
  ServiceModel(
    title: 'Best Quality',
    description: 'We use only the best quality ingredients.',
    icon: 'assets/images/quality.png',
  ),
  ServiceModel(
    title: 'Fresh Food',
    description: 'Fresh food cooked by professional chefs.',
    icon: 'assets/images/fresh.png',
  ),
];

//TESTIMONIALS
final testimonials = [
  TestimonialModel(
    name: 'John Doe',
    role: 'Food Blogger',
    comment:
        'The food is very delicious and the service is amazing. I will definitely order again!',
    avatar: 'assets/images/avatar1.png',
  ),
  TestimonialModel(
    name: 'Sarah Smith',
    role: 'Customer',
    comment:
        'Fast delivery and the taste is incredible. Highly recommended!',
    avatar: 'assets/images/avatar2.png',
  ),
  TestimonialModel(
    name: 'Michael Lee',
    role: 'Chef',
    comment:
        'Fresh ingredients and great presentation. Love this restaurant!',
    avatar: 'assets/images/avatar3.png',
  ),
];
