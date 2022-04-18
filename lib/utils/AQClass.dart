class AQ{
  final temperature;
  final humidity;
  final pm25;
  final id;

  const AQ({
    required this.id,
    required this.temperature,
    required this.humidity,
    required this.pm25,
});

  factory AQ.fromJson(Map<String, dynamic> json){
    return AQ(
      id: json['entry_id'],
      humidity: json['field2'],
      temperature: json['field1'],
      pm25: json['field3'],
    );
  }
}