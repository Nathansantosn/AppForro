import 'package:flutter/material.dart';
import 'package:forro/modules/graduation/driven/dance_step_driven/dance_step.dart';

class Pageyellow extends StatefulWidget {
  const Pageyellow({super.key});

  @override
  State<Pageyellow> createState() => _PageyellowState();
}

class _PageyellowState extends State<Pageyellow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.yellow,
        title: const Text('Evolução na Amarela'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: ListView.separated(
        itemCount: danceStepYallous.length,
        itemBuilder: (_, index) {
          final DanceStepYallou danceStepYallou = danceStepYallous[index];

          return CheckboxListTile(
            value: danceStepYallou.checked,
            title: Text(
              danceStepYallou.name,
              style: const TextStyle(fontSize: 20),
            ),
            onChanged: (bool? value) {
              setState(() {
                danceStepYallou.checked = value!;
                GraduationProgress.nivelYallow++;
                print(GraduationProgress.nivelYallow);
              });
            },
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

class GraduationProgress {
  static int nivelYallow = 0;
}
