import 'package:calculator/shoose.dart';
import 'package:flutter/material.dart';
import 'components/components.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              const Image(
                fit: BoxFit.cover,
                height: 228,
                width: 280,
                image: AssetImage('assets/images/firstpage.png'),
              ),
              const SizedBox(height: 40,),
              const Text(
                "Welcom to\nCalories Calcolator",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 31,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 46),
              const Text(
                "This app bring to healthinformation \ntogether in one lpace\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 46),
              InkWell(
                onTap: () {
                  navigateAndFinish(context, ShoosePage());
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
                    'Cotinue',
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
