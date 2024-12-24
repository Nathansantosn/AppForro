import 'package:flutter/material.dart';
import 'package:forro/modules/graduation/driven/dance_step_driven/dance_step_red.dart';

class PageRed extends StatefulWidget {
  const PageRed({super.key});

  @override
  State<PageRed> createState() => _PageRedState();
}

class _PageRedState extends State<PageRed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.red,
        title: const Text('Evolução na Vermelha'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: ListView.separated(
          itemCount: danceStepReds.length,
          itemBuilder: (_, index) {
            final DanceStepRed danceStepRed = danceStepReds[index];

            return CheckboxListTile(
              value: danceStepRed.checked,
              title: Text(
                danceStepRed.name,
                style: const TextStyle(fontSize: 20),
              ),
              onChanged: (bool? value) {
                setState(() {
                  danceStepRed.checked = value!;
                });
              },
            );
          },
          separatorBuilder: (_, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            );
          }),
    );
  }
}
