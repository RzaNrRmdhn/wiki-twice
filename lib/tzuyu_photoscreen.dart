import 'package:flutter/material.dart';

class TzuyuPicture extends StatelessWidget {
  final List<String> gambar = ['images/Tzuyu/1.jpg', 'images/Tzuyu/2.jpg', 'images/Tzuyu/3.jpg'];
  TzuyuPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chou Tzuyu', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
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