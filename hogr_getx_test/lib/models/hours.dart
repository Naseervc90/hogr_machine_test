// lib/models/hours.dart

class Hours {
  final String open;
  final String close;

  Hours({
    required this.open,
    required this.close,
  });

  factory Hours.fromJson(Map<String, dynamic> json) {
    return Hours(
      open: json['open'],
      close: json['close'],
    );
  }
}
