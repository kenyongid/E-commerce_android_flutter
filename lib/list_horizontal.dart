import 'package:flutter/material.dart';

class List_view_horizontal extends StatelessWidget {
  const List_view_horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Horizontal List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 175, 76, 89),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/vapeBg.jpg'), // Ganti dengan background image Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 162, 53, 53).withOpacity(0.7),
                  Colors.black.withOpacity(0.4),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              CustomCard(
                color: Colors.red,
                title: "Merah",
                icon: Icons.sports,
              ),
              CustomCard(
                color: Colors.yellow,
                title: "Kuning",
                icon: Icons.lightbulb,
              ),
              CustomCard(
                color: Colors.green,
                title: "Hijau",
                icon: Icons.eco,
              ),
              CustomCard(
                color: Colors.blue,
                title: "Biru",
                icon: Icons.water,
              ),
              CustomCard(
                color: Colors.purple,
                title: "Ungu",
                icon: Icons.brush,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;

  const CustomCard({
    super.key,
    required this.color,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          Icon(
            icon,
            color: Colors.white,
            size: 32,
          ),
        ],
      ),
    );
  }
}
