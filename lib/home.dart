import 'package:flutter/material.dart';

import 'package:swvl_el8alaba/account.dart';

import 'trip.dart';

import 'package:swvl_el8alaba/side_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String test = 'jshdjss';
  Account account = Account('7amo','zebo','beta3 el piano');
  List<trip> trips = [
    trip('a','Dahab','600 egp','23:00','14:00','07/05/2021',
        'Dahab is one of the oldest and most famous dive areas in the Red Sea offering some of the most exciting and spectacular diving in Sinai. Dahab, which means ‘gold’ in Arabic, was named after its golden beaches, lying on the east coast of the Sinai Peninsula on the Gulf of Aqaba. The journey from the airport in the more touristy Sharm is an hour’s drive through the magnificent desert and mountains. Dahab’s atmosphere can’t be compared to Sharm; Sharm is a typical built-up holiday resort, while Dahab is smaller and quieter, and still attracts a more ‘alternative’ and younger crowd.'),
    trip('b','Luxor','600 egp','23:00','14:00','h',
        'Luxor means in Arabic as “The Palaces” and during ancient times it was used to be known as “The city of Hundred Doors“. It is considered by many to be the globe’s greatest open-air museum as it holds some of the most majestic temples such as the Valley of the king, the Karnak temple, Queen Hatshepsut temple, and Luxor temple that holds some of the most extraordinary monuments and artifacts. Luxor is located in the south of Upper Egypt, on the east bank of the Nile River and part of the ancient city of Thebes. Luxor was considered to be a very important city during the old kingdom and the capital of Egypt during the New Kingdom.'),
    trip('c','Aswan','600 egp','23:00','14:00','g',
        'There are many cities in Egypt but only the city of Aswan can reflect the great heritage and pure Egyptian culture. It acted as the southern frontlines of the country during ancient times and home to the Nubian culture in Egypt. Aswan has always played a role in the history of Egypt since the date of its creation as it was the main provider to precious building material like limestone, quartzite, and Granite due to her rich habitat. Considered by many to be one of the most beautiful and important cities in the world because of the various monuments located in her arms that reflects a great deal about pre-historical ancient times. The city is on the UNESCO creative cities Network in the category of folk art and craft.'),
    trip('d','Cairo','600 egp','23:00','14:00','h',
        'Cairo city has acted as an infinite time capsule, a guardian, and a center for culture, art, and beauty for thousands of years. It is quite famous for being the capital of Egypt, and the largest metropolitan area in Africa, The Middle East, the Arab world, and the 15th largest city in the world. Cairo occupies an area of about 528 square kilometers in northern Egypt, 120 km (75 mi) west of Gulf of Suez & Suez Canal, 165 km (100 mi) south of the Mediterranean Sea, and lies on both banks of the Nile River near the Nile delta.'),
    trip('e','Hurghada','600 egp','23:00','14:00','s',
        'In Hurghada exists all that the heart and soul desires. The Red Sea is filled with magic and wonders able to provide the ultimate tropical vacation and the finest resort Hurghada which offers a true portal to all that makes a vacation in Egypt like spending time in paradise. Every moment spend in this enchanting place is true bliss and joy that will paint a smile on your face for the rest of your life.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name of app'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text(
                'Featured trips',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 28.0
    )
    ),
    Expanded(
      child: ListView.builder(
      itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/trip', arguments: {
                   'from': trips[index].from,
                   'to': trips[index].to,
                   'price': trips[index].price,
                   'departureTime': trips[index].departureTime,
                   'arrivalTime': trips[index].arrivalTime,
                    'date': trips[index].date,
                    'summary': trips[index].summary,
                    'username': account.username,
                    'email': account.email
                  });
                },
                title: Text(trips[index].to),
            )
            );
      },
      itemCount: trips.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
      ),
    )
            ],


          ),
      ),

    );
  }
}
