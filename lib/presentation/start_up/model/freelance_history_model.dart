class History {
  final String employee;
  final String jobRole;
  final String pay;
  final bool isDone;

  History(
      {required this.employee,
      required this.jobRole,
      required this.pay,
      required this.isDone});
}

List<History> history = [
  History(
      employee: 'Tambo tech',
      jobRole: 'Frontend developer',
      pay: "120,000",
      isDone: true),
  History(
      employee: 'Rexus tech',
      jobRole: 'Frontend developer',
      pay: "100,000",
      isDone: false),
];
