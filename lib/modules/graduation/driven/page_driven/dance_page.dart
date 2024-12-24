import 'package:flutter/material.dart';

import '../dance_show_video/dance_show_video_page.dart';
import '../dance_step_driven/dance_step.dart';
import '../global/graduation_progress.dart';

class DancePage extends StatefulWidget {
  const DancePage({
    super.key,
    required this.onUpdate,
    required this.danceSteps,
    required this.color,
  });

  final Function(int level) onUpdate;
  final List<DanceStep> danceSteps;
  final Color color;

  @override
  State<DancePage> createState() => _DancePageState();
}

class _DancePageState extends State<DancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: widget.color,
        title: const Text('Evolução'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: ListView.separated(
        itemCount: widget.danceSteps.length,
        itemBuilder: (_, index) {
          final danceStep = widget.danceSteps[index];

          return CheckboxListTile(
            value: danceStep.checked,
            title: Text(
              danceStep.name,
              style: const TextStyle(fontSize: 20),
            ),
            onChanged: (bool? value) {
              setState(() {
                danceStep.checked = value!;
                if (value) {
                  if (widget.color == Colors.yellow) {
                    GraduationProgress.nivelYellow++;
                  } else if (widget.color == Colors.blue) {
                    GraduationProgress.nivelBlue++;
                  } else if (widget.color == Colors.red) {
                    GraduationProgress.nivelRed++;
                  } else if (widget.color == Colors.orange) {
                    GraduationProgress.nivelOrange++;
                  }
                } else {
                  if (widget.color == Colors.yellow) {
                    GraduationProgress.nivelYellow--;
                  } else if (widget.color == Colors.blue) {
                    GraduationProgress.nivelBlue--;
                  } else if (widget.color == Colors.red) {
                    GraduationProgress.nivelRed--;
                  } else if (widget.color == Colors.orange) {
                    GraduationProgress.nivelOrange--;
                  }
                }
              });
              widget.onUpdate(0);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DanceShowVideoPage(
                            name: danceStep.name,
                            description: danceStep.description,
                            youtubeID: danceStep.youtubeId,
                          )));
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
