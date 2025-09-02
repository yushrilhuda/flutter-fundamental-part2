import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Gunung Bromo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
               ) ,
              ),
              Text(
                'Pasuruan, Indonesia',
                style: TextStyle(color: Colors.grey,),
              ),
            ],
          ),
        ),
        /* soal 3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );

  Color color = Theme.of(context).primaryColor;

  Column buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButtonColumn(color, Icons.call, 'CALL'),
      buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      'Gunung Bromo adalah salah satu gunung berapi aktif yang terletak di Jawa Timur, tepatnya di kawasan Taman Nasional Bromo Tengger Semeru. '
      'Ciri khas Gunung Bromo adalah kaldera luas dengan lautan pasir seluas kurang lebih 10 km² yang dikenal sebagai Lautan Pasir Tengger, '
      'Gunung ini memiliki ketinggian sekitar 2.329 meter di atas permukaan laut (mdpl) dan terkenal dengan pemandangannya yang menakjubkan, terutama saat matahari terbit. '
      'Gunung Bromo juga memiliki nilai budaya yang tinggi bagi masyarakat Tengger yang tinggal di sekitarnya. '
      'Selain itu, kawasan ini sering dijadikan tujuan wisata favorit, baik oleh wisatawan domestik maupun mancanegara.'
      '362458302120_Yushril Huda Ramadhany Sugianto',
     softWrap: true,
    ),
  );

  return MaterialApp(
    title: 'Flutter layout: Yushril Huda Ramadhany Sugianto_362458302120',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/gunungbromo.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
  ),
);
}
}