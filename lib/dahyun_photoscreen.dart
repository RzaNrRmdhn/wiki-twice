import 'package:flutter/material.dart';

class DahyunPicture extends StatelessWidget {
  final List<String> gambar = ['images/Dahyun/1.jpg', 'images/Dahyun/2.jpg', 'images/Dahyun/3.jpg'];
  DahyunPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kim Dahyun', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
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