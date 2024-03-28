import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: firstController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Field cannot be empty";
                }
                return null;
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'First Number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: secondController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Field cannot be empty";
                }
                return null;
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Second Number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);
                    setState(() {
                      result = a + b;
                    });
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);
                    setState(() {
                      result = a - b;
                    });
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);
                    setState(() {
                      result = a * b;
                    });
                  },
                  child: const Text('*'),
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);
                    setState(() {
                      result = a / b;
                    });
                  },
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Result: $result',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
