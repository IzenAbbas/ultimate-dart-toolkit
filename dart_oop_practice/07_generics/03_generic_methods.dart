class Class<T>{
  T _value;

  Class(this._value);
  T get value => _value;
  set value(T newValue) {
    _value = newValue;
  }

  void Comparison<U>(U anotherValue) {
    print("$_value vs $anotherValue");
  }

}

void main() {
  Class obj = Class(10);
  print("Initial value: ${obj.value}");
  obj.value = 42;
  print("Updated value: ${obj.value}");
  obj.Comparison("Apple");
  obj.Comparison(3.14);
}