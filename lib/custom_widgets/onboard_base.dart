import 'package:flutter/material.dart';
import 'indicator_row.dart';

class OnboardBase extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final int activeDot;
  final VoidCallback onNext;

  const OnboardBase({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.activeDot,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 10),

              SizedBox(
                height: 280,
                child: Image.asset(image, fit: BoxFit.contain),
              ),

              const SizedBox(height: 20),
              const Divider(thickness: 1),
              const SizedBox(height: 20),

              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  height: 1.4,
                ),
              ),

              const Spacer(),

              IndicatorRow(active: activeDot),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: onNext,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C63FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
