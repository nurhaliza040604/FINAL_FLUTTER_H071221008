import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Hi, Nurhaliza Alawiah Syah',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/logostitch.jpeg'),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 15),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Stitch Favorite',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300, // Adjust the height as needed
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildImage('images/1.jpeg'),
                buildImage('images/2.jpeg'),
                buildImage('images/3.jpeg'),
                buildImage('images/4.jpeg'),
                buildImage('images/5.jpeg'),
                buildImage('images/6.jpeg'),
                buildImage('images/7.jpeg'),
                buildImage('images/8.jpeg'),
                buildImage('images/9.jpeg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: 250,
          height: 500, // Adjusted to give a phone-like aspect ratio
        ),
      ),
    );
  }
}
