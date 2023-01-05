import 'package:flutter/material.dart';
import 'package:wiki_twice/mina_screen.dart';
import 'package:wiki_twice/nay_screen.dart';
import 'package:wiki_twice/jeong_screen.dart';
import 'package:wiki_twice/momo_screen.dart';
import 'package:wiki_twice/sana_screen.dart';
import 'package:wiki_twice/jihyo_screen.dart';
import 'package:wiki_twice/dahyun_screen.dart';
import 'package:wiki_twice/chaeng_screen.dart';
import 'package:wiki_twice/tzuyu_screen.dart';
import 'package:wiki_twice/start_screen.dart';

class Homescreen extends StatelessWidget {
  final String nama;
  final List<String> member = ['Im Nayeon', 'Yoo Jeongyeon', 'Hirai Momo', 'Minatozaki Sana', 'Park Jihyo',
                              'Myoui Mina', 'Kim Dahyun', 'Son Chaeyoung', 'Chou Tzuyu'];
  final List<String> gambar = ['images/nay.jpg', 'images/jeong.jpg', 'images/momo.jpg', 'images/sanake.jpg', 'images/jiyo.jpg', 
                              'images/minari.jpg', 'images/dubu.jpg', 'images/chaeng.jpg', 'images/cuwi.jpg'];
  Homescreen({required this.nama, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $nama'),
        centerTitle: true,
        leading: IconButton(
          icon: 
            const Icon(Icons.menu), 
            onPressed: () {
              Navigator.pop(context);
            },
        ),
      ),
      body: ListView.builder(
        itemCount: member.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                Image.asset(gambar[index]),
                TextButton(
                  child: Text(
                    member[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      if(member[index] == 'Im Nayeon'){
                        return const NayScreen();
                      }else if(member[index] == 'Yoo Jeongyeon'){
                        return const JeongScreen();
                      }else if(member[index] == 'Hirai Momo'){
                        return const MomoScreen();
                      }else if(member[index] == 'Minatozaki Sana'){
                        return const SanaScreen();
                      }else if(member[index] == 'Park Jihyo'){
                        return const JihyoScreen();
                      }else if(member[index] == 'Myoui Mina'){
                        return const MinaScreen();
                      }else if(member[index] == 'Kim Dahyun'){
                        return const DahyunScreen();
                      }else if(member[index] == 'Son Chaeyoung'){
                        return const ChaengScreen();
                      }else if(member[index] == 'Chou Tzuyu'){
                        return const TzuyuScreen();
                      }else{
                        return const StartScreen();
                      }
                    }));
                  },
                )
              ],
            ),
          );
      }),
    );
  }
}