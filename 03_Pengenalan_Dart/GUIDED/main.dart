// Type annotation
// void main() {
//   // Type annotation
//   String name = "Bob"; // Tipe data String
//   int age = 30; // Tipe data Integer
//   print("Nama: $name, Usia: $age");
// }

// // Multiple variable
// void main() {
// // Multiple variable
//   String firstName, lastName; // Tipe data String
//   firstName = "Charlie";
//   lastName = "Brown";
//   print("Nama Lengkap: $firstName $lastName");
// }

// // IF-ELSE Statement
// void main() {
//  var openHours = 8;
//  var closedHours = 21;
//  var now = 17;
//  if (now > openHours && now < closedHours) {
//     print("Hello, we're open");
//   } else {
//     print("Sorry, we've closed");
//   }
// }

// // Switch-Case Statement
// void main() {
//   var day = 3; // Misalkan 1 = Senin, 2 = Selasa, dst.
//   switch (day) {
//     case 1:
//       print("Senin");
//       break;
//     case 2:
//       print("Selasa");
//       break;
//     case 3:
//       print("Rabu");
//      break;
//     case 4:
//       print("Kamis");
//       break;
//     case 5:
//       print("Jumat");
//       break;
//     case 6:
//       print("Sabtu");
//        break;
//      case 7:
//        print("Minggu");
//        break;
//      default:
//        print("Hari tidak valid");
//    }
//  }

// // For Loop
//  void main() {
//    // For loop sederhana
//    for (int i = 1; i <= 5; i++) {
//      print(i);
//   }
//  }

// // While Loop
//  void main() {
//    int i = 1; // Deklarasi variabel
//    // While loop sederhana
//    while (i <= 5) {
//      print(i);
//      i++; // Tambahkan 1 ke i setelah setiap iterasi
//    }
//  }

// // Fixed List
// void main() {
//   // Membuat fixed-length list dengan panjang 3
//   List<int> fixedList =
//       List.filled(3, 0); // List dengan 3 elemen, diisi dengan 0

//  // Mengubah elemen dalam list
//  fixedList[0] = 10;
//  fixedList[1] = 20;
//  fixedList[2] = 30;
//  print(fixedList); // Output: [10, 20, 30]

//  // fixedList.add(40); //
// }

// //Growable List
// void main() {
//   // Membuat growable list (panjangnya bisa berubah)
//   List<int> growableList = [];
//   // Menambahkan elemen ke dalam list
//   growableList.add(10);
//   growableList.add(20);
//   growableList.add(30);
//   print(growableList); // Output: [10, 20, 30]
//   // Menambahkan lebih banyak elemen
//   growableList.add(40);
//   growableList.add(50);
//   print(growableList); // Output: [10, 20, 30, 40, 50]
//   // Menghapus elemen dari list
//   growableList.remove(20);
//   print(growableList); // Output: [10, 30, 40, 50]
// }

// // Fungsi Mengembalikan Nilai
// String sapaan(String nama) {
//   return "Halo, $nama!";
// }

// void main() {
//   String pesan = sapaan("Dart");
//   print(pesan); // Output: Halo, Dart!
// }

// Fungsi Menambahkan Parameter
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet('Alice', 25);
}