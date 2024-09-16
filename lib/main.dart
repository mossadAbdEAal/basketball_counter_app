import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pointsAteam = 0;

  int pointsBteam = 0;

  double fontSizee = 150;

  double widthline = 400;

  void checkpoints() {
    if (pointsAteam.bitLength > 4) {
      fontSizee = 100;
      widthline = 350;
    }

    if (pointsBteam.bitLength > 4) {
      fontSizee = 100;
      widthline = 350;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 82, 148),
          title: const Center(
            child: Text(
              'counter App',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$pointsAteam',
                      style: TextStyle(fontSize: fontSizee),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan),
                        onPressed: () {
                          setState(() {
                            checkpoints();
                            pointsAteam += 1;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent),
                        onPressed: () {
                          setState(() {
                            checkpoints();
                            pointsAteam += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 points',
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 4, 123, 182)),
                        onPressed: () {
                          setState(() {
                            checkpoints();
                            pointsAteam += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 points',
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                SizedBox(
                    height: widthline,
                    child: const VerticalDivider(
                      width: 20,
                      color: Color.fromARGB(255, 165, 142, 231),
                      thickness: BorderSide.strokeAlignCenter,
                    )),
                Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$pointsBteam',
                      style: TextStyle(fontSize: fontSizee),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan),
                        onPressed: () {
                          setState(() {
                            checkpoints();
                            pointsBteam += 1;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent),
                        onPressed: () {
                          setState(() {
                            checkpoints();
                            pointsBteam += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 points',
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 4, 123, 182)),
                        onPressed: () {
                          setState(() {
                            checkpoints();
                            pointsBteam += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 points',
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 82, 148)),
                onPressed: () {
                  setState(() {
                    pointsAteam = 0;
                    pointsBteam = 0;
                    fontSizee = 150;
                    widthline = 400;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.orange),
                )),
          ],
        ),
      ),
    );
  }
}
