import 'package:flutter/material.dart';

class bmii extends StatelessWidget {
  const bmii({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.yellow],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                "BMI CALCULATOR",
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: Card(
                  elevation: 60,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            labelText: "height(cm)",
                            prefixIcon: Icon(Icons.height),
                            filled: true,
                          ),
                        ),
                        SizedBox(height: 30),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            labelText: "weight(kg)",
                            prefixIcon: Icon(Icons.monitor_weight),
                            filled: true,
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 50,
                          width: 400,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.red, Colors.yellow],
                            ),
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Calculator"),
                          ),
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
    );
  }
}
