class BankAccount {
  String name;
  int _amount; //Amount encapsulated, it cannot be acessed outside the class

  BankAccount(this.name) : _amount = 0;

  int get getAmount{
    return _amount;
  }


  set setAmount(int amount){
    try {
      if (amount < 0) {
        throw "Negative amount added";
      }
    }
    catch(e){
      print(e);
    }
    _amount+=amount;
  }
}

void main() {
  BankAccount account = BankAccount("Izen");

  print("Current Balance: ${account.getAmount} pkr");
  print("Setting balance to ${account.setAmount=5000} pkr");
  print("Current Balance: ${account.getAmount} pkr");

}