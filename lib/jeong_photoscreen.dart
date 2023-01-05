import 'package:flutter/material.dart';

class JeongPicture extends StatelessWidget {
  final List<String> gambar = ['images/Jeong/1.jpg', 'images/Jeong/2.jpg', 'images/Jeong/3.jpg'];
  JeongPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yoo Jeongyeong', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.limeAccent[400],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(gambar[index])
          );
        },
      ),
    );
  }
}