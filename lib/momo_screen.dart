import 'package:flutter/material.dart';
import 'package:wiki_twice/momo_photoscreen.dart';

class MomoScreen extends StatelessWidget {
  const MomoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WIKI TWICE'),
        backgroundColor: Colors.pink,
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
          Image.asset('images/momo.jpg', width: MediaQuery.of(context).size.width),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Hirai Momo',
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
              color: Colors.pinkAccent[100],
              borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Nama Panggung: Momo (모모)\n'
                    'Nama: Hirai Momo (平井 もも)\n'
                    'Tanggal Lahir: 9 November 1996\n'
                    'Kebangsaan: Jepang\n'
                    'Tinggi Badan: 167 cm (Official)\n'
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
              'Fakta Tentang Momo:\n'
              '> Momo lahir di Kyōtanabe, Kyoto, Jepang.\n\n'
              '> Momo adalah member yang paling banyak tidur.\n\n'
              '> Momo suka warna pink.\n\n'
              '> Momo takut ketinggian.\n\n'
              '> Tidak suka naik roller coasters.\n\n'
              '> Warna representatifnya adalah Pink.\n\n',
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
          Navigator.push(context, MaterialPageRoute(builder: ((context) => MomoPicture())));
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