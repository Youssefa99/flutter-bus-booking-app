import 'package:flutter/material.dart';
import 'package:swvl_el8alaba/book_car.dart';
import 'trip_view.dart';
import 'home.dart';
import 'package:swvl_el8alaba/account.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/trip': (context) => TripView(),
      '/book_car': (context) => BookCar()
    }
));
