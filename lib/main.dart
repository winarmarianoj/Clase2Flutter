import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Hola que tal", style: TextStyle(
                fontSize: 20, fontFamily: 'WorkSans Regular', color: Colors.indigo,
                fontWeight: FontWeight.w900
              )),
              Card(color: const Color(0xFFFF5733), elevation: 5,                
                child: Image.network('https://cdn.pixabay.com/photo/2016/11/29/04/19/ocean-1867285__480.jpg'),
                shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100),
                          ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}