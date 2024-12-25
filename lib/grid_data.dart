import 'package:flutter/material.dart';

class GridData extends StatelessWidget {
  GridData({super.key});
  final List<String> data = [
    'Lost Vape Centaurus M200 Box Mod Kit',
    'GeekVape Z Series Coil',
    'OXVA Xlim SE Bonus Kit',
    'BUAQITA Salt Nic 30MG 30ML',
    'JUTA OATS Banana 60ML',
    'FOOM Pod Y Chore Silver Bundling 15ML',
    'CARTRIDGE XLIM PRO 0.4',
    'CARTRIDGE XLIM PRO 0.8',
  ];
  final List<String> imageUrls = [
    'https://img.vawoo.com/images/thumbnails/340/370/detailed/338/Centaurus-M200-Kit-1.jpg',
    'https://img.vawoo.com/images/thumbnails/340/370/detailed/79/GEEKVAPEZEUSMESHCOIL5PCS.jpg',
    'https://img.vawoo.com/images/thumbnails/340/370/detailed/325/Xlim-SE-25W-Pod-Kit-2.jpg',
    'https://d1d8o7q9jg8pjk.cloudfront.net/p/md_64d08fa44b143.jpg',
    'https://d1d8o7q9jg8pjk.cloudfront.net/p/md_623977a443d1a.jpg',
    'https://d1d8o7q9jg8pjk.cloudfront.net/p/md_6700acc6c5392.jpg',
    'https://d1d8o7q9jg8pjk.cloudfront.net/p/lg_65012dc80ad3c.jpg',
    'https://d1d8o7q9jg8pjk.cloudfront.net/p/md_649ee31662c51.jpg'
  ];
  final List<String> harga = [
    'Rp. 729.389,23',
    'Rp. 146.954,21',
    'Rp. 207.200,96',
    'Rp. 110.000',
    'Rp. 100.000',
    'Rp. 300.000',
    'Rp. 45.000',
    'Rp. 45.000',
  ];

  final List<String> diskripsi = [
    'Diskripsi 1',
    'Diskripsi 2',
    'Diskripsi 3',
    'Diskripsi 4',
    'Diskripsi 5',
    'Diskripsi 6',
    'Diskripsi 7',
    'Diskripsi 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Data"),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          title: data[index],
                          harga: harga[index],
                          imageUrl: imageUrls[index],
                          diskripsi: diskripsi[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    color:
                        const Color.fromARGB(255, 136, 48, 48).withOpacity(0.1),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16)),
                            image: DecorationImage(
                              image: NetworkImage(imageUrls[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  data[index],
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  harga[index],
                                  style: const TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String harga;
  final String imageUrl;
  final String diskripsi;

  const DetailPage({
    super.key,
    required this.title,
    required this.harga,
    required this.imageUrl,
    required this.diskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 175, 76, 89),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: 300.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.1),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 175, 76, 89),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    harga,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    diskripsi,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Add to cart action
                        },
                        icon: const Icon(Icons.add_shopping_cart),
                        label: const Text("Tambah ke keranjang"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 173, 175, 76),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 12.0,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Buy now action
                        },
                        icon: const Icon(Icons.payment),
                        label: const Text("Beli "),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
