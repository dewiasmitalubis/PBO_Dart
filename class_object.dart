import 'dart:io';

void main(List<String> args) {
  PersegiPanjang kotak1, kotak2;
  double luasKotak2;

  // kotak1 = PersegiPanjang();
  // kotak1.panjang = 2;
  // kotak1.lebar = 3;

  kotak2 = PersegiPanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  luasKotak2 = kotak2.hitungLuas();

  print(luasKotak2);
}

class PersegiPanjang {
  double panjang, lebar;

  double hitungLuas() {
    return panjang * lebar;
  }
}