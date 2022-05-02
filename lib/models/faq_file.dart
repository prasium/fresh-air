class QA {
  QA(this.title, this.answer);

  final String title;
  final String answer;
}

final List<QA> data = <QA>[
  QA(
    'What is PM 2.5?',
   'Mixture of Solid Particulate Matter and Liquid droplets found in the air.'),
  QA(
      'What are the examples of PM 2.5',
      'Dust, Dirt, Smoke or Ash, etc.'),
  QA(
      'What are the health conditions that can cause due to increase in PM 2.5 level?',
      'Aggravated respiratory issues, lung damage, etc.'),
  QA(
      'What should I do to be safe from PM 2.5?',
      'Wear an air pollution mask before stepping out of the home.\nInstall HEPA air purifier which removes indoor air particles'),
  QA(
      "What I shouldn't do when there's PM 2.5 alert?",
      'Avoid activities that make you breathe faster or more deeply.\nDon\'t smoke indoors or burn candles or incense sticks.'),
  QA(
      'What is the standard PM2.5 for a healthy life?',
      '0-8.9 ug/m^3 is considered low as per 24-hour PM 2.5.'),
  QA(
      'Is PM 2.5 harmful to health?',
      'PM 2.5 can penetrate deeply into the lung, irritate and corrode the alveolar wall, and consequently impair lung function.'),
];
