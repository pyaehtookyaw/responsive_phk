import 'package:example/views/response_center_screen.dart';
import 'package:example/views/response_two_column_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResponseCenterScreen()),
                );
              },
              child: Text('Responsive Center'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResponsiveTwoColumnScreen()),
                );
              },
              child: Text('Responsive Two Column'),
            ),
          ],
        ),
      ),
    );
  }
}
