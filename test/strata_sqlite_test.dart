import 'package:sqlite3/sqlite3.dart';
import 'package:strata_sqlite/strata_sqlite.dart';
import 'package:test/test.dart';

void main() {
  group('SqliteAdapter', () {
    test(
      'opens with provided factory and closes (disposes) the database',
      () async {
        final adapter = SqliteAdapter();
        final db = sqlite3.openInMemory();

        // Open with provided factory
        await adapter.open(() async => db, const []);

        // DB should be usable before close
        db.execute('CREATE TABLE t (id INTEGER PRIMARY KEY)');

        // Close should dispose the same database instance
        await adapter.close();

        // After dispose, attempting to use the db should throw
        expect(() => db.execute('SELECT 1'), throwsA(anything));
      },
    );
  });
}
