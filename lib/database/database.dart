import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables/card.dart';
import 'tables/collection.dart';
import 'tables/deletion_log.dart';
import 'tables/note.dart';
import 'tables/review_log.dart';

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'anki.db'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(
  tables: [
    Notes,
    Cards,
    Collections,
    ReviewLogs,
    DeletionLogs,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          return await m.createAll();
        },
        onUpgrade: (Migrator m, from, to) async {
          // TODO: マイグレーション処理を書く
          if (from == 0) {
            await m.createAll();
          }
        },
      );

  // スキーマのバージョン
  @override
  int get schemaVersion => 1;
}
