import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swvl_el8alaba/account.dart';
import 'trip.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TripView extends StatefulWidget {
  @override
  _TripViewState createState() => _TripViewState();
}

class _TripViewState extends State<TripView> {

  final myController = TextEditingController();
  Map data = {};
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    trip trips = trip(data['from'], data['to'], data['price'], data['departureTime'], data['arrivalTime'],
    data['date'], data['summary']);
    Account account = Account(data['username'], data['email'], data['email']);
    String time = 'leaves at ' + data['departureTime'] + ' , estimated arrival time ' + data['arrivalTime'];
    String picture = data['to'];
    String picture1 = data['to'] + '1';
    String picture2 = data['to'] + '2';
    String picture3 = data['to'] + '3';
    String url;
    if(data['to'] == 'Dahab'){
      url = 'https://www.booking.com/searchresults.html?label=gen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB&sid=bfd95ecb5958bd5fee64005b43afcdab&sb=1&sb_lp=1&src=index&src_elem=sb&error_url=https%3A%2F%2Fwww.booking.com%2Findex.html%3Flabel%3Dgen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB%3Bsid%3Dbfd95ecb5958bd5fee64005b43afcdab%3Bsb_price_type%3Dtotal%3Bsig%3Dv1ukGfcI5p%3B&ss=dahab&is_ski_area=0&checkin_year=&checkin_month=&checkout_year=&checkout_month=&group_adults=2&group_children=0&no_rooms=1&b_h4u_keep_filters=&from_sf=1&dest_id=&dest_type=&search_pageview_id=6e8181e9b9a10030&search_selected=false';
    }
    else if(data['to'] == 'Aswan'){
      url = 'https://www.booking.com/searchresults.html?label=gen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB&sid=bfd95ecb5958bd5fee64005b43afcdab&sb=1&sb_lp=1&src=index&src_elem=sb&error_url=https%3A%2F%2Fwww.booking.com%2Findex.html%3Flabel%3Dgen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB%3Bsid%3Dbfd95ecb5958bd5fee64005b43afcdab%3Bsb_price_type%3Dtotal%3Bsig%3Dv1ukGfcI5p%3B&ss=aswan&is_ski_area=0&checkin_year=&checkin_month=&checkout_year=&checkout_month=&group_adults=2&group_children=0&no_rooms=1&b_h4u_keep_filters=&from_sf=1';
    }
    else if(data['to'] == 'Cairo'){
      url = 'https://www.booking.com/searchresults.html?label=gen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB&sid=bfd95ecb5958bd5fee64005b43afcdab&sb=1&sb_lp=1&src=index&src_elem=sb&error_url=https%3A%2F%2Fwww.booking.com%2Findex.html%3Flabel%3Dgen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB%3Bsid%3Dbfd95ecb5958bd5fee64005b43afcdab%3Bsb_price_type%3Dtotal%3Bsig%3Dv1ukGfcI5p%3B&ss=cairo&is_ski_area=0&checkin_year=&checkin_month=&checkout_year=&checkout_month=&group_adults=2&group_children=0&no_rooms=1&b_h4u_keep_filters=&from_sf=1';
    }
    else if(data['to'] == 'Luxor'){
      url = 'https://www.booking.com/searchresults.html?label=gen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB&sid=bfd95ecb5958bd5fee64005b43afcdab&sb=1&sb_lp=1&src=index&src_elem=sb&error_url=https%3A%2F%2Fwww.booking.com%2Findex.html%3Flabel%3Dgen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB%3Bsid%3Dbfd95ecb5958bd5fee64005b43afcdab%3Bsb_price_type%3Dtotal%3Bsig%3Dv1ukGfcI5p%3B&ss=luxor&is_ski_area=0&checkin_year=&checkin_month=&checkout_year=&checkout_month=&group_adults=2&group_children=0&no_rooms=1&b_h4u_keep_filters=&from_sf=1&ss_raw=luc&dest_id=&dest_type=&search_pageview_id=6e8181e9b9a10030&search_selected=false';
    }
    else if(data['to'] == 'Hurghada'){
      url = 'https://www.booking.com/searchresults.html?label=gen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB&sid=bfd95ecb5958bd5fee64005b43afcdab&sb=1&sb_lp=1&src=index&src_elem=sb&error_url=https%3A%2F%2Fwww.booking.com%2Findex.html%3Flabel%3Dgen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AtOapYUGwAIB0gIkM2Y5MmUzNzItNmE2Mi00YjdhLTkzNGUtNTg1NmFjODQ1NTkz2AIF4AIB%3Bsid%3Dbfd95ecb5958bd5fee64005b43afcdab%3Bsb_price_type%3Dtotal%3Bsig%3Dv1ukGfcI5p%3B&ss=hurghada&is_ski_area=0&checkin_year=&checkin_month=&checkout_year=&checkout_month=&group_adults=2&group_children=0&no_rooms=1&b_h4u_keep_filters=&from_sf=1';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(trips.to),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints.expand(
                height: 200.0,
              ),
              decoration: BoxDecoration(color: Colors.grey),
                child: Image.asset(
                  'assets/${picture}.jpg',
                  fit: BoxFit.cover,
                )
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Text(trips.price,
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.blueAccent

    )),
                      ),

                    Expanded(
                      flex: 1,
                      child: FlatButton.icon(onPressed: () {
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
                                    SizedBox(height: 20),
                                    TextField(
                                      controller: myController,
                                      decoration: new InputDecoration(labelText: "choose the number of seats"),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                    ]),
                                    RaisedButton(onPressed: () {
                                        if(myController.text != ''){
                                          print(myController.text);
                                          account.book_trip(account, trips);
                                          print(account.bookedtrips);
                                          dispose();
                                        }
                                        else{
                                          print('a7a');
                                        }
                                    },
                                    child: Text('book')

                                    ),
                                    ],
                                ),
                              ),
                            );
                          }
                        );
                      },
                          icon: Icon(
                            Icons.airport_shuttle
                          ),
                      label: Text('book a bus'),
                      color: Colors.orange,
                   ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FlatButton.icon(onPressed: () {
                        Navigator.pushNamed(context, '/book_car');
                      },
                          icon: Icon(
                              Icons.directions_car
                          ),
                          label: Text('book a car'),
                          color: Colors.pinkAccent),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(trips.date,
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.blueGrey,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(time,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[700]
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(trips.summary,
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0
                  )),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: RaisedButton(
                      child: Text('Check Booking'),
                    ),
                ),
                ),

                CarouselSlider(
                  options: CarouselOptions(height: 300.0),
                  items: ['${picture1}','${picture2}','${picture3}'].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber
                          ),
                          child: Image.asset(
                            'assets/${i}.jpg',
                            fit: BoxFit.cover,
                          )
                        );
                      },
                    );
                  }).toList(),
                )

              ],
            )

          ],
        ),
      )
    );
  }
}

