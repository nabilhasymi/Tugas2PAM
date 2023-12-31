import 'package:flutter/material.dart';
import 'package:pemrogaman_2/halaman_favorit.dart';
import 'package:pemrogaman_2/halaman_profil.dart';
import 'package:pemrogaman_2/halaman_rekomendasi.dart';
import 'package:pemrogaman_2/halaman_stopwatch.dart';

void main() {
  runApp(MainPge());
}

class MainPge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Halaman Utama',
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          MenuCard(
              icon: Icons.person_2_outlined,
              title: 'Profil',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ),
                );
              }),
          MenuCard(
              icon: Icons.lock_clock,
              title: 'stopwatch',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StopwatchPage();
                    },
                  ),
                );
              }),
          MenuCard(
              icon: Icons.book_online,
              title: 'Rekomendasi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return rekomendasi();
                    },
                  ),
                );
              }),
          MenuCard(
              icon: Icons.archive,
              title: 'Favorit',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return favorit();
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  MenuCard({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
              color: Colors.blue,
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
