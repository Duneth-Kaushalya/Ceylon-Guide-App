import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GuidePage()));
}

class GuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUIDE'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 84, 247, 250),
                Color.fromARGB(255, 170, 248, 225)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              stops: [0.4, 0.7],
              tileMode: TileMode.repeated,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/guide.png'),
              DataTable(
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Availability')),
                  DataColumn(label: Text('Details')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Guide 1')), // Replace with actual guide details
                    DataCell(Text('Available')), // Replace with actual guide details
                    DataCell(
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to GuideDetailsPage on button press
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GuideDetailsPage(),
                            ),
                          );
                        },
                        child: Text('More'),
                      ),
                    ),
                  ]),
                  // Add more DataRow widgets for additional guides as needed
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GuideDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guide Details'),
      ),
      body: Center(
        child: Text('Guide Details Page'), // Add details as needed
      ),
    );
  }
}
