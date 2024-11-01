import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String time;
  final Color backgroundColor; // Tambahkan parameter untuk background

  DetailCard({
    required this.title,
    required this.time,
    this.backgroundColor = const Color(0xFFE0E0E0), // Warna default abu-abu
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor, // Menggunakan warna background yang diatur
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          Text(
            time,
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
