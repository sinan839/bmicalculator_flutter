import 'package:flutter/material.dart';

class Bmii extends StatefulWidget {
  const Bmii({super.key});

  @override
  State<Bmii> createState() => _BmiiState();
}

class _BmiiState extends State<Bmii> {
  final hcalc = TextEditingController();
  final wcalc = TextEditingController();
  double bmi=0;
  String result="";
  void bmiii() {
    double h =double.parse(hcalc.text)/100;
    double w =double.parse(wcalc.text);
    double bmi=w/(h*h);
    setState(() {
      result="your BMI is ${bmi.toStringAsFixed(2)}";
    });
  }

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
                          controller: hcalc,
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
                          controller: wcalc,
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
                            onPressed: () {bmiii();},
                            child: Text("Calculator"),
                          ),
                        ),
                      Text(result)],
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
