import 'package:flutter/material.dart';

class MomoPicture extends StatelessWidget {
  final List<String> gambar = ['images/Momo/1.jpg', 'images/Momo/2.jpg', 'images/Momo/3.jpg'];
  MomoPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hirai Momo', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[100],
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