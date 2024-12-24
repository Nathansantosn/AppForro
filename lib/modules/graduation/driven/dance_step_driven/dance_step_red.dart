class DanceStepRed {
  DanceStepRed({required this.name, this.checked = false})
      : code = DateTime.now().microsecondsSinceEpoch.toString();

  bool checked;
  final String name;
  final String code;
}

final List<DanceStepRed> danceStepReds = [
  DanceStepRed(name: 'Cordenadin'),
  DanceStepRed(name: 'Sacada coice'),
  DanceStepRed(name: 'Skip'),
  DanceStepRed(name: 'Sacada Multipla'),
  DanceStepRed(name: 'Auxiliadin'),
  DanceStepRed(name: 'Unifanforrosca'),
  DanceStepRed(name: 'Pipa')
];
