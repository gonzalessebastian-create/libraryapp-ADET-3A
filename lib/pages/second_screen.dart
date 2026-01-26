import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key});

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          style: TextStyle(
            color: Colors.white
          ),
          "List of Manga"),
      ),
      body: GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 0.6,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(16),
      children: [
        buildBox("assets/images/app_icon3.png","Death Note"),
        buildBox("assets/images/app_icon4.png","Dragon Ball Super"),
        buildBox("assets/images/app_icon5.png","Naruto"),
        buildBox("assets/images/app_icon6.png","One Piece"),
        buildBox("assets/images/app_icon7.png","Jujutsu Kaisen Modulo"),
        buildBox("assets/images/app_icon8.png","Boruto"),
        buildBox("assets/images/app_icon9.png","Spy X Family"),
        buildBox("assets/images/app_icon10.png","Sakamoto Days"),

      ],
      ),
    );

  }
}

Widget buildBox(String imagePath, String title) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 4,
    child: Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    ),
  );
}