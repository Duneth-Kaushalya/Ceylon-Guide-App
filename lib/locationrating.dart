import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LocationRatingPage(),
  ));
}

class LocationRatingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 214, 207),
        title: const Text(
          "Location Rating",
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.white, // Set your desired background color here
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 84, 247, 250), Color.fromARGB(255, 170, 248, 225)],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                stops: [0.4, 0.7],
                tileMode: TileMode.repeated,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Rating Image
                Image.asset(
                  'assets/rating.png', // Replace with the actual path to your image
                  height: 50, // Set your desired height
                  width: 50, // Set your desired width
                ),

                // Table with Name, Review, Rating columns
                Table(
                  border: TableBorder.all(color: Colors.black),
                  children: const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Name')),
                        ),
                        TableCell(
                          child: Center(child: Text('Review')),
                        ),
                        TableCell(
                          child: Center(child: Text('Rating')),
                        ),
                      ],
                    ),
                    // Repeat the below row structure for each entry
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('John')),
                        ),
                        TableCell(
                          child: Center(child: Text('Great place!')),
                        ),
                        TableCell(
                          child: Center(child: Text('5')),
                        ),
                      ],
                    ),
                    // Add more rows as needed
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
