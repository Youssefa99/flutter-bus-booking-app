class trip {
  String from;
  String to;
  String price;
  String departureTime;
  String arrivalTime;
  String date;
  String summary;

  trip(String from, String to, String price, String departureTime,
      String arrivalTime, String date, String summary) {
    this.from = from;
    this.to = to;
    this.price = price;
    this.departureTime = departureTime;
    this.arrivalTime = arrivalTime;
    this.date = date;
    this.summary = summary;
  }
}