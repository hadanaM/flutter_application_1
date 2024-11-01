import 'package:flutter/material.dart';
import 'widgets/calendar_widget.dart';
import 'widgets/task_card.dart';
import 'task_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Menu dibuka')),
            );
          },
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/user_avatar.png'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'March',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 16),

          // Calendar Widget with fixed height
          SizedBox(
            height: screenHeight * 0.2, // Allocating 20% of screen height for calendar
            child: CalendarWidget(),
          ),

          // Expanded Container to fill remaining space with Task Cards
          Expanded(
            child: Container(
              width: screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 206, 203, 203),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: ListView(
                children: [
                  TaskCard(
                    title: 'Team Meeting',
                    description: 'Discussing the project with the team',
                    showCheck: true,
                    color: Colors.yellow,
                    onTap: () {},
                  ),
                  TaskCard(
                    title: 'One-to-one',
                    description: 'Repeats every two weeks',
                    time: '12:00 PM - 1:00 PM',
                    showToday: true,
                    duration: '1 h',
                    showArrow: true,
                    color: Colors.white,
                    onTap: () {},
                  ),
                  TaskCard(
                    title: 'PM Meeting',
                    description: 'Discussion of tasks for the month',
                    time: '1:00 PM - 2:30 PM',
                    showToday: true,
                    duration: '1 h 30 min',
                    showArrow: true,
                    color: Colors.white,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TaskDetailScreen()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
