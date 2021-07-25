enum Options { rock, paper, scissors }

const List<Map> weapons = [rock, paper, scissors];
const int decisionTime = 5;

const Map rock = {
  "name": Options.rock,
  'icon': 'assets/rock.png',
  'weakness': [Options.paper]
};
const Map paper = {
  "name": Options.paper,
  'icon': 'assets/paper.png',
  'weakness': [Options.scissors]
};
const Map scissors = {
  "name": Options.scissors,
  'icon': 'assets/scissors.png',
  'weakness': [Options.rock]
};
