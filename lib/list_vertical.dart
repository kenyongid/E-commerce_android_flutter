import 'package:flutter/material.dart';

class List_view_Vertical extends StatelessWidget {
  const List_view_Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact List",
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
            children: <Widget>[
              Card(
                color: const Color.fromARGB(255, 136, 48, 48).withOpacity(0.1),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'images/pp.jpg',
                          fit: BoxFit.cover,
                          width:
                              100, // Adjust the width for the profile picture
                          height:
                              100, // Ensure height is the same as width for a circle
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Contact Me',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Untuk Informasi Selanjutnya Hubungi Contact ini',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
              const CustomListTile(
                icon: Icons.person_2,
                text: "Fadhil Raihan",
              ),
              const CustomListTile(
                icon: Icons.location_pin,
                text: "Jl. Tegalsari Barat II no 18",
              ),
              const CustomListTile(
                icon: Icons.phone,
                text: "08589230949",
              ),
              const CustomListTile(
                icon: Icons.person_pin_rounded,
                text: "Knyong__",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomListTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 136, 48, 48).withOpacity(0.1),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
