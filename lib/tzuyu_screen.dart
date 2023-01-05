import 'package:flutter/material.dart';
import 'package:wiki_twice/tzuyu_photoscreen.dart';

class TzuyuScreen extends StatelessWidget {
  const TzuyuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WIKI TWICE'),
        backgroundColor: Colors.blue,
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
          Image.asset('images/cuwi.jpg', width: MediaQuery.of(context).size.width),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Chou Tzuyu',
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
              color: Colors.blue[400],
              borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Nama Panggung: Tzuyu (쯔위)\n'
                    'Nama: Son Chou Tzu Yu (저우쯔위/주자유)\n'
                    'Tanggal Lahir: 14 Juni 1999\n'
                    'Kebangsaan: Taiwan\n'
                    'Tinggi Badan: 172 cm (Official)\n'
                    'Golongan Darah: A',
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
              'Fakta Tentang Tzuyu:\n'
              '> Tzuyu lahir di Tainan, Taiwan.\n\n'
              '> Nama Inggrisnya adalah Sally Chou.\n\n'
              '> Nama-nama julukannya adalah “Chocolate” karena warna kulitnya, “Chewy” and “Yoda”.\n\n'
              '> Warna kesukaan Tzuyu adalah Indigo (Nila).\n\n'
              '> Tzuyu menyukai karakter Yoda (Star Wars).\n\n'
              '> Biru adalah warna yang mewakilinya.\n\n',
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
          Navigator.push(context, MaterialPageRoute(builder: ((context) => TzuyuPicture())));
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