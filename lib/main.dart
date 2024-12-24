import 'package:flutter/material.dart';
import 'package:forro/modules/graduation/graduation_dance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePege());
  }
}

class HomePege extends StatelessWidget {
  const HomePege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Posição'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildNavigationBox(
                    context, 'Condutor', const GraduationDanceDriven()),
                _buildNavigationBox(context, 'Conduzida', const HomePege())
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildNavigationBox(BuildContext context, String label, Widget page) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => (page)),
      );
    },
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.orange,
          width: 200,
          height: 200,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ),
  );
}
