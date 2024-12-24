import 'package:flutter/material.dart';
import 'package:forro/modules/graduation/driven/dance_step_driven/dance_step_blue.dart';

class PageBlue extends StatefulWidget {
  const PageBlue({super.key});

  @override
  State<PageBlue> createState() => _PageBlueState();
}

class _PageBlueState extends State<PageBlue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.blue,
        title: const Text('Evolução na Azul'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: ListView.separated(
        itemCount: danceStepblues.length,
        itemBuilder: (_, index) {
          final DanceStepBlue danceStepBlue = danceStepblues[index];

          return CheckboxListTile(
            value: danceStepBlue.checked,
            title: Text(
              danceStepBlue.name,
              style: const TextStyle(fontSize: 20),
            ),
            onChanged: (bool? value) {},
          );
        },
        separatorBuilder: (_, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          );
        },
      ),
    );
  }
}
