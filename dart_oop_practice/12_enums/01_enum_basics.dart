enum Weather {
  sunny,
  rainy,
  cloudy,
  snowy,
}

void main() {
  Weather todayWeather = Weather.sunny;
  if (todayWeather == Weather.sunny){
    print("Grab your Sunglasses");
  }
  else{
    print("No need for sun glasses");
  }
}