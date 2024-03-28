import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  String result = '';
  // String value = '';
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //
    //
    //
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Calculator App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                autofocus: true,
                controller: firstController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your First Number',
                  labelText: 'Number: 1',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Field cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: secondController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Second Number',
                  labelText: 'Number: 2',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Field cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            double sum = double.parse(firstController.text) +
                                double.parse(secondController.text);
                            result = sum.toString();
                          });
                        }
                      },
                      // child: const Text('Add'),
                      child: const Icon(Icons.add)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            double sub = double.parse(firstController.text) -
                                double.parse(secondController.text);
                            result = sub.toString();
                          });
                        }
                      },
                      // child: const Text('Sub')),
                      child: const Icon(Icons.remove)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            double mult = double.parse(firstController.text) *
                                double.parse(secondController.text);
                            result = mult.toString();
                          });
                        }
                      },
                      // child: const Text('Mult')),
                      child: const Icon(Icons.close)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            double divide = double.parse(firstController.text) /
                                double.parse(secondController.text);
                            result = divide.toString();
                          });
                        }
                      },
                      child: const Text(
                        '/',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )),
                  // child: const Icon(Icons.)),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
