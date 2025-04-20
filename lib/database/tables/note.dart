import 'package:drift/drift.dart';

class Notes extends Table {
  IntColumn get contentChecksum => integer().named('content_checksum')();
  TextColumn get extraData => text().named('extra_data')();
  TextColumn get fieldValues => text().named('field_values')();
  TextColumn get globalUid => text().named('global_uid')();
  BoolColumn get isFlagged => boolean().named('is_flagged')();
  IntColumn get modelId => integer().named('model_id')();
  IntColumn get noteId => integer().named('note_id')();
  @override
  Set<Column> get primaryKey => {noteId};
  IntColumn get sortFieldHash => integer().named('sort_field_hash')();
  IntColumn get syncNumber => integer().named('sync_number')();
  TextColumn get tags => text()();

  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
}