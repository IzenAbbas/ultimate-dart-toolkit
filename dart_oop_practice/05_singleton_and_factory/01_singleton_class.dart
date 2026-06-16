class DataBase{
  DataBase._internal();

  static final DataBase _instance = DataBase._internal();

  factory DataBase(){
    return _instance;
  }
}

void main(){
  DataBase d1 = DataBase();
  DataBase d2 = DataBase();
  print(d1==d2);
}