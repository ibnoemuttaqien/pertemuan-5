import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsListScreen(),
    );
  }
}

class NewsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Terbaru'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final newsId = (index + 1).toString();
          return ListTile(
            title: Text('Berita $newsId'),
            subtitle: Text('Deskripsi Berita $newsId'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailScreen(
                    newsId: newsId,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({Key? key, required this.newsId}) : super(key: key);
  final String newsId;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int likeCount = 99;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          likeCount++;
          setState(() {
            print(likeCount);
          });
        },
        child: const Icon(Icons.favorite),
      ),
      appBar: AppBar(
        title: const Text('Detail Berita'),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Image.network(
              "assets/rumah.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Seorang Mahasiswa Berhasil Membuat Aplikasi Prediksi",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 14,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(likeCount.toString()),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  'berita ke ${widget.newsId}. aplikasi prediksi harga rumah yang dibuat oleh mahasiswa itg ini memiliki nilai keakuratan yang sangat tinggi yaitu mencapai 99,87%,dengan nilai kesalahannya juga yang sangat kecil, sehingga aplikasi tersebut sangat layak untuk digunakan',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    @override
      Widget build(BuildContext context) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back),
        ),
      );
    }
  }
}
