import 'package:flutter/material.dart';

class SanaPicture extends StatelessWidget {
  final List<String> gambar = ['images/Sana/1.jpg', 'images/Sana/2.jpg', 'images/Sana/3.jpg'];
  SanaPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minatozaki Sana', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
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