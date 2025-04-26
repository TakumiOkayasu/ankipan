import 'package:drift/drift.dart';

class Cards extends Table {
  IntColumn get cardId => integer().named('card_id')();
  IntColumn get deckId => integer().named('deck_id')();
  IntColumn get due => integer()();
  IntColumn get easeFactor => integer().named('ease_factor')();
  TextColumn get extraData => text().named('extra_data')();
  IntColumn get intervalDays => integer().named('interval_days')();
  BoolColumn get isFlagged => boolean().named('is_flagged')();
  IntColumn get lapseCount => integer().named('lapse_count')();
  IntColumn get learningStepsLeft => integer().named('learning_steps_left')();
  IntColumn get learningType => integer().named('learning_type')(); // 0〜3
  IntColumn get noteId => integer().named('note_id')();
  IntColumn get originalDeckId => integer().named('original_deck_id')();
  IntColumn get originalDue => integer().named('original_due')();
  @override
  Set<Column> get primaryKey => {cardId};
  IntColumn get queueState => integer().named('queue_state')();
  IntColumn get reviewCount => integer().named('review_count')();
  IntColumn get syncNumber => integer().named('sync_number')();
  IntColumn get templateIndex => integer().named('template_index')();

  DateTimeColumn get updatedAt => dateTime().named('updated_at')();
}
