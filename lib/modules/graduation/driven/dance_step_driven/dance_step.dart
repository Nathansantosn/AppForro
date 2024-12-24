class DanceStep {
  DanceStep({
    required this.name,
    this.checked = false,
    required this.youtubeId,
    required this.description,
  }) : code = DateTime.now().microsecondsSinceEpoch.toString();

  bool checked;
  final String name;
  final String code;
  final String youtubeId;
  final String description;
}

final List<DanceStep> danceStepBlue = [
  DanceStep(
      name: 'Rodadinha',
      youtubeId: 'la3sijkQJ7Y',
      description:
          'A "Rodadinha" é um passo circular suave onde o parceiro conduz a parceira em um giro completo. Comece segurando as mãos em posição fechada e gire no sentido horário, mantendo os pés próximos ao solo para um movimento fluido e contínuo.'),
  DanceStep(
      name: 'Rosca',
      youtubeId: 'def456',
      description:
          'O passo "Rosca" envolve um movimento em espiral. O líder guia a parceira em um giro estreito, criando um efeito visual de torção. Use a troca de mãos alternadas para adicionar complexidade e ritmo ao movimento.'),
  DanceStep(
      name: 'Moldurável',
      youtubeId: 'ghi789',
      description:
          'No "Moldurável", os dançarinos mantêm uma postura elegante enquanto criam formas com os braços. Inicie com um movimento lateral e leve os braços para formar um quadro ao redor dos corpos, destacando o estilo visual.'),
  DanceStep(
      name: 'Pião Oposto',
      youtubeId: 'jkl012',
      description:
          'O "Pião Oposto" requer um giro rápido em direção contrária ao movimento inicial. Comece com um impulso suave e mantenha a base dos pés firmes para evitar perda de equilíbrio durante a rotação.'),
  DanceStep(
      name: 'Paulista',
      youtubeId: 'mno345',
      description:
          'Inspirado nos movimentos tradicionais paulistas, esse passo utiliza deslocamentos laterais rápidos. Mantenha a sincronia com o parceiro enquanto alterna os lados e desliza pelo salão.'),
  DanceStep(
      name: 'Push pull',
      youtubeId: 'pqr678',
      description:
          'O "Push pull" consiste em um jogo de empurrar e puxar controlado. O líder aplica uma leve pressão para empurrar o parceiro e depois puxa suavemente para trazê-lo de volta, mantendo a fluidez.'),
  DanceStep(
      name: 'Inverson Solto',
      youtubeId: 'stu901',
      description:
          'Nesse passo, há uma inversão de posições com movimentos livres. Inicie com um giro básico e, em seguida, alterne as posições sem soltar as mãos para criar um efeito dinâmico.'),
  DanceStep(
      name: 'Inverson com Ambidestro',
      youtubeId: 'vwx234',
      description:
          'Essa variação envolve inversões com troca de mãos. O líder utiliza as duas mãos alternadamente para guiar os giros e alternâncias, destacando a coordenação e o controle.'),
];

final List<DanceStep> danceStepYellow = [
  DanceStep(
      name: 'Esmeril swingado',
      youtubeId: 'yz567',
      description:
          'O "Esmeril swingado" combina balanço e giros rápidos. Mantenha os joelhos flexionados para dar leveza ao movimento enquanto balança para os lados no ritmo da música.'),
  DanceStep(
      name: 'Enrolado',
      youtubeId: 'abc890',
      description:
          'No "Enrolado", os braços dos parceiros se entrelaçam suavemente em movimentos circulares. A execução requer atenção na postura para não perder o equilíbrio durante o desenrolar do movimento.'),
  DanceStep(
      name: 'Sacada',
      youtubeId: 'def123',
      description:
          'A "Sacada" é marcada por um giro repentino. O líder utiliza o corpo para criar um espaço que convida a parceira a girar rapidamente em torno de si.'),
  DanceStep(
      name: 'Giradin',
      youtubeId: 'ghi456',
      description:
          'Passo composto por giros consecutivos em pequena escala. O foco está na precisão e na velocidade dos giros, mantendo os pés próximos ao chão.'),
  DanceStep(
      name: 'Pião',
      youtubeId: 'jkl789',
      description:
          'O "Pião" é um giro completo onde o corpo deve permanecer alinhado. Utilize a base dos pés para girar de forma controlada e suave.'),
  DanceStep(
      name: 'Gangorra',
      youtubeId: 'mno012',
      description:
          'A "Gangorra" envolve balanços para frente e para trás. A movimentação precisa ser fluida, imitando o movimento de um balanço.'),
  DanceStep(
      name: 'Gandorra Invertida',
      youtubeId: 'pqr345',
      description:
          'Versão invertida do passo Gangorra. O líder cria um efeito de balança em direção oposta, mantendo o ritmo e o controle do movimento.'),
  DanceStep(
      name: 'Inversin com Posição Abraçada',
      youtubeId: 'stu678',
      description:
          'Esse passo combina inversões mantendo os parceiros em posição fechada. Os braços devem permanecer fixos para garantir estabilidade.'),
];
final List<DanceStep> danceStepRed = [
  DanceStep(
      name: 'Cordenadin',
      youtubeId: 'vwx901',
      description:
          'Passo coordenado com transições precisas, exigindo sincronia entre os parceiros para manter o ritmo e a estética do movimento.'),
  DanceStep(
      name: 'Sacada coice',
      youtubeId: 'yz234',
      description:
          'Movimento ágil que simula um chute controlado, perfeito para transições rápidas e dinâmicas no ritmo da música.'),
  DanceStep(
      name: 'Skip',
      youtubeId: 'abc567',
      description:
          'Pequenos saltos contínuos, proporcionando leveza e um ritmo acelerado, ideais para danças mais vibrantes e animadas.'),
  DanceStep(
      name: 'Sacada Multipla',
      youtubeId: 'def890',
      description:
          'Sequência de sacadas consecutivas que criam um efeito visual fluido e envolvente, elevando a complexidade coreográfica.'),
  DanceStep(
      name: 'Auxiliadin',
      youtubeId: 'ghi123',
      description:
          'Movimento de suporte que facilita a condução do parceiro durante transições complexas, oferecendo estabilidade e harmonia.'),
  DanceStep(
      name: 'Unifanforrosca',
      youtubeId: 'jkl456',
      description:
          'Passo combinado que inclui giros e finalizações circulares, criando um efeito dinâmico e estético na dança.'),
  DanceStep(
      name: 'Pipa',
      youtubeId: 'mno789',
      description:
          'Movimento leve e fluido que imita o voo de uma pipa, trazendo suavidade e elegância para a coreografia.'),
];

final List<DanceStep> danceStepOrange = [
  DanceStep(
      name: 'Esticado',
      youtubeId: 'pqr012',
      description:
          'Movimento alongado que destaca a extensão máxima do corpo, realçando a postura e a expressividade dos dançarinos.'),
  DanceStep(
      name: 'Skip Duplo',
      youtubeId: 'stu345',
      description:
          'Dois saltos rápidos e consecutivos, com ritmo bem definido, adicionando dinamismo e vibração à performance.'),
  DanceStep(
      name: 'Enroladão Frente',
      youtubeId: 'vwx678',
      description:
          'Grande enrolamento para frente que envolve os dois parceiros em uma conexão visual e física impressionante.'),
  DanceStep(
      name: 'Flic-flac Salto',
      youtubeId: 'yz901',
      description:
          'Salto acrobático que combina ida e volta em um movimento fluido, ideal para performances energéticas e impactantes.'),
  DanceStep(
      name: 'Cadena',
      youtubeId: 'abc234',
      description:
          'Sequência contínua de movimentos encadeados que criam um fluxo elegante e natural na dança.'),
  DanceStep(
      name: 'Gangorra Circular/Angular',
      youtubeId: 'def567',
      description:
          'Movimento oscilante que pode ser executado em formatos circular ou angular, adicionando versatilidade e fluidez à coreografia.'),
  DanceStep(
      name: 'Inversin Destro Costas',
      youtubeId: 'ghi890',
      description:
          'Inversão realizada de costas, exigindo precisão e sincronia para manter a harmonia do passo.'),
  DanceStep(
      name: 'Fricção frente/Fricção costas',
      youtubeId: 'jkl123',
      description:
          'Movimento alternado entre frente e costas, criando contraste visual e variação dinâmica na execução.'),
  DanceStep(
      name: 'Catada Gancho',
      youtubeId: 'mno456',
      description:
          'Passo em formato de gancho, projetado para capturas rápidas e conexões ágeis entre os parceiros.'),
  DanceStep(
      name: 'Auxiliadin Preso',
      youtubeId: 'pqr789',
      description:
          'Movimento de suporte fixo que oferece controle rígido e estabilidade ao parceiro durante transições exigentes.'),
];
