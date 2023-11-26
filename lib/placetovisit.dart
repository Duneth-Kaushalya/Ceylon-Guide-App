import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:try1/locationrating.dart';

class PlaceToVisitPage extends StatefulWidget {
  @override
  _PlaceToVisitPageState createState() => _PlaceToVisitPageState();
}

class _PlaceToVisitPageState extends State<PlaceToVisitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Place to Visit'),
        backgroundColor: const Color.fromARGB(255, 69, 214, 207),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Locations',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Dunhinda Waterfall',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Dunhinda Falls is a waterfall located about 5 kilometres from Badulla in the lower central hills of Sri Lanka. The waterfall, which is 64 metres high, gets its name from the smoky dew drops spray, which surrounds the area at the foot of the waterfall. The fall is created by the Badulu Oya which flows through Badulla.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              // Image Slider
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: [
                  'assets/d1.png',
                  'assets/d2.png',
                  'assets/d3.png', // Add more image URLs if needed
                ].map((item) => Image.network(item)).toList(),
              ),
              // Ratings and Reviews Section
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Location Name'),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Price'),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Ratings'),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Reviews'),
                      ),
                    ),
                  ],
                ),
              ),
              // Link to Another Page
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocationRatingPage()),
                    );
                  },
                  child: const Text(
                    'view location rating?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              // Submit Button
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the submit button press
                    // Add your logic here
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: PlaceToVisitPage(),
    ));
