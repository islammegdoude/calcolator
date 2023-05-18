import 'package:calculator/shoose.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/components.dart';

class Coach {
  final String name;
  final String email;

  Coach({required this.name, required this.email});
}

class CoachListPage extends StatelessWidget {
  final List<Coach> coaches = [
    Coach(name: 'Dhikra Cheriet', email: 'Dhikracheriet794@gmail.com'),
    Coach(name: 'debeche manel', email: 'Biboua99@gmail.com'),
    // Add more coaches here
  ];

  void _sendEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunchUrl(_emailLaunchUri)) {
      await launchUrl(_emailLaunchUri);
    } else {
      throw 'Could not launch email client';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              navigateAndFinish(context, ShoosePage());
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text('Sport Coaches'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
        itemCount: coaches.length,
        itemBuilder: (context, index) {                                                                   
          final coach = coaches[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            title: Text(
              coach.name,
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text(coach.email, style: const TextStyle(fontSize: 18)),
            onTap: () {
              _sendEmail(coach.email);                                                                                                                          
            },
          );
        },
      ),
    );
  }
}
