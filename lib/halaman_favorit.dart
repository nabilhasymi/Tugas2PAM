import 'package:flutter/material.dart';

class favorit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<MyCard> cards = [
    MyCard(
      title: 'YouTube',
      imageUrl: 'https://logo.clearbit.com/youtube.com',
      linkUrl: 'https://www.youtube.com/',
      description: 'Deskripsi Card 1',
    ),
    MyCard(
      title: 'Instagram',
      imageUrl: 'https://logo.clearbit.com/instagram.com',
      linkUrl: 'https://www.instagram.com/',
      description: 'Deskripsi Card 2',
    ),
    MyCard(
      title: 'Twitter (X)',
      imageUrl: 'https://logo.clearbit.com/twitter.com',
      linkUrl: 'https://twitter.com/',
      description: 'Deskripsi Card 3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Favorite'),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return cards[index];
        },
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String linkUrl;

  MyCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.linkUrl,
  });

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            widget.imageUrl,
            height: 200,
            width: 200,
            fit: BoxFit.none,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.description),
          IconButton(
            icon:
                isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
            onPressed: toggleFavorite,
          ),
        ],
      ),
    );
  }
}
