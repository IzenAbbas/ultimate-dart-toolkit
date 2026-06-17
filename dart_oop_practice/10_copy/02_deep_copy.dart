class Address {
  String city;
  Address(this.city);

  Address copy() {
    return Address(this.city);
  }

  Address copyWith({String? city}) {
    return Address(city ?? this.city);
  }
}

class Student {
  String name;
  Address address;

  Student({required this.name, required this.address});

  Student copyWith({String? name, Address? address}) {
    return Student(
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Student copy() {
    return Student(
      name: name,
      address: address.copy(),
    );
  }
}

void main() {
  Student s1 = Student(name: "Ali", address: Address("Lahore"));
  print("s1: ${s1.name}, ${s1.address.city}");

  Student s2 = s1.copyWith(name: "Zain", address: Address("test"));
  print("s2: ${s2.name}, ${s2.address.city}");

  // s2.address.city = "Karachi";

  print("s2: ${s2.name}, ${s2.address.city}");
  print("s1: ${s1.name}, ${s1.address.city}");

  s1.address.city = "Lahore";

  Student s3 = s1.copy();
  s3.name = "Omer";
  s3.address.city = "Islamabad";

  print("s3: ${s3.name}, ${s3.address.city}");
  print("s1: ${s1.name}, ${s1.address.city}");
}