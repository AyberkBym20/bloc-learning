import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfController1 = TextEditingController();
  var tfController2 = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: TextStyle(fontSize: 50),
              ),
              TextField(
                controller: tfController1,
                decoration: InputDecoration(hintText: 'Sayı girin'),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                controller: tfController2,
                decoration: InputDecoration(hintText: 'Sayı girin'),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Topla'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Çarp'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
