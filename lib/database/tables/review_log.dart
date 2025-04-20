import 'package:drift/drift.dart';

class ReviewLogs extends Table {
  IntColumn get cardId => integer().named('card_id')();
  IntColumn get currentInterval => integer().named('current_interval')();
  IntColumn get previousInterval => integer().named('previous_interval')();
  @override
  Set<Column> get primaryKey => {reviewId};
  IntColumn get rating => integer()(); // 1〜4
  IntColumn get responseTimeMs => integer().named('response_time_ms')();
  IntColumn get reviewId => integer().named('review_id')();
  IntColumn get reviewType => integer().named('review_type')(); // 0=学習, 1=復習, 2=再学習, 3=手動
  IntColumn get syncNumber => integer().named('sync_number')();

  IntColumn get updatedEaseFactor => integer().named('updated_ease_factor')();
}