import 'package:flutter/material.dart';

class ChaengPicture extends StatelessWidget {
  final List<String> gambar = ['images/Chaeng/1.jpg', 'images/Chaeng/2.jpg', 'images/Chaeng/3.jpg'];
  ChaengPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Son Chaeyoung', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.red[200],
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