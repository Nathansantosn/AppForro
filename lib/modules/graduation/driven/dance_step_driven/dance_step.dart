class DanceStepYallou {
  DanceStepYallou({required this.name, this.checked = false})
      : code = DateTime.now().microsecondsSinceEpoch.toString();

  bool checked;
  final String name;
  final String code;
}

final List<DanceStepYallou> danceStepYallous = [
  DanceStepYallou(name: 'Esmeril swingado'),
  DanceStepYallou(name: 'Enrolado'),
  DanceStepYallou(name: 'Sacada'),
  DanceStepYallou(name: 'Giradin'),
  DanceStepYallou(name: 'Pião'),
  DanceStepYallou(name: 'Gangorra'),
  DanceStepYallou(name: 'Gandorra Invertida'),
  DanceStepYallou(name: 'Inversin com Posição Abraçada')
];
