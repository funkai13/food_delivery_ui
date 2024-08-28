import 'package:flutter/material.dart';
import 'package:food_delivery_ui/animations/fade_animation.dart';
import 'package:food_delivery_ui/widgets/menu_slides.dart';

import '../widgets/food_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: const Icon(null),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1,
                    Text(
                      'Food Delivery',
                      style: TextStyle(
                          color: Colors.grey[80],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeAnimation(
                            1, foodCategory(isActive: true, title: 'pizza')),
                        FadeAnimation(1.3,
                            foodCategory(isActive: false, title: 'Burgers')),
                        FadeAnimation(1.4,
                            foodCategory(isActive: false, title: 'Desert')),
                        FadeAnimation(
                            1.5, foodCategory(isActive: false, title: 'Salad')),
                        FadeAnimation(
                            1.6,
                            foodCategory(
                                isActive: false, title: 'Chinese Food')),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            FadeAnimation(
              1,
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Free delivery',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FadeAnimation(
                        1, menuSlides(image: 'assets/images/pizza.jpg')),
                    FadeAnimation(
                        1.2, menuSlides(image: 'assets/images/pizza.jpg')),
                    FadeAnimation(
                        1.4, menuSlides(image: 'assets/images/pizza.jpg')),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
