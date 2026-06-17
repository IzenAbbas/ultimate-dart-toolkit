extension StringExtension on String {
  String capitalize() {
    return this[0].toUpperCase() +
        substring(1);
  }
}

void main() {
  print(
      "izen".capitalize()
  );
}