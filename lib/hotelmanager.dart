import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HotelManagerPage(),
  ));
}

class HotelManagerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 214, 207),
        title: const Text(
          "HOTEL MANAGER",
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(labelText: 'NAME'),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(labelText: 'LOCATION'),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(labelText: 'HOTEL DETAILS'),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(labelText: 'TELEPHONE'),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(labelText: 'EMAGE(Hotel)'),
              ),
              const SizedBox(height: 15),
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(label: Text('Room Type')),
                  DataColumn(label: Text('Price per Night')),
                  DataColumn(label: Text('Amount Available')),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Single')),
                      DataCell(TextField()),
                      DataCell(TextField()),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Double')),
                      DataCell(TextField()),
                      DataCell(TextField()),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Family')),
                      DataCell(TextField()),
                      DataCell(TextField()),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(label: Text('Food Types')),
                  DataColumn(label: Text('Price')),
                  DataColumn(label: Text('Availability')),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Breakfast')),
                      DataCell(TextField()),
                      DataCell(OnOffSwitch()),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Lunch')),
                      DataCell(TextField()),
                      DataCell(OnOffSwitch()),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Dinner')),
                      DataCell(TextField()),
                      DataCell(OnOffSwitch()),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(label: Text('Customer Name')),
                  DataColumn(label: Text('Received')),
                  DataColumn(label: Text('Accept')),
                  DataColumn(label: Text('Cancel')),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(TextField()),
                      DataCell(OnOffSwitch()), 
                      DataCell(OnOffSwitch()), 
                      DataCell(OnOffSwitch()), 
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomInput extends StatefulWidget {
  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Price',
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class OnOffSwitch extends StatefulWidget {
  @override
  _OnOffSwitchState createState() => _OnOffSwitchState();
}

class _OnOffSwitchState extends State<OnOffSwitch> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitched,
      onChanged: (value) {
        setState(() {
          _isSwitched = value;
        });
      },
    );
  }
}







