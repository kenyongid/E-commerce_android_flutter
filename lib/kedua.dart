import 'package:flutter/material.dart';
import 'package:flutter_application_11/grid_data.dart';
import 'package:flutter_application_11/grid_view.dart';
import 'package:flutter_application_11/list_horizontal.dart';
import 'package:flutter_application_11/list_vertical.dart';

class Kedua extends StatelessWidget {
  const Kedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman List View",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Halaman Daftar List View",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const List_view_Vertical()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: Text(
              "List View Verical",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const List_view_horizontal()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              "List View Horizontal",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Grid()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
            child: Text(
              "Grid View",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GridData()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(
              "Grid View Data",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
