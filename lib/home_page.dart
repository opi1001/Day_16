import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ismale = true;
  int weight = 5;
  int age = 5;
  int height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Widgets",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Card(
                        color: ismale == true
                            ? Colors.teal
                            : Color.fromARGB(777, 777, 777, 777),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 50,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Card(
                        color: ismale == false ? Colors.teal : Color(10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 50,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Card(
              color: Colors.indigo,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$height",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                      thumbColor: Colors.pink,
                      activeColor: Colors.teal,
                      inactiveColor: Colors.grey,
                      min: 130,
                      max: 210,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style:
                            GoogleFonts.lato(fontSize: 40, color: Colors.red),
                      ),
                      Text(
                        " $weight",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.white12,
                            mini: true,
                            onPressed: () {
                              if (weight > 1) {
                                setState(() {
                                  weight--;
                                });
                              }
                            },
                            child: Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.white12,
                            mini: true,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style:
                              GoogleFonts.lato(fontSize: 40, color: Colors.red),
                        ),
                        Text(
                          " $weight",
                          style: TextStyle(color: Colors.orange),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: () {
                                if (weight > 1) {
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.white12,
                              mini: true,
                              onPressed: () {
                                setState(() {
                                  if (age > 1) {
                                    setState(() {
                                      weight++;
                                    });
                                  }
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
