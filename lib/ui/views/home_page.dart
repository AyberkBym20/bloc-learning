import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfNumber1 = TextEditingController();
  var tfNumber2 = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                result.toString(),
                style: TextStyle(fontSize: 50),
              ),
              TextField(
                controller: tfNumber1,
                decoration: InputDecoration(hintText: 'Sayı girin'),
              ),
              TextField(
                controller: tfNumber2,
                decoration: InputDecoration(hintText: 'Sayı girin'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String fetchNumber1 = tfNumber1.text;
                      String fetchNumber2 = tfNumber2.text;
                      int number1 = int.parse(fetchNumber1);
                      int number2 = int.parse(fetchNumber2);
                      int sum = number1 + number2;
                      setState(() {
                        result = sum;
                      });
                    },
                    child: const Text('Topla'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String fetchNumber1 = tfNumber1.text;
                      String fetchNumber2 = tfNumber2.text;
                      int number1 = int.parse(fetchNumber1);
                      int number2 = int.parse(fetchNumber2);
                      int sum = number1 * number2;
                      setState(() {
                        result = sum;
                      });
                    },
                    child: const Text('Çarp'),
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
