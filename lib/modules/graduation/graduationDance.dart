import 'package:flutter/material.dart';
import 'package:forro/modules/graduation/driven/PageDriven/page_blue.dart';
import 'package:forro/modules/graduation/driven/PageDriven/page_orange.dart';
import 'package:forro/modules/graduation/driven/PageDriven/page_red.dart';
import 'package:forro/modules/graduation/driven/PageDriven/page_yallow.dart';

class GraduationDanceDriven extends StatefulWidget {
  const GraduationDanceDriven({super.key});

  @override
  State<GraduationDanceDriven> createState() => _GraduationDanceDriven();
}

class _GraduationDanceDriven extends State<GraduationDanceDriven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        title: const Text('Graduações'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _buildNavigationBox(context, Colors.yellow,
                          'Amarela', const Pageyellow()),
                    ),
                    Container(
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Colors.yellow,
                        value: GraduationProgress.nivelYallow / 10,
                      ),
                      width: 150,
                      height: 10,
                    )
                  ],
                ),
                Column(
                  children: [
                    _buildNavigationBox(
                        context, Colors.blue, 'Azul', const PageBlue()),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildNavigationBox(
                    context, Colors.red, 'Vermelha', const PageRed()),
                _buildNavigationBox(
                    context, Colors.orange, 'Laranja', const PageOrange()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildNavigationBox(
    BuildContext context, Color color, String label, Widget page) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => (page)),
      );
    },
    child: Container(
      color: color,
      width: 150,
      height: 150,
      child: Center(
        child: Text(
          label,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
