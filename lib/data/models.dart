class Message {
  final String to, from, content;
  final DateTime time;

  const Message({
    required this.to,
    required this.from,
    required this.content,
    required this.time,
  });
}
