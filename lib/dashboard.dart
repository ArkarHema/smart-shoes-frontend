import 'package:flutter/material.dart';
import 'package:smartshoes/run.dart';
import 'package:smartshoes/sweat.dart';
import 'package:smartshoes/temp.dart';
import 'package:smartshoes/walk.dart';
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Column(
              children: [
                Column(
                  children: [Icon(Icons.directions_walk),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WalkPage()),
                        );
                      },
                      child: Text('Steps walked'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Icon(Icons.run_circle_outlined),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RunPage()),
                        );
                      },
                      child: Text('Steps ran'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Icon(Icons.thermostat_auto),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TempPage()),
                        );
                      },
                      child: Text('Body Temperature'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Icon(Icons.water_drop_sharp),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SweatPage()),
                        );
                      },
                      child: Text('Level of sweating'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}