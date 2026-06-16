abstract class Transport{
  void deliver();
}

class Bus implements Transport{
  @override
  void deliver() {
    // TODO: implement deliver
    print("Delivering via Bus.");
  }
}

class Ship implements Transport{
  @override
  void deliver() {
    // TODO: implement deliver
    print("Delivering via Bus.");
  }
}

class Factory{
  static Transport createTransport(String type){
    if(type.toLowerCase()=='bus'){
      return Bus();
    }
    else if(type.toLowerCase()=='ship'){
      return Ship();
    }
    throw "Invalid Transport Type.";
  }
}


void main() {
  Transport transport1 = Factory.createTransport('Bus');
  transport1.deliver();

  Transport transport2 = Factory.createTransport('SHIP');
  transport2.deliver();
}