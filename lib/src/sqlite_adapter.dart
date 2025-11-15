import 'package:sqlite3/sqlite3.dart';
import 'package:strata/strata.dart';

class SqliteAdapter implements StrataAdapter<Database> {
  late Database _db;

  @override
  Future<void> open(
    Future<Database> Function() databaseFactory,
    List<Migration> migrations,
  ) async {
    _db = await databaseFactory();
  }

  @override
  Future<void> close() async {
    _db.dispose();
  }

  @override
  Future<Map<String, dynamic>?> getOne(Query query) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, dynamic>>> getAll(Query query) async {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> insert(
    String table,
    Map<String, dynamic> changes,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, dynamic>>> update(
    Query query,
    Map<String, dynamic> changes,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(Query query) {
    throw UnimplementedError();
  }
}
