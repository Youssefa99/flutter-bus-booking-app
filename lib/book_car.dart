import 'package:flutter/material.dart';
import 'package:swvl_el8alaba/car.dart';
class  BookCar extends StatefulWidget {
  @override
  _BookCar createState() => _BookCar();
}

class _BookCar extends State<BookCar> {
  final myController = TextEditingController();
   DateTime __dateTime;
  Map data = {};
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  List<Car> cars = [
    Car('BMW','340i','BMW.jpg', 1600),
    Car('Mercedes','C200','Mercedes.jpg',1400),
    Car('Lada','Granta','Granta.jpg',800),
    Car('Nissan','Sunny','Sunny.jpg',1000),
    Car('Toyota','Yaris','Yaris.jpg',1200),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book a car'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                      onTap: () {
                      showDialog(
                        context: context,
                        builder: (context){
                        return Dialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          elevation: 16,
                        child: Container(
                        height: 200.0,
                        width: 180.0,
                          child: ListView(
                            children: <Widget>[
                            SizedBox(height: 20),
                              Center(
                              child: Text(
                                "confirm booking",
                                  style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
                                     ),
                                    ),
                              FlatButton(onPressed: () {
                                showDatePicker(context: context,
                                    initialDate: DateTime.now().add(Duration(days: 7)),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2022)).then((value) => print(value));
                              },
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(8.0,40.0,8.0,8.0),
                                    child: Text('pick a date'),
                                  ),
                              )
                              ],
                            ),
                            ),
                            );
                            }
                            );
                            },

                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/"+cars[index].imgUrl), // no matter how big it is, it won't overflow
                        ),
                      title: Text(cars[index].model + ' - ' + cars[index].company),
                      subtitle: Text(cars[index].ppp.toString() + ' egp'),
                    ),
                );
              },
              itemCount: cars.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
            ),
          ),
        ],
      )
    );
  }
}
