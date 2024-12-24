import 'package:flutter/material.dart';
import 'package:forro/modules/graduation/driven/dance_step_driven/dance_step_orange.dart';

class PageOrange extends StatefulWidget {
  const PageOrange({super.key});

  @override
  State<PageOrange> createState() => _PageOrangeState();
}

class _PageOrangeState extends State<PageOrange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        title: const Text('Evolução na Laranja'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      ),
      body: ListView.separated(
        itemCount: danceStepOranges.length,
        itemBuilder: (_, index) {
          final DanceStepOrange danceStepOrange = danceStepOranges[index];

          return CheckboxListTile(
            value: danceStepOrange.checked,
            title: Text(
              danceStepOrange.name,
              style: const TextStyle(fontSize: 20),
            ),
            onChanged: (bool? value) {
              setState(() {
                danceStepOrange.checked = value!;
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
