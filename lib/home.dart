import 'package:flutter/material.dart';
import 'package:flutter_application_11/grid_data.dart';
import 'package:flutter_application_11/grid_view.dart';
import 'package:flutter_application_11/list_horizontal.dart';
import 'package:flutter_application_11/list_vertical.dart';
import 'package:flutter_application_11/main.dart'; // Make sure this is the correct import for your main.dart file

class Utama extends StatelessWidget {
  const Utama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/vapeBg.jpg'), // Tambahkan gambar background
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay for gradient
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
          // Main content
          Column(
            children: [
              // Header with logo and title
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(244, 117, 91, 91),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    // Logo
                    Image.asset(
                      'images/icon.png', // Ganti dengan logo Anda
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10),
                    // Title
                    const Text(
                      "Welcome to FaVapstore",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Premium Vapor Experience",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Navigation grid
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(16.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    final menuItems = [
                      {
                        'title': 'List Vertical',
                        'icon': Icons.view_list,
                        'color': Colors.green,
                        'backgroundColor': Colors.white,
                        'route': List_view_Vertical(),
                      },
                      {
                        'title': 'List Horizontal',
                        'icon': Icons.view_carousel,
                        'color': Colors.blue,
                        'backgroundColor': Colors.white,
                        'route': List_view_horizontal(),
                      },
                      {
                        'title': 'Grid View',
                        'icon': Icons.grid_view,
                        'color': Colors.orange,
                        'backgroundColor': Colors.white,
                        'route': Grid(),
                      },
                      {
                        'title': 'Grid Data',
                        'icon': Icons.dataset,
                        'color': Colors.purple,
                        'backgroundColor': Colors.white,
                        'route': GridData(),
                      },
                    ];

                    final item = menuItems[index];
                    return _buildModernButton(
                      context,
                      title: item['title'] as String,
                      icon: item['icon'] as IconData,
                      color: item['color'] as Color,
                      route: item['route'] as Widget,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              // Logout button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 16.0),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildModernButton(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required Widget route,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
