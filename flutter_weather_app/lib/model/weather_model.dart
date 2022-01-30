class Weather {
  String? cityName;
  double? temp;
  double? wind;
  double? feels_like;
  int? humidity;
  int? pressure;
  String? arkaPlan;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.arkaPlan,
      this.feels_like,
      this.humidity,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    arkaPlan = json["main"]["arkaPlan"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
  }
}
