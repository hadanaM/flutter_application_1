import 'package:flutter/material.dart';
import 'widgets/detail_card.dart';

class TaskDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '1:00 PM - 2:30 PM',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'PM Meeting',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Discussion of tasks for the month',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/user_avatar_$index.png'),
                      radius: 20,
                    ),
                  );
                }),
              ),
              SizedBox(height: 16),
              Text(
                'Plan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              DetailCard(
                title: 'Discussion of the brief from the customer, which includes initial insights and feedback',
                time: '1:00 - 1:30 PM',
                backgroundColor: Colors.orangeAccent, // Background oranye untuk kartu pertama
              ),
              DetailCard(
                title: 'Assignment of roles and responsibilities within the team for project tasks',
                time: '1:30 - 2:00 PM',
              ),
              DetailCard(
                title: 'Summarizing and documenting the results and takeaways of the meeting',
                time: '2:00 - 2:30 PM',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
