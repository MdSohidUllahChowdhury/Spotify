import 'package:flutter/material.dart';
import 'package:spotify/Controller/global_controller.dart';

class SpotifyFeed extends StatelessWidget {
  const SpotifyFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(239, 0, 0, 0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            GlobalController.customAppBar(),
            SizedBox(height: 12),
            GlobalController.playBar(),
            SizedBox(height:22),
            GlobalController.headingTextSection('Your Top Mix'),
            SizedBox(height:14),
            GlobalController.yourTopMixes(),
            SizedBox(height: 22),
            GlobalController.headingTextSection('Recommended for You'),
            SizedBox(height: 14),
            GlobalController.recommendedForYou(),
            SizedBox(height: 22),
            GlobalController.headingTextSection('Jump Back In'),
            SizedBox(height: 14),
            GlobalController.jumpBackIn(),
          ]
          ),
        ),
      ),
    );
  }
}