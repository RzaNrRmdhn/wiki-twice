import 'package:flutter/material.dart';
import 'package:wiki_twice/jeong_photoscreen.dart';

class JeongScreen extends StatelessWidget {
  const JeongScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WIKI TWICE'),
        backgroundColor: Colors.green,
        // centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pop(context);
          }),
        actions: const <Widget>[
          TombolAksi()
        ]
      ),
      body: SafeArea(
        child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Expanded(child: Image.asset('images/minari.jpg')),
          Image.asset('images/jeong.jpg', width: MediaQuery.of(context).size.width),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Yoo Jeongyeon',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: 100,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.limeAccent[400],
              borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Nama Panggung: Jeongyeon (정연)\n'
                    'Nama: Yoo Jeong Yeon (유정연)\n'
                    'Tanggal Lahir: 1 November 1996\n'
                    'Kebangsaan: Korea\n'
                    'Tinggi Badan: 169 cm (Official)\n'
                    'Golongan Darah: O',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: const Text(
              'Fakta Tentang Jeongyeon:\n'
              '> Jeongyeon lahir di Suwon, Korea Selatan.\n\n'
              '> Nama lahir Jeongyeon adalah Yoo Kyung Wan.\n\n'
              '> Suka Nanoblock dan Lego.\n\n'
              '> Jeongyeon disebut sebagai ibunya TWICE.\n\n'
              '> Jeongyeon adalah seorang ambidextrous\n\n'
              '> Warna representatifnya adalah Kuning-Hijau.\n\n',
              style: TextStyle(
                fontSize: 18
              ),
            )
          )
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Photo',
        child: const Icon(Icons.photo_camera_front_outlined),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => JeongPicture())));
        },
      ),
    );
  }
}

class TombolAksi extends StatefulWidget {
  const TombolAksi({Key? key}) : super(key: key);

  @override
  State<TombolAksi> createState() => _FavoriteKeyState();
}

class _FavoriteKeyState extends State<TombolAksi> {
  bool isWarna = false;
  bool isAdd = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite, color: isWarna? Colors.red : Colors.white), 
          onPressed: () {
            setState(() {
              isWarna = !isWarna;
            });
          }),
        IconButton(
          icon: Icon(isAdd? Icons.bookmark_added : Icons.bookmark_add , color: Colors.white),
          onPressed:() {
            setState(() {
              isAdd = !isAdd;
            });
          })
      ],
    );
  }
}