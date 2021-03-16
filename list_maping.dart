import 'dart:io';

void main(List<String> args) {
  List<int> list = [1, 2, 3, 5];
  List<int> list2 = [];
  List<String> newList = [];

  // for (var bil in list) {
  //   print(bil);
  // }

  list2.add(10);
  list2.addAll(list);
  list2.insert(2, 99);
  list2.insertAll(3, [10, 12, 13]);
  list2.remove(10);
  list2.removeLast();
  // list2.sort();

  // list2.forEach((bil) => print(bil));

  newList = list.map((number) => 'angka $number').toList();
  newList.forEach((n) => print(n));
}