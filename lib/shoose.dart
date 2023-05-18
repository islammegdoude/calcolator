import 'package:calculator/MyForm.dart';
import 'package:flutter/material.dart';

import 'CoachesList.dart';
import 'components/components.dart';
import 'contactus.dart';

class ShoosePage extends StatelessWidget {
  const ShoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70),
              const Image(
                image: AssetImage('assets/images/questions.png'),
                fit: BoxFit.cover,
                height: 215,
                width: 310,
              ),
              const SizedBox(height: 70),
              InkWell(
                  onTap: () {
                    navigateAndFinish(context, MyForm());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 59,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Calcolate Calories',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    navigateAndFinish(context, CoachListPage());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 59,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Coaches List',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    navigateAndFinish(context, ContactUsScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 59,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}