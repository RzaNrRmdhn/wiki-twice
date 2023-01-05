import 'package:flutter/material.dart';
import 'package:wiki_twice/home_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  String _nama = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Image.asset('images/twess.jpg'),
            const Text(
              'WIKI TWICE', 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600
              )
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Write Your Name, please....',
                  label: Text('Username')
                ),
                onChanged: (String value){
                  setState(() {
                    _nama = value;  
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width/3,
              height: 50,
              child: ElevatedButton(
              child: const Text('Let\'s Go!'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(nama: _nama)));
              }, 
            ),
            )
          ]
        ),
      ),
    );
  }
}