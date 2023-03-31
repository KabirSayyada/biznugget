import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String get formatted {
    final difference = DateTime.now().difference(this);
    if (difference.inDays == 0) {
      return DateFormat('hh:mm').format(this);
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else {
      return DateFormat('dd-MM-yyyy').format(this);
    }
  }
}
