import 'package:flutter/material.dart';
import 'package:forro/modules/graduation/driven/dance_step_driven/dance_step.dart';
import 'package:forro/modules/graduation/driven/page_driven/dance_page.dart';

import 'driven/global/graduation_progress.dart';

class GraduationDanceDriven extends StatefulWidget {
  const GraduationDanceDriven({super.key});

  @override
  State<GraduationDanceDriven> createState() => _GraduationDanceDriven();
}

class _GraduationDanceDriven extends State<GraduationDanceDriven> {
  @override
  Widget build(BuildContext context) {
    List<GraduationEntity> graduations = [
      GraduationEntity(
          color: Colors.yellow, label: 'Amarelo', danceSteps: danceStepYellow),
      GraduationEntity(
          color: Colors.blue, label: 'Azul', danceSteps: danceStepBlue),
      GraduationEntity(
          color: Colors.red, label: 'Vermelho', danceSteps: danceStepRed),
      GraduationEntity(
          color: Colors.orange, label: 'Laranja', danceSteps: danceStepOrange),
    ];

    double getValue(Color color) {
      switch (color) {
        case Colors.yellow:
          return GraduationProgress.nivelYellow / danceStepYellow.length;
        case Colors.blue:
          return GraduationProgress.nivelBlue / danceStepBlue.length;
        case Colors.red:
          return GraduationProgress.nivelRed / danceStepRed.length;
        default:
          return GraduationProgress.nivelOrange / danceStepOrange.length;
      }
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        title: const Text('Graduações'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: GridView.builder(
        itemCount: graduations.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final graduation = graduations[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _buildNavigationBox(
                  context,
                  graduation.color,
                  graduation.label,
                  DancePage(
                    onUpdate: (_) => setState(() {}),
                    danceSteps: graduation.danceSteps,
                    color: graduation.color,
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  color: graduation.color,
                  value: getValue(graduation.color),
                ),
              )
            ],
          );
        },
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

class GraduationEntity {
  const GraduationEntity({
    required this.color,
    required this.label,
    required this.danceSteps,
  });

  final Color color;
  final String label;
  final List<DanceStep> danceSteps;
}
