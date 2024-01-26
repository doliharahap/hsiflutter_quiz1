import 'dart:io';
import 'dart:math';

void printMenu(){
  print("");
  print("===========================");
  print("Simpel Kalkulator");
  print("NIP: ARN181-01061");
  print("Nama: DOLI ANGGIA HARAHAP");
  print("===========================");
  print("");
  print("MENU:");
  print("1. Penambahan");
  print("2. Perkalian");
  print("3. Hitung Zakat");
  print("4. Hitung Luas Persegi");
  print("5. Keluar");
  print("");

  stdout.write("Pilihan: ");
  String? pilihan = stdin.readLineSync();

  switch (pilihan) {
    case "1":
      kalkulatorPenambahan();
      break;
    case "2":
      kalkulatorPerkalian();
      break;
    case "3":
      kalkulatorZakat();
      break;
    case "4":
      kalkulatorLuasPersegi();
      break;
    case "5":
      print("Terima kasih sudah menggunakan sistem kami");
      break;
    default:
      print("Maaf, pilihan anda tidak tersedia");
      print("Kembali ke menu utama.......");
      printMenu();
  }

}

void kalkulatorPenambahan(){
  print("");
  print("=====================");
  print("Kalkulator Penambahan");
  print("");
  stdout.write("Angka Pertama: ");
  String angka1 = stdin.readLineSync() ?? "0";
  stdout.write("Angka Kedua: ");
  String angka2 = stdin.readLineSync() ?? "0";

  print("Hitung:");
  print("$angka1 + $angka2 = ${int.parse(angka1)+int.parse(angka2)}");

  printMenuKembali();

}

void kalkulatorPerkalian(){
  print("");
  print("=====================");
  print("Kalkulator Perkalian");
  print("");
  stdout.write("Angka Pertama: ");
  String angka1 = stdin.readLineSync() ?? "0";
  stdout.write("Angka Kedua: ");
  String angka2 = stdin.readLineSync() ?? "0";

  print("Hitung:");
  print("$angka1 x $angka2 = ${int.parse(angka1)*int.parse(angka2)}");

  printMenuKembali();

}

void kalkulatorZakat(){
  print("");
  print("=====================");
  print("Kalkulator Zakat");
  print("");
  print("Nishab zakat harta tahun ini adalah sejumlah 86gr emas ~ Rp86.5juta");
  stdout.write("Total harta cukup haul: ");
  String inputHarta = stdin.readLineSync() ?? "100";
  int totalHarta = int.parse(inputHarta);
  
  if(totalHarta < 86500000){
    print("Total harta belum cukup nishab.");
    printMenuKembali();
  } else {
    print("Hitung zakat harta:");
    print("2.5% dari $totalHarta adalah Rp${0.025*totalHarta}");

    printMenuKembali();
  }
}

void kalkulatorLuasPersegi(){
  print("");
  print("=====================");
  print("Kalkulator Luas Persegi");
  print("");
  stdout.write("Sisi persegi (cm): ");
  String sisi = stdin.readLineSync() ?? "0";

  print("Hitung Luas Persegi:");
  print("Luas persegi dengan sisi $sisi adalah ${int.parse(sisi) * int.parse(sisi)}");

  printMenuKembali();

}

void printMenuKembali(){
  stdout.write("Kembali ke menu utama? (Y/N)");
  String pilihan = stdin.readLineSync() ?? "0";
  
  if(pilihan == "Y"){
    print("Kembali ke menu utama.......");
    printMenu();
  } else {
    print("Terima kasih sudah menggunakan sistem kami");
    exit(0);
  }
}

void main(){
  
  printMenu();
  
}