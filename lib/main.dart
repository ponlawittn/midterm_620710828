
import 'package:flutter/material.dart';
import 'package:midterm_620710828/convert.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '620710828',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _tempController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(

        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Temperature Converter',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 30.0,
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),


                        child: Column(
                          children: [
                            const Text('', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                            const Text('', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),

                            Padding(
                              padding: const EdgeInsets.only(top: 16.0, bottom: 10.0),
                              child: TextField(
                                controller: _tempController,
                                decoration: new InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                                  ),
                                  hintText: 'Enter a temperature value to convert',
                                ),
                              ),

                            ), Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: () {
                                var temptext = _tempController.text;

                                double? temp = double.tryParse(temptext);

                                if (temp == null ) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Please enter a value to convert."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }else if (temp is String) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Input error."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                else {
                                  double res = temp * 1.8 + 32.0;
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [

                                              Text('Temperature'),
                                            ],
                                          ),
                                        ),
                                        content: Text(
                                            '$temp Celsius = $res Fahrenheit'),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }


                              }, child: Text('Celsius to Fahrenheit'),

                              ),
                            ),Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: () {
                                var temptext = _tempController.text;

                                double? temp = double.tryParse(temptext);

                                if (temp == null ) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Please enter a value to convert."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }else if (temp is String) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Input error."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                else {
                                  double res = temp + 273.15;
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [

                                              Text('Temperature'),
                                            ],
                                          ),
                                        ),
                                        content: Text(
                                            '$temp Celsius = $res Kelvin'),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }, child: Text('Celsius to Kelvin'),

                              ),
                            ),Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: () {
                                var temptext = _tempController.text;

                                double? temp = double.tryParse(temptext);

                                if (temp == null ) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Please enter a value to convert."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }else if (temp is String) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Input error."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                else {
                                  double res = (temp - 32.0) / 1.8;
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [

                                              Text('Temperature'),
                                            ],
                                          ),
                                        ),
                                        content: Text(
                                            '$temp Fahrenheit = $res Celsius'),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                              }, child: Text('Fahrenheit to Celsius'),

                              ),
                            ),Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: () {
                                var temptext = _tempController.text;

                                double? temp = double.tryParse(temptext);


                                if (temp == null ) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Please enter a value to convert."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }else if (temp is String) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Input error."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                else {
                                  double res = (temp + 459.67) * (5.0 / 9.0);
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [

                                              Text('Temperature'),
                                            ],
                                          ),
                                        ),
                                        content: Text(
                                            '$temp Fahrenheit = $res Kelvin'),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                              }, child: Text('Fahrenheit to Kelvin'),

                              ),
                            ),Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: () {
                                var temptext = _tempController.text;

                                double? temp = double.tryParse(temptext);

                                if (temp == null ) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Please enter a value to convert."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }else if (temp is String) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Input error."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                else {
                                  double res = temp - 273.15;
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [

                                              Text('Temperature'),
                                            ],
                                          ),
                                        ),
                                        content: Text(
                                            '$temp Kelvin = $res Celsius'),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }


                              }, child: Text('Kelvin to Celsius'),

                              ),
                            ),Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: () {
                                var temptext = _tempController.text;

                                double? temp = double.tryParse(temptext);

                                if (temp == null ) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Please enter a value to convert."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }else if (temp is String) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: const Text("Input error."),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                else {
                                  double res = temp * (9.0 / 5.0) - 459.67;
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [

                                              Text('Temperature'),
                                            ],
                                          ),
                                        ),
                                        content: Text(
                                            '$temp Kelvin = $res Fahrenheit'),
                                        actions: [
                                          // ปุ่ม OK ใน dialog
                                          TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                              // ปิด dialog
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                              }, child: Text('Kelvin to Fahrenheit'),

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

          ],
        ),
      ),
    );
  }
}

