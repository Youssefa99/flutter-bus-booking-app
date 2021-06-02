import 'package:flutter/cupertino.dart';

import 'trip.dart';
class Account {
  String username;
  String email;
  String password;
  List<trip> bookedtrips = [];
  Account(String username, String email, String password){
    this.username = username;
    this.email = email;
    this.password = password;
  }
  void book_trip(Account account, trip trip){
    account.bookedtrips.add(trip);
  }
  void cancel_trip(Account account , trip trip, int bookings){
    account.bookedtrips.remove(trip);
  }


}
