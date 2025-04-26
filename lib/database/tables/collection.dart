import 'package:drift/drift.dart';

class Collections extends Table {
  IntColumn get collectionId => integer().named('collection_id')();
  TextColumn get configJson => text().named('config_json')();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  TextColumn get deckConfigJson => text().named('deck_config_json')();
  TextColumn get decksJson => text().named('decks_json')();
  DateTimeColumn get lastSyncTime => dateTime().named('last_sync_time')();
  TextColumn get modelsJson => text().named('models_json')();
  @override
  Set<Column> get primaryKey => {collectionId};
  DateTimeColumn get schemaUpdatedAt => dateTime().named('schema_updated_at')();
  IntColumn get syncNumber => integer().named('sync_number')();
  TextColumn get tagsJson => text().named('tags_json')();
  IntColumn get unusedField => integer().named('unused_field')();
  DateTimeColumn get updatedAt => dateTime().named('updated_at')();

  IntColumn get version => integer()();
}
