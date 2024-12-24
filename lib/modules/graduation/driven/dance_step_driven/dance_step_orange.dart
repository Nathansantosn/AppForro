class DanceStepOrange {
  DanceStepOrange({required this.name, this.checked = false})
      : code = DateTime.now().microsecondsSinceEpoch.toString();

  bool checked;
  final String name;
  final String code;
}

final List<DanceStepOrange> danceStepOranges = [
  DanceStepOrange(name: 'Esticado'),
  DanceStepOrange(name: 'Skip Duplo'),
  DanceStepOrange(name: 'Enroladão Frente'),
  DanceStepOrange(name: 'Flic-flac Salto'),
  DanceStepOrange(name: 'Cadena'),
  DanceStepOrange(name: 'Gangorra Circular/Angular'),
  DanceStepOrange(name: 'Inversin Destro Costas'),
  DanceStepOrange(name: 'Fricção frente/Fricção costas'),
  DanceStepOrange(name: 'Catada Gancho'),
  DanceStepOrange(name: 'Auxiliadin Preso'),
  DanceStepOrange(name: 'Baloné'),
  DanceStepOrange(name: 'Auxiliadão'),
  DanceStepOrange(name: 'Inversin Destro/Canhoto'),
];
