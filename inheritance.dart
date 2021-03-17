import 'package:pbo_dart_console/hero.dart';
import 'package:pbo_dart_console/monster.dart';
import 'package:pbo_dart_console/monster_kecoa.dart';
import 'package:pbo_dart_console/monster_ubur_ubur.dart';

void main(List<String> args) {
  Hero h = Hero();
  Monster m = MonsterUburUbur();
  MonsterKecoa monsterKecoa = MonsterKecoa();
  List<Monster> monsters = [];

  monsters.add(monsterKecoa());
  monsters.add(monsterKecoa());
  monsters.add(MonsterUburUbur());

  h.healthPoint = 4;
  m.healthPoint = -1;

  print((m as MonsterUburUbur).hunt());

  for (Monster monster in monsters) {
    if (monster is MonsterLumbaLumba) {
      print(monster.swim());
    }
  }
}