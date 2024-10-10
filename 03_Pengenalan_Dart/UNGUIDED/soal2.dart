import 'dart:io';

void main() {
  print("Masukkan tinggi piramida: ");
  int tinggi = int.parse(stdin.readLineSync() ?? "0");

  for (int i = 0; i < tinggi; i++) {
    for (int j = 0; j < tinggi - i - 1; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k <= i; k++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }
}
