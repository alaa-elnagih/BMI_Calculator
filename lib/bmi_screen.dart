import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() {
    return _BmiScreenState();
  }
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 180;
  int weight = 80;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000022),

      appBar: AppBar(
        backgroundColor: Color(0xff000022),
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // male & female
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale
                              ? const Color(0xffd93559)
                              : const Color(0xff151527),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 60, color: Colors.white),
                            SizedBox(height: 10),
                            Text("MALE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: !isMale
                              ? const Color(0xffd93559)
                              : const Color(0xff151527),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 60, color: Colors.white),
                            SizedBox(height: 10),
                            Text("FEMALE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // height
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff151527),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("HEIGHT",
                        style: TextStyle(color: Color(0xff494957))),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40),
                        ),
                        const Text(" cm",
                            style: TextStyle(color: Color(0xff494957))),
                      ],
                    ),
                    Slider(
                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                      min: 100,
                      max: 220,
                      activeColor: Colors.white,
                      thumbColor: const Color(0xffb02e4e),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // weight & age
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  // weight
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff151527),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("WEIGHT",
                              style: TextStyle(
                                  color: Color(0xff494957), fontSize: 20)),
                          const SizedBox(height: 10),
                          Text("$weight",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 50)),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "w-",
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(width: 10),
                              FloatingActionButton(
                                heroTag: "w+",
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  // age
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff151527),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("AGE",
                              style: TextStyle(
                                  color: Color(0xff494957), fontSize: 20)),
                          const SizedBox(height: 10),
                          Text("$age",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 50)),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "a-",
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(width: 10),
                              FloatingActionButton(
                                heroTag: "a+",
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // calculate button
          Container(
            width: double.infinity,
            height: 60,
            child: MaterialButton(
              color: const Color(0xffd93559),
              onPressed: () {

              },
              child: const Text("CALCULATE",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}


