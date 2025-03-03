import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // # Disable debug banner
      home: const HomeScreen(), // # Use HomeScreen as the main page
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200], // #Change this color
      appBar: AppBar(
        title: const Text("I AM R.A.C.I.S.T."), // # App bar title
        backgroundColor: Colors.blueGrey, // # App bar background color
      ),
      body: const ContentSection(), // # Separate widget for content
    );
  }
}

class ContentSection extends StatelessWidget {
  const ContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    const String imagePath = 'assets/mew-sketch.png'; // # Image path
    const List<String> descriptions = [
      "🙏🇷espect people🔥",
      "🌍🇦ppreciate differences🔥",
      "🤔🇨onsider others🔥",
      "🤗🇮nclude everyone🔥",
      "🤝🇸upport those in need🔥",
      "💖🇹reat everyone with kindness🔥",
    ];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // # Center content vertically
        children: [
          Image.asset(
            imagePath,
            width: 300, // # Image width
            height: 300, // # Image height
            fit: BoxFit.contain, // # Maintain aspect ratio
          ),
          const SizedBox(height: 20), // # Spacing between image and text
          Container(
            padding: const EdgeInsets.all(16), // # Padding inside the container
            decoration: BoxDecoration(
              color: Colors.green[200], // # Background color of the container
              borderRadius: BorderRadius.circular(10), // # Rounded corners
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // # Align text to the left
              children: descriptions.map(
                    (desc) => Text(
                  desc,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.left, // # Ensure text is left-aligned
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
