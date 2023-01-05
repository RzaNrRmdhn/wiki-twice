import 'package:flutter/material.dart';

class MinaPicture extends StatelessWidget {
  final List<String> gambar = ['images/Mina/1.jpg', 'images/Mina/2.jpg', 'images/Mina/3.jpg', 'images/Mina/4.jpg',
                              'images/Mina/5.jpg', 'images/Mina/6.jpg', 'images/Mina/7.jpg'];
  MinaPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Myoui Mina', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
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