import 'package:calculator/shoose.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'components/components.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          navigateAndFinish(context, ShoosePage());
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: const Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "If you want to know\n something about Ai model \nor the app \n\nPlease contact us \nin our emails ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 190,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 110,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: const Image(
                          height: 100,
                          width: 100,
                          image: AssetImage('assets/images/gmail.png'),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Racha Saoudi",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 190,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 110,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: const Image(
                          height: 100,
                          width: 100,
                          image: AssetImage('assets/images/gmail.png'),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "hadil hadil",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}
