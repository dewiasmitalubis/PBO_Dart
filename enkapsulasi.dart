import 'dart:io';

void main(List<String> args) {
  PersegiPanjang kotak1, kotak2;

  kotak1 = PersegiPanjang();
  kotak1.setPanjang(2);
  kotak1.lebar = 3;

  kotak2 = PersegiPanjang();
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()));
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  var luasKotak1 = kotak1.luas;

  print(luasKotak1 + kotak2.luas);
}

class PersegiPanjang {
  double _panjang;
  double _lebar;

  // Method setter getter
  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  double getPanjang() => _panjang;

  // Properti setter getter
  set lebar(double value) {
    _lebar = value;
  }

  double get lebar => _lebar;

  double get luas => _panjang * _lebar;
}