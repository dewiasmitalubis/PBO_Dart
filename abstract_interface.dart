import 'package:pbo_dart_console/monster.dart';
import 'package:pbo_dart_console/monster_kecoa.dart'; 
import 'package:pbo_dart_console/monster_ubur_ubur.dart'; 
import 'package:pbo_dart_console/monster_ucoa.dart';
import 'package:pbo_dart_console/swimming_monster.dart';

void main(List<String> args) {
  var monsters = [];

  monsters.add(MonsterKecoa());
  monsters.add(MonsterUcoa());
  monsters.add(MonsterUburUbur());

  for (Monster monster in monsters) {
    if (monster is SwmimmingMonster) {
      print((monster as SwmimmingMonster).swim());
    }
  }
}