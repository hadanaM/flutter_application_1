import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String description;
  final String? time;
  final String? duration;
  final bool showToday;
  final bool showCheck;
  final bool showArrow;
  final Color color;
  final VoidCallback onTap;

  TaskCard({
    required this.title,
    required this.description,
    this.time,
    this.duration,
    this.showToday = false,
    this.showCheck = false,
    this.showArrow = false,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (time != null)
                  Text(
                    time!,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                if (time != null) SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    if (showToday)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Today',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ),
                    if (showToday && duration != null) SizedBox(width: 8),
                    if (duration != null)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          duration!,
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            if (showCheck)
              Positioned(
                top: 0,
                right: 0,
                child: Icon(Icons.check_circle, color: Colors.black54),
              ),
            if (showArrow)
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward, color: Colors.black54),
                  onPressed: onTap,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
