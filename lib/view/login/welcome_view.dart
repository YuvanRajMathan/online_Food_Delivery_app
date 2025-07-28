import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png",
                width: media.width,
              ),
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.55,
                height: media.height * 0.25,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: media.width * 0.1),
          Text(
            "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: TColor.secondaryText,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(height: media.width * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: media.width * 0.1),
        ],
      ),
    );
  }
}
