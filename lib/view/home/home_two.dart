import 'package:flutter/material.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.add),
                Text('title')
              ],
            ),

            Row(
              children: [
                SizedBox(width: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.control_point),
                        Text('subtitle')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.control_point),
                        Text('subtitle')
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
