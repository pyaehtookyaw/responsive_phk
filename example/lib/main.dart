import 'package:example/views/mobile_action_button.dart';
import 'package:example/views/response_center_screen.dart';
import 'package:example/views/response_two_column_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_phk/widgets/responsive_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(
        title: 'Home Screen',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        mobileActions: [MobileActionButton()],
        desktopActions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResponseCenterScreen()),
                );
              },
              child: Text(
                'Responsive Center',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResponsiveTwoColumnScreen()),
                );
              },
              child: Text(
                'Responsive Two Column',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
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
