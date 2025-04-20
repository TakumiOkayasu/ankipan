import 'package:drift/drift.dart';

class DeletionLogs extends Table {
  IntColumn get deletedObjectId => integer().named('deleted_object_id')();
  IntColumn get deletedObjectType => integer().named('deleted_object_type')(); // 0=card, 1=note, 2=deck
  IntColumn get syncNumber => integer().named('sync_number')();

  // 主キーはない（全レコード保持）
}