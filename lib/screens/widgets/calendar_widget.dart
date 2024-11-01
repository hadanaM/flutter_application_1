import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(7, (index) {
          return Column(
            children: [
              Text(
                ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][index],
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              CircleAvatar(
                backgroundColor: index == 3 ? Colors.white : Colors.transparent,
                child: Text(
                  '${12 + index}',
                  style: TextStyle(
                    color: index == 3 ? Colors.orangeAccent : Colors.white,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
