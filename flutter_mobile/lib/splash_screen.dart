import 'package:flutter/material.dart';
import 'package:flutter_mobile/main_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
              child: Image(
                image: AssetImage('images/logostitch.jpeg'),
                width: 300,
              ),
            ),
          ),
          SizedBox(
            width:
                MediaQuery.of(context).size.width * 0.8, // 80% of screen width
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainView()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('Get Started',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20), // Add some space at the bottom
        ],
      ),
    );
  }
}
