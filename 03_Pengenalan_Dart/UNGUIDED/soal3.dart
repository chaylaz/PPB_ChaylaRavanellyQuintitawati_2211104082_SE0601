import 'dart:io';

void main() {
  print("Masukkan bilangan bulat: ");
  int bilangan = int.parse(stdin.readLineSync()!);

  bool isPrima = true;
  for (int i = 2; i <= bilangan / 2; i++) {
    if (bilangan % i == 0) {
      isPrima = false;
      break;
    }
  }

  if (isPrima && bilangan > 1) {
    print("$bilangan adalah bilangan prima");
  } else {
    print("$bilangan bukan bilangan prima");
  }
}
