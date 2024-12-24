class DanceStepBlue {
  DanceStepBlue({required this.name, this.checked = false})
      : code = DateTime.now().microsecondsSinceEpoch.toString();

  final String name;
  final String code;
  bool checked;
}

final List<DanceStepBlue> danceStepblues = [
  DanceStepBlue(name: 'Rodadinha'),
  DanceStepBlue(name: 'Rosca'),
  DanceStepBlue(name: 'Moldurável'),
  DanceStepBlue(name: 'Pião Oposto'),
  DanceStepBlue(name: 'Paulista'),
  DanceStepBlue(name: 'Push pull'),
  DanceStepBlue(name: 'Inverson Solto'),
  DanceStepBlue(name: 'Inverson com Ambidestro'),
];
