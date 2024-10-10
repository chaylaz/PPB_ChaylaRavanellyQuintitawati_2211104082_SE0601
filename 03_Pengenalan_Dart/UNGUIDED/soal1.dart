import 'dart:io';

void main() {
  print("Masukkan nilai mahasiswa: ");
  String input = stdin.readLineSync()!;
  int nilai = int.parse(input);

  String result = nilaiMahasiswa(nilai);
  print(result);
}

String nilaiMahasiswa(int nilai) {
  if (nilai > 70) {
    return "$nilai merupakan Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "$nilai merupakan Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "$nilai merupakan Nilai C";
  } else {
    return "";
  }
}
