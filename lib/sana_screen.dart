import 'package:flutter/material.dart';
import 'package:wiki_twice/sana_photoscreen.dart';

class SanaScreen extends StatelessWidget {
  const SanaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WIKI TWICE'),
        backgroundColor: Colors.purple,
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
          Image.asset('images/sanake.jpg', width: MediaQuery.of(context).size.width),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Minatozaki Sana',
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
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Nama Panggung: Sana (사나)\n'
                    'Nama: Minatozaki Sana (湊崎 紗夏)\n'
                    'Tanggal Lahir: 29 Desember 1996\n'
                    'Kebangsaan: Jepang\n'
                    'Tinggi Badan: 168 cm (Official)\n'
                    'Golongan Darah: B',
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
              'Fakta Tentang Sana:\n'
              '> Sana lahir di Tennōji-ku, Osaka, Jepang.\n\n'
              '> Momo adalah member yang paling banyak tidur.\n\n'
              '> Sana suka warna ungu, pink, putih, hitam, dan krem.\n\n'
              '> Suka yogurt smoothies.\n\n'
              '> Nggak bisa makan terong.\n\n'
              '> Warna representatifnya adalah ungu.\n\n',
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
          Navigator.push(context, MaterialPageRoute(builder: ((context) => SanaPicture())));
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