import 'package:flutter/material.dart';
import 'package:wiki_twice/jihyo_photoscreen.dart';

class JihyoScreen extends StatelessWidget {
  const JihyoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WIKI TWICE'),
        backgroundColor: Colors.brown,
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
          Image.asset('images/jiyo.jpg', width: MediaQuery.of(context).size.width),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Park Jihyo',
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
              color: Colors.brown[100],
              borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Nama Panggung: Jihyo (지효)\n'
                    'Nama: Park Ji Hyo (박지효)\n'
                    'Tanggal Lahir: 1 Februari 1997\n'
                    'Kebangsaan: Korea\n'
                    'Tinggi Badan: 162 cm (Official)\n'
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
              'Fakta Tentang Jihyo:\n'
              '> Jihyo lahir di Guri, Gyeonggi, Korea Selatan.\n\n'
              '> Member Twice yang paling lama menjalani masa training.\n\n'
              '> Terpilih sebagai leader oleh para member.\n\n'
              '> Nama asli Jihyo adalah Park Jisoo.\n\n'
              '> Warna kesukaan: merah.\n\n'
              '> Warna representatifnya adalah Apricot.\n\n',
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
          Navigator.push(context, MaterialPageRoute(builder: ((context) => JihyoPicture())));
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