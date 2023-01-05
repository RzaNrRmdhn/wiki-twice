import 'package:flutter/material.dart';

class JihyoPicture extends StatelessWidget {
  final List<String> gambar = ['images/Jihyo/1.jpg', 'images/Jihyo/2.jpg', 'images/Jihyo/3.jpg'];
  JihyoPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Park Jihyo', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.brown[100],
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