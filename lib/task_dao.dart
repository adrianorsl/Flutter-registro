import 'dart:ffi';
import 'package:meu_primeiro_projeto/dataBase.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_id INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$_type TEXT, '
      '$_date TEXT)';

  static const String _tablename = 'taskTable';
  static const String _id = 'id';
  static const String _type = 'tipo';
  static const String _date = 'data';

  save(String tipo, String data) async {
    print('Salvando');
    final Map<String, dynamic> mapa = Map();
    mapa[_type] = tipo;
    mapa[_date] = data;
    final Database bancoDados = await getDatabase();
    return await bancoDados.insert(_tablename, mapa);
  }

  Future findAll() async {
    print('Acessando o findAll');
    final Database bancoDados = await getDatabase();
    final List<Map<String, dynamic>> result =
        await bancoDados.query(_tablename);
    print('Encontrado: $result');
  }

  Future find(String data) async {
    print('Acessando o find');
    final Database bancoDados = await getDatabase();
    final List<Map<String, dynamic>> result = await bancoDados.query(
      _tablename,
      where: '$_date = ?',
      whereArgs: [data],
    );
    print('Encontrado: $result');
  }

  delete(Int id) async {
    print('Deletando um dado.');
    final Database bancoDados = await getDatabase();
    return bancoDados.delete(_tablename, where: '$_id = ?', whereArgs: [id]);
  }
}
