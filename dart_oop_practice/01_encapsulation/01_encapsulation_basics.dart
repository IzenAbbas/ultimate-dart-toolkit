class BankAccount {
  String name;
  int _amount; //Amount encapsulated, it cannot be acessed outside the class

  BankAccount(this.name) : _amount = 0;

  void addAmount(int amount){
    try{
      if (amount<=0){
        throw "Negative amount added";
      }
      this._amount+=amount;
    }
    catch(e){
      print(e);
    }
  }

  void withdrawAmount(int amount){
    try{
      if (amount>this._amount){
        throw "Insufficient Balance";
      }
      this._amount-=amount;
    }
    catch(e){
      print(e);
    }
  }

  void viewAmount(){
    print("Current Balancs: ${this._amount} pkr");
  }
}

void main() {
  BankAccount account = BankAccount("Izen");

  account.addAmount(5000);
  account.withdrawAmount(2000);
  account.viewAmount();
}