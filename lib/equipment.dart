import 'package:flutter/material.dart';
import 'package:try1/accommodation.dart';
import 'package:try1/budget.dart';
import 'package:try1/guide.dart';
import 'package:try1/taxi.dart';



void main() {
  runApp(EquipmentPage());
}

class EquipmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      home: MenuBarAnimation(),
    );
  }
}

class MenuBarAnimation extends StatefulWidget {
  @override
  _MenuBarAnimationState createState() => _MenuBarAnimationState();
}

class _MenuBarAnimationState extends State<MenuBarAnimation> {
  bool isMenuOpen = false;
  DateTime? _startDate;
  DateTime? _endDate;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _startDate) {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _endDate) {
      setState(() {
        _endDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 214, 207),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: toggleMenu,
        ),
        title: Text(
          "TRAVELER",
          style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 193, 207, 212).withOpacity(0.1),
              image: DecorationImage(image: AssetImage('assets/water.png'), fit: BoxFit.cover),
            ),
          ),
          isMenuOpen
              ? Container(
                  width: 150,
                  height: 350,
                  color: Colors.black54,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      ListTile(
                        title: Text('Location', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PlaceToVisitPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text('Maps', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text('Taxi', style: TextStyle(color: Colors.white)),
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TaxiPage()),
                          );
                          // Handle Taxi onTap
                        },
                      ),
                      ListTile(
                        title: Text('Accommodation', style: TextStyle(color: Colors.white)),
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AccommodationPage()),
                          );
                          // Handle Accommodation onTap
                        },
                      ),
                      ListTile(
                        title: Text('Guide', style: TextStyle(color: Colors.white)),
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GuidePage()),
                          );
                          // Handle Guide onTap
                        },
                      ),
                      ListTile(
                        title: Text('Equipment', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Handle Equipment onTap
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EquipmentPage()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text('Budget', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Handle Budget onTap
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BudgetPage()),
                          );
                        },
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => _selectStartDate(context),
                  child: Text(_startDate != null ? 'Start Date: ${_startDate!.toString()}' : 'Select Start Date'),
                ),
                ElevatedButton(
                  onPressed: () => _selectEndDate(context),
                  child: Text(_endDate != null ? 'End Date: ${_endDate!.toString()}' : 'Select End Date'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceToVisitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for the PlaceToVisitPage here
    return Scaffold(
      appBar: AppBar(
        title: Text('Place to Visit'),
      ),
      body: Center(
        child: Text('Place to Visit Page Content'),
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for the MapPage here
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: Center(
        child: Text('Map Page Content'),
      ),
    );
  }
}
