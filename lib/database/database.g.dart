// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _contentChecksumMeta =
      const VerificationMeta('contentChecksum');
  @override
  late final GeneratedColumn<int> contentChecksum = GeneratedColumn<int>(
      'content_checksum', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _extraDataMeta =
      const VerificationMeta('extraData');
  @override
  late final GeneratedColumn<String> extraData = GeneratedColumn<String>(
      'extra_data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fieldValuesMeta =
      const VerificationMeta('fieldValues');
  @override
  late final GeneratedColumn<String> fieldValues = GeneratedColumn<String>(
      'field_values', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _globalUidMeta =
      const VerificationMeta('globalUid');
  @override
  late final GeneratedColumn<String> globalUid = GeneratedColumn<String>(
      'global_uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isFlaggedMeta =
      const VerificationMeta('isFlagged');
  @override
  late final GeneratedColumn<bool> isFlagged = GeneratedColumn<bool>(
      'is_flagged', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_flagged" IN (0, 1))'));
  static const VerificationMeta _modelIdMeta =
      const VerificationMeta('modelId');
  @override
  late final GeneratedColumn<int> modelId = GeneratedColumn<int>(
      'model_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  @override
  late final GeneratedColumn<int> noteId = GeneratedColumn<int>(
      'note_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sortFieldHashMeta =
      const VerificationMeta('sortFieldHash');
  @override
  late final GeneratedColumn<int> sortFieldHash = GeneratedColumn<int>(
      'sort_field_hash', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncNumberMeta =
      const VerificationMeta('syncNumber');
  @override
  late final GeneratedColumn<int> syncNumber = GeneratedColumn<int>(
      'sync_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        contentChecksum,
        extraData,
        fieldValues,
        globalUid,
        isFlagged,
        modelId,
        noteId,
        sortFieldHash,
        syncNumber,
        tags,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('content_checksum')) {
      context.handle(
          _contentChecksumMeta,
          contentChecksum.isAcceptableOrUnknown(
              data['content_checksum']!, _contentChecksumMeta));
    } else if (isInserting) {
      context.missing(_contentChecksumMeta);
    }
    if (data.containsKey('extra_data')) {
      context.handle(_extraDataMeta,
          extraData.isAcceptableOrUnknown(data['extra_data']!, _extraDataMeta));
    } else if (isInserting) {
      context.missing(_extraDataMeta);
    }
    if (data.containsKey('field_values')) {
      context.handle(
          _fieldValuesMeta,
          fieldValues.isAcceptableOrUnknown(
              data['field_values']!, _fieldValuesMeta));
    } else if (isInserting) {
      context.missing(_fieldValuesMeta);
    }
    if (data.containsKey('global_uid')) {
      context.handle(_globalUidMeta,
          globalUid.isAcceptableOrUnknown(data['global_uid']!, _globalUidMeta));
    } else if (isInserting) {
      context.missing(_globalUidMeta);
    }
    if (data.containsKey('is_flagged')) {
      context.handle(_isFlaggedMeta,
          isFlagged.isAcceptableOrUnknown(data['is_flagged']!, _isFlaggedMeta));
    } else if (isInserting) {
      context.missing(_isFlaggedMeta);
    }
    if (data.containsKey('model_id')) {
      context.handle(_modelIdMeta,
          modelId.isAcceptableOrUnknown(data['model_id']!, _modelIdMeta));
    } else if (isInserting) {
      context.missing(_modelIdMeta);
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    }
    if (data.containsKey('sort_field_hash')) {
      context.handle(
          _sortFieldHashMeta,
          sortFieldHash.isAcceptableOrUnknown(
              data['sort_field_hash']!, _sortFieldHashMeta));
    } else if (isInserting) {
      context.missing(_sortFieldHashMeta);
    }
    if (data.containsKey('sync_number')) {
      context.handle(
          _syncNumberMeta,
          syncNumber.isAcceptableOrUnknown(
              data['sync_number']!, _syncNumberMeta));
    } else if (isInserting) {
      context.missing(_syncNumberMeta);
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    } else if (isInserting) {
      context.missing(_tagsMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {noteId};
  @override
  Note map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Note(
      contentChecksum: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}content_checksum'])!,
      extraData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}extra_data'])!,
      fieldValues: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}field_values'])!,
      globalUid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}global_uid'])!,
      isFlagged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_flagged'])!,
      modelId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}model_id'])!,
      noteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}note_id'])!,
      sortFieldHash: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_field_hash'])!,
      syncNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_number'])!,
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(attachedDatabase, alias);
  }
}

class Note extends DataClass implements Insertable<Note> {
  final int contentChecksum;
  final String extraData;
  final String fieldValues;
  final String globalUid;
  final bool isFlagged;
  final int modelId;
  final int noteId;
  final int sortFieldHash;
  final int syncNumber;
  final String tags;
  final DateTime updatedAt;
  const Note(
      {required this.contentChecksum,
      required this.extraData,
      required this.fieldValues,
      required this.globalUid,
      required this.isFlagged,
      required this.modelId,
      required this.noteId,
      required this.sortFieldHash,
      required this.syncNumber,
      required this.tags,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['content_checksum'] = Variable<int>(contentChecksum);
    map['extra_data'] = Variable<String>(extraData);
    map['field_values'] = Variable<String>(fieldValues);
    map['global_uid'] = Variable<String>(globalUid);
    map['is_flagged'] = Variable<bool>(isFlagged);
    map['model_id'] = Variable<int>(modelId);
    map['note_id'] = Variable<int>(noteId);
    map['sort_field_hash'] = Variable<int>(sortFieldHash);
    map['sync_number'] = Variable<int>(syncNumber);
    map['tags'] = Variable<String>(tags);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      contentChecksum: Value(contentChecksum),
      extraData: Value(extraData),
      fieldValues: Value(fieldValues),
      globalUid: Value(globalUid),
      isFlagged: Value(isFlagged),
      modelId: Value(modelId),
      noteId: Value(noteId),
      sortFieldHash: Value(sortFieldHash),
      syncNumber: Value(syncNumber),
      tags: Value(tags),
      updatedAt: Value(updatedAt),
    );
  }

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Note(
      contentChecksum: serializer.fromJson<int>(json['contentChecksum']),
      extraData: serializer.fromJson<String>(json['extraData']),
      fieldValues: serializer.fromJson<String>(json['fieldValues']),
      globalUid: serializer.fromJson<String>(json['globalUid']),
      isFlagged: serializer.fromJson<bool>(json['isFlagged']),
      modelId: serializer.fromJson<int>(json['modelId']),
      noteId: serializer.fromJson<int>(json['noteId']),
      sortFieldHash: serializer.fromJson<int>(json['sortFieldHash']),
      syncNumber: serializer.fromJson<int>(json['syncNumber']),
      tags: serializer.fromJson<String>(json['tags']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'contentChecksum': serializer.toJson<int>(contentChecksum),
      'extraData': serializer.toJson<String>(extraData),
      'fieldValues': serializer.toJson<String>(fieldValues),
      'globalUid': serializer.toJson<String>(globalUid),
      'isFlagged': serializer.toJson<bool>(isFlagged),
      'modelId': serializer.toJson<int>(modelId),
      'noteId': serializer.toJson<int>(noteId),
      'sortFieldHash': serializer.toJson<int>(sortFieldHash),
      'syncNumber': serializer.toJson<int>(syncNumber),
      'tags': serializer.toJson<String>(tags),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Note copyWith(
          {int? contentChecksum,
          String? extraData,
          String? fieldValues,
          String? globalUid,
          bool? isFlagged,
          int? modelId,
          int? noteId,
          int? sortFieldHash,
          int? syncNumber,
          String? tags,
          DateTime? updatedAt}) =>
      Note(
        contentChecksum: contentChecksum ?? this.contentChecksum,
        extraData: extraData ?? this.extraData,
        fieldValues: fieldValues ?? this.fieldValues,
        globalUid: globalUid ?? this.globalUid,
        isFlagged: isFlagged ?? this.isFlagged,
        modelId: modelId ?? this.modelId,
        noteId: noteId ?? this.noteId,
        sortFieldHash: sortFieldHash ?? this.sortFieldHash,
        syncNumber: syncNumber ?? this.syncNumber,
        tags: tags ?? this.tags,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Note copyWithCompanion(NotesCompanion data) {
    return Note(
      contentChecksum: data.contentChecksum.present
          ? data.contentChecksum.value
          : this.contentChecksum,
      extraData: data.extraData.present ? data.extraData.value : this.extraData,
      fieldValues:
          data.fieldValues.present ? data.fieldValues.value : this.fieldValues,
      globalUid: data.globalUid.present ? data.globalUid.value : this.globalUid,
      isFlagged: data.isFlagged.present ? data.isFlagged.value : this.isFlagged,
      modelId: data.modelId.present ? data.modelId.value : this.modelId,
      noteId: data.noteId.present ? data.noteId.value : this.noteId,
      sortFieldHash: data.sortFieldHash.present
          ? data.sortFieldHash.value
          : this.sortFieldHash,
      syncNumber:
          data.syncNumber.present ? data.syncNumber.value : this.syncNumber,
      tags: data.tags.present ? data.tags.value : this.tags,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('contentChecksum: $contentChecksum, ')
          ..write('extraData: $extraData, ')
          ..write('fieldValues: $fieldValues, ')
          ..write('globalUid: $globalUid, ')
          ..write('isFlagged: $isFlagged, ')
          ..write('modelId: $modelId, ')
          ..write('noteId: $noteId, ')
          ..write('sortFieldHash: $sortFieldHash, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('tags: $tags, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      contentChecksum,
      extraData,
      fieldValues,
      globalUid,
      isFlagged,
      modelId,
      noteId,
      sortFieldHash,
      syncNumber,
      tags,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Note &&
          other.contentChecksum == this.contentChecksum &&
          other.extraData == this.extraData &&
          other.fieldValues == this.fieldValues &&
          other.globalUid == this.globalUid &&
          other.isFlagged == this.isFlagged &&
          other.modelId == this.modelId &&
          other.noteId == this.noteId &&
          other.sortFieldHash == this.sortFieldHash &&
          other.syncNumber == this.syncNumber &&
          other.tags == this.tags &&
          other.updatedAt == this.updatedAt);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<int> contentChecksum;
  final Value<String> extraData;
  final Value<String> fieldValues;
  final Value<String> globalUid;
  final Value<bool> isFlagged;
  final Value<int> modelId;
  final Value<int> noteId;
  final Value<int> sortFieldHash;
  final Value<int> syncNumber;
  final Value<String> tags;
  final Value<DateTime> updatedAt;
  const NotesCompanion({
    this.contentChecksum = const Value.absent(),
    this.extraData = const Value.absent(),
    this.fieldValues = const Value.absent(),
    this.globalUid = const Value.absent(),
    this.isFlagged = const Value.absent(),
    this.modelId = const Value.absent(),
    this.noteId = const Value.absent(),
    this.sortFieldHash = const Value.absent(),
    this.syncNumber = const Value.absent(),
    this.tags = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  NotesCompanion.insert({
    required int contentChecksum,
    required String extraData,
    required String fieldValues,
    required String globalUid,
    required bool isFlagged,
    required int modelId,
    this.noteId = const Value.absent(),
    required int sortFieldHash,
    required int syncNumber,
    required String tags,
    required DateTime updatedAt,
  })  : contentChecksum = Value(contentChecksum),
        extraData = Value(extraData),
        fieldValues = Value(fieldValues),
        globalUid = Value(globalUid),
        isFlagged = Value(isFlagged),
        modelId = Value(modelId),
        sortFieldHash = Value(sortFieldHash),
        syncNumber = Value(syncNumber),
        tags = Value(tags),
        updatedAt = Value(updatedAt);
  static Insertable<Note> custom({
    Expression<int>? contentChecksum,
    Expression<String>? extraData,
    Expression<String>? fieldValues,
    Expression<String>? globalUid,
    Expression<bool>? isFlagged,
    Expression<int>? modelId,
    Expression<int>? noteId,
    Expression<int>? sortFieldHash,
    Expression<int>? syncNumber,
    Expression<String>? tags,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (contentChecksum != null) 'content_checksum': contentChecksum,
      if (extraData != null) 'extra_data': extraData,
      if (fieldValues != null) 'field_values': fieldValues,
      if (globalUid != null) 'global_uid': globalUid,
      if (isFlagged != null) 'is_flagged': isFlagged,
      if (modelId != null) 'model_id': modelId,
      if (noteId != null) 'note_id': noteId,
      if (sortFieldHash != null) 'sort_field_hash': sortFieldHash,
      if (syncNumber != null) 'sync_number': syncNumber,
      if (tags != null) 'tags': tags,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  NotesCompanion copyWith(
      {Value<int>? contentChecksum,
      Value<String>? extraData,
      Value<String>? fieldValues,
      Value<String>? globalUid,
      Value<bool>? isFlagged,
      Value<int>? modelId,
      Value<int>? noteId,
      Value<int>? sortFieldHash,
      Value<int>? syncNumber,
      Value<String>? tags,
      Value<DateTime>? updatedAt}) {
    return NotesCompanion(
      contentChecksum: contentChecksum ?? this.contentChecksum,
      extraData: extraData ?? this.extraData,
      fieldValues: fieldValues ?? this.fieldValues,
      globalUid: globalUid ?? this.globalUid,
      isFlagged: isFlagged ?? this.isFlagged,
      modelId: modelId ?? this.modelId,
      noteId: noteId ?? this.noteId,
      sortFieldHash: sortFieldHash ?? this.sortFieldHash,
      syncNumber: syncNumber ?? this.syncNumber,
      tags: tags ?? this.tags,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (contentChecksum.present) {
      map['content_checksum'] = Variable<int>(contentChecksum.value);
    }
    if (extraData.present) {
      map['extra_data'] = Variable<String>(extraData.value);
    }
    if (fieldValues.present) {
      map['field_values'] = Variable<String>(fieldValues.value);
    }
    if (globalUid.present) {
      map['global_uid'] = Variable<String>(globalUid.value);
    }
    if (isFlagged.present) {
      map['is_flagged'] = Variable<bool>(isFlagged.value);
    }
    if (modelId.present) {
      map['model_id'] = Variable<int>(modelId.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<int>(noteId.value);
    }
    if (sortFieldHash.present) {
      map['sort_field_hash'] = Variable<int>(sortFieldHash.value);
    }
    if (syncNumber.present) {
      map['sync_number'] = Variable<int>(syncNumber.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('contentChecksum: $contentChecksum, ')
          ..write('extraData: $extraData, ')
          ..write('fieldValues: $fieldValues, ')
          ..write('globalUid: $globalUid, ')
          ..write('isFlagged: $isFlagged, ')
          ..write('modelId: $modelId, ')
          ..write('noteId: $noteId, ')
          ..write('sortFieldHash: $sortFieldHash, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('tags: $tags, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CardsTable extends Cards with TableInfo<$CardsTable, Card> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<int> cardId = GeneratedColumn<int>(
      'card_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deckIdMeta = const VerificationMeta('deckId');
  @override
  late final GeneratedColumn<int> deckId = GeneratedColumn<int>(
      'deck_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dueMeta = const VerificationMeta('due');
  @override
  late final GeneratedColumn<int> due = GeneratedColumn<int>(
      'due', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _easeFactorMeta =
      const VerificationMeta('easeFactor');
  @override
  late final GeneratedColumn<int> easeFactor = GeneratedColumn<int>(
      'ease_factor', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _extraDataMeta =
      const VerificationMeta('extraData');
  @override
  late final GeneratedColumn<String> extraData = GeneratedColumn<String>(
      'extra_data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _intervalDaysMeta =
      const VerificationMeta('intervalDays');
  @override
  late final GeneratedColumn<int> intervalDays = GeneratedColumn<int>(
      'interval_days', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isFlaggedMeta =
      const VerificationMeta('isFlagged');
  @override
  late final GeneratedColumn<bool> isFlagged = GeneratedColumn<bool>(
      'is_flagged', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_flagged" IN (0, 1))'));
  static const VerificationMeta _lapseCountMeta =
      const VerificationMeta('lapseCount');
  @override
  late final GeneratedColumn<int> lapseCount = GeneratedColumn<int>(
      'lapse_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _learningStepsLeftMeta =
      const VerificationMeta('learningStepsLeft');
  @override
  late final GeneratedColumn<int> learningStepsLeft = GeneratedColumn<int>(
      'learning_steps_left', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _learningTypeMeta =
      const VerificationMeta('learningType');
  @override
  late final GeneratedColumn<int> learningType = GeneratedColumn<int>(
      'learning_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  @override
  late final GeneratedColumn<int> noteId = GeneratedColumn<int>(
      'note_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _originalDeckIdMeta =
      const VerificationMeta('originalDeckId');
  @override
  late final GeneratedColumn<int> originalDeckId = GeneratedColumn<int>(
      'original_deck_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _originalDueMeta =
      const VerificationMeta('originalDue');
  @override
  late final GeneratedColumn<int> originalDue = GeneratedColumn<int>(
      'original_due', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _queueStateMeta =
      const VerificationMeta('queueState');
  @override
  late final GeneratedColumn<int> queueState = GeneratedColumn<int>(
      'queue_state', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reviewCountMeta =
      const VerificationMeta('reviewCount');
  @override
  late final GeneratedColumn<int> reviewCount = GeneratedColumn<int>(
      'review_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncNumberMeta =
      const VerificationMeta('syncNumber');
  @override
  late final GeneratedColumn<int> syncNumber = GeneratedColumn<int>(
      'sync_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _templateIndexMeta =
      const VerificationMeta('templateIndex');
  @override
  late final GeneratedColumn<int> templateIndex = GeneratedColumn<int>(
      'template_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        cardId,
        deckId,
        due,
        easeFactor,
        extraData,
        intervalDays,
        isFlagged,
        lapseCount,
        learningStepsLeft,
        learningType,
        noteId,
        originalDeckId,
        originalDue,
        queueState,
        reviewCount,
        syncNumber,
        templateIndex,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cards';
  @override
  VerificationContext validateIntegrity(Insertable<Card> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('card_id')) {
      context.handle(_cardIdMeta,
          cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta));
    }
    if (data.containsKey('deck_id')) {
      context.handle(_deckIdMeta,
          deckId.isAcceptableOrUnknown(data['deck_id']!, _deckIdMeta));
    } else if (isInserting) {
      context.missing(_deckIdMeta);
    }
    if (data.containsKey('due')) {
      context.handle(
          _dueMeta, due.isAcceptableOrUnknown(data['due']!, _dueMeta));
    } else if (isInserting) {
      context.missing(_dueMeta);
    }
    if (data.containsKey('ease_factor')) {
      context.handle(
          _easeFactorMeta,
          easeFactor.isAcceptableOrUnknown(
              data['ease_factor']!, _easeFactorMeta));
    } else if (isInserting) {
      context.missing(_easeFactorMeta);
    }
    if (data.containsKey('extra_data')) {
      context.handle(_extraDataMeta,
          extraData.isAcceptableOrUnknown(data['extra_data']!, _extraDataMeta));
    } else if (isInserting) {
      context.missing(_extraDataMeta);
    }
    if (data.containsKey('interval_days')) {
      context.handle(
          _intervalDaysMeta,
          intervalDays.isAcceptableOrUnknown(
              data['interval_days']!, _intervalDaysMeta));
    } else if (isInserting) {
      context.missing(_intervalDaysMeta);
    }
    if (data.containsKey('is_flagged')) {
      context.handle(_isFlaggedMeta,
          isFlagged.isAcceptableOrUnknown(data['is_flagged']!, _isFlaggedMeta));
    } else if (isInserting) {
      context.missing(_isFlaggedMeta);
    }
    if (data.containsKey('lapse_count')) {
      context.handle(
          _lapseCountMeta,
          lapseCount.isAcceptableOrUnknown(
              data['lapse_count']!, _lapseCountMeta));
    } else if (isInserting) {
      context.missing(_lapseCountMeta);
    }
    if (data.containsKey('learning_steps_left')) {
      context.handle(
          _learningStepsLeftMeta,
          learningStepsLeft.isAcceptableOrUnknown(
              data['learning_steps_left']!, _learningStepsLeftMeta));
    } else if (isInserting) {
      context.missing(_learningStepsLeftMeta);
    }
    if (data.containsKey('learning_type')) {
      context.handle(
          _learningTypeMeta,
          learningType.isAcceptableOrUnknown(
              data['learning_type']!, _learningTypeMeta));
    } else if (isInserting) {
      context.missing(_learningTypeMeta);
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    } else if (isInserting) {
      context.missing(_noteIdMeta);
    }
    if (data.containsKey('original_deck_id')) {
      context.handle(
          _originalDeckIdMeta,
          originalDeckId.isAcceptableOrUnknown(
              data['original_deck_id']!, _originalDeckIdMeta));
    } else if (isInserting) {
      context.missing(_originalDeckIdMeta);
    }
    if (data.containsKey('original_due')) {
      context.handle(
          _originalDueMeta,
          originalDue.isAcceptableOrUnknown(
              data['original_due']!, _originalDueMeta));
    } else if (isInserting) {
      context.missing(_originalDueMeta);
    }
    if (data.containsKey('queue_state')) {
      context.handle(
          _queueStateMeta,
          queueState.isAcceptableOrUnknown(
              data['queue_state']!, _queueStateMeta));
    } else if (isInserting) {
      context.missing(_queueStateMeta);
    }
    if (data.containsKey('review_count')) {
      context.handle(
          _reviewCountMeta,
          reviewCount.isAcceptableOrUnknown(
              data['review_count']!, _reviewCountMeta));
    } else if (isInserting) {
      context.missing(_reviewCountMeta);
    }
    if (data.containsKey('sync_number')) {
      context.handle(
          _syncNumberMeta,
          syncNumber.isAcceptableOrUnknown(
              data['sync_number']!, _syncNumberMeta));
    } else if (isInserting) {
      context.missing(_syncNumberMeta);
    }
    if (data.containsKey('template_index')) {
      context.handle(
          _templateIndexMeta,
          templateIndex.isAcceptableOrUnknown(
              data['template_index']!, _templateIndexMeta));
    } else if (isInserting) {
      context.missing(_templateIndexMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cardId};
  @override
  Card map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Card(
      cardId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}card_id'])!,
      deckId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deck_id'])!,
      due: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}due'])!,
      easeFactor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ease_factor'])!,
      extraData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}extra_data'])!,
      intervalDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}interval_days'])!,
      isFlagged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_flagged'])!,
      lapseCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}lapse_count'])!,
      learningStepsLeft: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}learning_steps_left'])!,
      learningType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}learning_type'])!,
      noteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}note_id'])!,
      originalDeckId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}original_deck_id'])!,
      originalDue: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}original_due'])!,
      queueState: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}queue_state'])!,
      reviewCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}review_count'])!,
      syncNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_number'])!,
      templateIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}template_index'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $CardsTable createAlias(String alias) {
    return $CardsTable(attachedDatabase, alias);
  }
}

class Card extends DataClass implements Insertable<Card> {
  final int cardId;
  final int deckId;
  final int due;
  final int easeFactor;
  final String extraData;
  final int intervalDays;
  final bool isFlagged;
  final int lapseCount;
  final int learningStepsLeft;
  final int learningType;
  final int noteId;
  final int originalDeckId;
  final int originalDue;
  final int queueState;
  final int reviewCount;
  final int syncNumber;
  final int templateIndex;
  final DateTime updatedAt;
  const Card(
      {required this.cardId,
      required this.deckId,
      required this.due,
      required this.easeFactor,
      required this.extraData,
      required this.intervalDays,
      required this.isFlagged,
      required this.lapseCount,
      required this.learningStepsLeft,
      required this.learningType,
      required this.noteId,
      required this.originalDeckId,
      required this.originalDue,
      required this.queueState,
      required this.reviewCount,
      required this.syncNumber,
      required this.templateIndex,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['card_id'] = Variable<int>(cardId);
    map['deck_id'] = Variable<int>(deckId);
    map['due'] = Variable<int>(due);
    map['ease_factor'] = Variable<int>(easeFactor);
    map['extra_data'] = Variable<String>(extraData);
    map['interval_days'] = Variable<int>(intervalDays);
    map['is_flagged'] = Variable<bool>(isFlagged);
    map['lapse_count'] = Variable<int>(lapseCount);
    map['learning_steps_left'] = Variable<int>(learningStepsLeft);
    map['learning_type'] = Variable<int>(learningType);
    map['note_id'] = Variable<int>(noteId);
    map['original_deck_id'] = Variable<int>(originalDeckId);
    map['original_due'] = Variable<int>(originalDue);
    map['queue_state'] = Variable<int>(queueState);
    map['review_count'] = Variable<int>(reviewCount);
    map['sync_number'] = Variable<int>(syncNumber);
    map['template_index'] = Variable<int>(templateIndex);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CardsCompanion toCompanion(bool nullToAbsent) {
    return CardsCompanion(
      cardId: Value(cardId),
      deckId: Value(deckId),
      due: Value(due),
      easeFactor: Value(easeFactor),
      extraData: Value(extraData),
      intervalDays: Value(intervalDays),
      isFlagged: Value(isFlagged),
      lapseCount: Value(lapseCount),
      learningStepsLeft: Value(learningStepsLeft),
      learningType: Value(learningType),
      noteId: Value(noteId),
      originalDeckId: Value(originalDeckId),
      originalDue: Value(originalDue),
      queueState: Value(queueState),
      reviewCount: Value(reviewCount),
      syncNumber: Value(syncNumber),
      templateIndex: Value(templateIndex),
      updatedAt: Value(updatedAt),
    );
  }

  factory Card.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Card(
      cardId: serializer.fromJson<int>(json['cardId']),
      deckId: serializer.fromJson<int>(json['deckId']),
      due: serializer.fromJson<int>(json['due']),
      easeFactor: serializer.fromJson<int>(json['easeFactor']),
      extraData: serializer.fromJson<String>(json['extraData']),
      intervalDays: serializer.fromJson<int>(json['intervalDays']),
      isFlagged: serializer.fromJson<bool>(json['isFlagged']),
      lapseCount: serializer.fromJson<int>(json['lapseCount']),
      learningStepsLeft: serializer.fromJson<int>(json['learningStepsLeft']),
      learningType: serializer.fromJson<int>(json['learningType']),
      noteId: serializer.fromJson<int>(json['noteId']),
      originalDeckId: serializer.fromJson<int>(json['originalDeckId']),
      originalDue: serializer.fromJson<int>(json['originalDue']),
      queueState: serializer.fromJson<int>(json['queueState']),
      reviewCount: serializer.fromJson<int>(json['reviewCount']),
      syncNumber: serializer.fromJson<int>(json['syncNumber']),
      templateIndex: serializer.fromJson<int>(json['templateIndex']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cardId': serializer.toJson<int>(cardId),
      'deckId': serializer.toJson<int>(deckId),
      'due': serializer.toJson<int>(due),
      'easeFactor': serializer.toJson<int>(easeFactor),
      'extraData': serializer.toJson<String>(extraData),
      'intervalDays': serializer.toJson<int>(intervalDays),
      'isFlagged': serializer.toJson<bool>(isFlagged),
      'lapseCount': serializer.toJson<int>(lapseCount),
      'learningStepsLeft': serializer.toJson<int>(learningStepsLeft),
      'learningType': serializer.toJson<int>(learningType),
      'noteId': serializer.toJson<int>(noteId),
      'originalDeckId': serializer.toJson<int>(originalDeckId),
      'originalDue': serializer.toJson<int>(originalDue),
      'queueState': serializer.toJson<int>(queueState),
      'reviewCount': serializer.toJson<int>(reviewCount),
      'syncNumber': serializer.toJson<int>(syncNumber),
      'templateIndex': serializer.toJson<int>(templateIndex),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Card copyWith(
          {int? cardId,
          int? deckId,
          int? due,
          int? easeFactor,
          String? extraData,
          int? intervalDays,
          bool? isFlagged,
          int? lapseCount,
          int? learningStepsLeft,
          int? learningType,
          int? noteId,
          int? originalDeckId,
          int? originalDue,
          int? queueState,
          int? reviewCount,
          int? syncNumber,
          int? templateIndex,
          DateTime? updatedAt}) =>
      Card(
        cardId: cardId ?? this.cardId,
        deckId: deckId ?? this.deckId,
        due: due ?? this.due,
        easeFactor: easeFactor ?? this.easeFactor,
        extraData: extraData ?? this.extraData,
        intervalDays: intervalDays ?? this.intervalDays,
        isFlagged: isFlagged ?? this.isFlagged,
        lapseCount: lapseCount ?? this.lapseCount,
        learningStepsLeft: learningStepsLeft ?? this.learningStepsLeft,
        learningType: learningType ?? this.learningType,
        noteId: noteId ?? this.noteId,
        originalDeckId: originalDeckId ?? this.originalDeckId,
        originalDue: originalDue ?? this.originalDue,
        queueState: queueState ?? this.queueState,
        reviewCount: reviewCount ?? this.reviewCount,
        syncNumber: syncNumber ?? this.syncNumber,
        templateIndex: templateIndex ?? this.templateIndex,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Card copyWithCompanion(CardsCompanion data) {
    return Card(
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      deckId: data.deckId.present ? data.deckId.value : this.deckId,
      due: data.due.present ? data.due.value : this.due,
      easeFactor:
          data.easeFactor.present ? data.easeFactor.value : this.easeFactor,
      extraData: data.extraData.present ? data.extraData.value : this.extraData,
      intervalDays: data.intervalDays.present
          ? data.intervalDays.value
          : this.intervalDays,
      isFlagged: data.isFlagged.present ? data.isFlagged.value : this.isFlagged,
      lapseCount:
          data.lapseCount.present ? data.lapseCount.value : this.lapseCount,
      learningStepsLeft: data.learningStepsLeft.present
          ? data.learningStepsLeft.value
          : this.learningStepsLeft,
      learningType: data.learningType.present
          ? data.learningType.value
          : this.learningType,
      noteId: data.noteId.present ? data.noteId.value : this.noteId,
      originalDeckId: data.originalDeckId.present
          ? data.originalDeckId.value
          : this.originalDeckId,
      originalDue:
          data.originalDue.present ? data.originalDue.value : this.originalDue,
      queueState:
          data.queueState.present ? data.queueState.value : this.queueState,
      reviewCount:
          data.reviewCount.present ? data.reviewCount.value : this.reviewCount,
      syncNumber:
          data.syncNumber.present ? data.syncNumber.value : this.syncNumber,
      templateIndex: data.templateIndex.present
          ? data.templateIndex.value
          : this.templateIndex,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Card(')
          ..write('cardId: $cardId, ')
          ..write('deckId: $deckId, ')
          ..write('due: $due, ')
          ..write('easeFactor: $easeFactor, ')
          ..write('extraData: $extraData, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('isFlagged: $isFlagged, ')
          ..write('lapseCount: $lapseCount, ')
          ..write('learningStepsLeft: $learningStepsLeft, ')
          ..write('learningType: $learningType, ')
          ..write('noteId: $noteId, ')
          ..write('originalDeckId: $originalDeckId, ')
          ..write('originalDue: $originalDue, ')
          ..write('queueState: $queueState, ')
          ..write('reviewCount: $reviewCount, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('templateIndex: $templateIndex, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      cardId,
      deckId,
      due,
      easeFactor,
      extraData,
      intervalDays,
      isFlagged,
      lapseCount,
      learningStepsLeft,
      learningType,
      noteId,
      originalDeckId,
      originalDue,
      queueState,
      reviewCount,
      syncNumber,
      templateIndex,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Card &&
          other.cardId == this.cardId &&
          other.deckId == this.deckId &&
          other.due == this.due &&
          other.easeFactor == this.easeFactor &&
          other.extraData == this.extraData &&
          other.intervalDays == this.intervalDays &&
          other.isFlagged == this.isFlagged &&
          other.lapseCount == this.lapseCount &&
          other.learningStepsLeft == this.learningStepsLeft &&
          other.learningType == this.learningType &&
          other.noteId == this.noteId &&
          other.originalDeckId == this.originalDeckId &&
          other.originalDue == this.originalDue &&
          other.queueState == this.queueState &&
          other.reviewCount == this.reviewCount &&
          other.syncNumber == this.syncNumber &&
          other.templateIndex == this.templateIndex &&
          other.updatedAt == this.updatedAt);
}

class CardsCompanion extends UpdateCompanion<Card> {
  final Value<int> cardId;
  final Value<int> deckId;
  final Value<int> due;
  final Value<int> easeFactor;
  final Value<String> extraData;
  final Value<int> intervalDays;
  final Value<bool> isFlagged;
  final Value<int> lapseCount;
  final Value<int> learningStepsLeft;
  final Value<int> learningType;
  final Value<int> noteId;
  final Value<int> originalDeckId;
  final Value<int> originalDue;
  final Value<int> queueState;
  final Value<int> reviewCount;
  final Value<int> syncNumber;
  final Value<int> templateIndex;
  final Value<DateTime> updatedAt;
  const CardsCompanion({
    this.cardId = const Value.absent(),
    this.deckId = const Value.absent(),
    this.due = const Value.absent(),
    this.easeFactor = const Value.absent(),
    this.extraData = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.isFlagged = const Value.absent(),
    this.lapseCount = const Value.absent(),
    this.learningStepsLeft = const Value.absent(),
    this.learningType = const Value.absent(),
    this.noteId = const Value.absent(),
    this.originalDeckId = const Value.absent(),
    this.originalDue = const Value.absent(),
    this.queueState = const Value.absent(),
    this.reviewCount = const Value.absent(),
    this.syncNumber = const Value.absent(),
    this.templateIndex = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CardsCompanion.insert({
    this.cardId = const Value.absent(),
    required int deckId,
    required int due,
    required int easeFactor,
    required String extraData,
    required int intervalDays,
    required bool isFlagged,
    required int lapseCount,
    required int learningStepsLeft,
    required int learningType,
    required int noteId,
    required int originalDeckId,
    required int originalDue,
    required int queueState,
    required int reviewCount,
    required int syncNumber,
    required int templateIndex,
    required DateTime updatedAt,
  })  : deckId = Value(deckId),
        due = Value(due),
        easeFactor = Value(easeFactor),
        extraData = Value(extraData),
        intervalDays = Value(intervalDays),
        isFlagged = Value(isFlagged),
        lapseCount = Value(lapseCount),
        learningStepsLeft = Value(learningStepsLeft),
        learningType = Value(learningType),
        noteId = Value(noteId),
        originalDeckId = Value(originalDeckId),
        originalDue = Value(originalDue),
        queueState = Value(queueState),
        reviewCount = Value(reviewCount),
        syncNumber = Value(syncNumber),
        templateIndex = Value(templateIndex),
        updatedAt = Value(updatedAt);
  static Insertable<Card> custom({
    Expression<int>? cardId,
    Expression<int>? deckId,
    Expression<int>? due,
    Expression<int>? easeFactor,
    Expression<String>? extraData,
    Expression<int>? intervalDays,
    Expression<bool>? isFlagged,
    Expression<int>? lapseCount,
    Expression<int>? learningStepsLeft,
    Expression<int>? learningType,
    Expression<int>? noteId,
    Expression<int>? originalDeckId,
    Expression<int>? originalDue,
    Expression<int>? queueState,
    Expression<int>? reviewCount,
    Expression<int>? syncNumber,
    Expression<int>? templateIndex,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (cardId != null) 'card_id': cardId,
      if (deckId != null) 'deck_id': deckId,
      if (due != null) 'due': due,
      if (easeFactor != null) 'ease_factor': easeFactor,
      if (extraData != null) 'extra_data': extraData,
      if (intervalDays != null) 'interval_days': intervalDays,
      if (isFlagged != null) 'is_flagged': isFlagged,
      if (lapseCount != null) 'lapse_count': lapseCount,
      if (learningStepsLeft != null) 'learning_steps_left': learningStepsLeft,
      if (learningType != null) 'learning_type': learningType,
      if (noteId != null) 'note_id': noteId,
      if (originalDeckId != null) 'original_deck_id': originalDeckId,
      if (originalDue != null) 'original_due': originalDue,
      if (queueState != null) 'queue_state': queueState,
      if (reviewCount != null) 'review_count': reviewCount,
      if (syncNumber != null) 'sync_number': syncNumber,
      if (templateIndex != null) 'template_index': templateIndex,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CardsCompanion copyWith(
      {Value<int>? cardId,
      Value<int>? deckId,
      Value<int>? due,
      Value<int>? easeFactor,
      Value<String>? extraData,
      Value<int>? intervalDays,
      Value<bool>? isFlagged,
      Value<int>? lapseCount,
      Value<int>? learningStepsLeft,
      Value<int>? learningType,
      Value<int>? noteId,
      Value<int>? originalDeckId,
      Value<int>? originalDue,
      Value<int>? queueState,
      Value<int>? reviewCount,
      Value<int>? syncNumber,
      Value<int>? templateIndex,
      Value<DateTime>? updatedAt}) {
    return CardsCompanion(
      cardId: cardId ?? this.cardId,
      deckId: deckId ?? this.deckId,
      due: due ?? this.due,
      easeFactor: easeFactor ?? this.easeFactor,
      extraData: extraData ?? this.extraData,
      intervalDays: intervalDays ?? this.intervalDays,
      isFlagged: isFlagged ?? this.isFlagged,
      lapseCount: lapseCount ?? this.lapseCount,
      learningStepsLeft: learningStepsLeft ?? this.learningStepsLeft,
      learningType: learningType ?? this.learningType,
      noteId: noteId ?? this.noteId,
      originalDeckId: originalDeckId ?? this.originalDeckId,
      originalDue: originalDue ?? this.originalDue,
      queueState: queueState ?? this.queueState,
      reviewCount: reviewCount ?? this.reviewCount,
      syncNumber: syncNumber ?? this.syncNumber,
      templateIndex: templateIndex ?? this.templateIndex,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cardId.present) {
      map['card_id'] = Variable<int>(cardId.value);
    }
    if (deckId.present) {
      map['deck_id'] = Variable<int>(deckId.value);
    }
    if (due.present) {
      map['due'] = Variable<int>(due.value);
    }
    if (easeFactor.present) {
      map['ease_factor'] = Variable<int>(easeFactor.value);
    }
    if (extraData.present) {
      map['extra_data'] = Variable<String>(extraData.value);
    }
    if (intervalDays.present) {
      map['interval_days'] = Variable<int>(intervalDays.value);
    }
    if (isFlagged.present) {
      map['is_flagged'] = Variable<bool>(isFlagged.value);
    }
    if (lapseCount.present) {
      map['lapse_count'] = Variable<int>(lapseCount.value);
    }
    if (learningStepsLeft.present) {
      map['learning_steps_left'] = Variable<int>(learningStepsLeft.value);
    }
    if (learningType.present) {
      map['learning_type'] = Variable<int>(learningType.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<int>(noteId.value);
    }
    if (originalDeckId.present) {
      map['original_deck_id'] = Variable<int>(originalDeckId.value);
    }
    if (originalDue.present) {
      map['original_due'] = Variable<int>(originalDue.value);
    }
    if (queueState.present) {
      map['queue_state'] = Variable<int>(queueState.value);
    }
    if (reviewCount.present) {
      map['review_count'] = Variable<int>(reviewCount.value);
    }
    if (syncNumber.present) {
      map['sync_number'] = Variable<int>(syncNumber.value);
    }
    if (templateIndex.present) {
      map['template_index'] = Variable<int>(templateIndex.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardsCompanion(')
          ..write('cardId: $cardId, ')
          ..write('deckId: $deckId, ')
          ..write('due: $due, ')
          ..write('easeFactor: $easeFactor, ')
          ..write('extraData: $extraData, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('isFlagged: $isFlagged, ')
          ..write('lapseCount: $lapseCount, ')
          ..write('learningStepsLeft: $learningStepsLeft, ')
          ..write('learningType: $learningType, ')
          ..write('noteId: $noteId, ')
          ..write('originalDeckId: $originalDeckId, ')
          ..write('originalDue: $originalDue, ')
          ..write('queueState: $queueState, ')
          ..write('reviewCount: $reviewCount, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('templateIndex: $templateIndex, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CollectionsTable extends Collections
    with TableInfo<$CollectionsTable, Collection> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _collectionIdMeta =
      const VerificationMeta('collectionId');
  @override
  late final GeneratedColumn<int> collectionId = GeneratedColumn<int>(
      'collection_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _configJsonMeta =
      const VerificationMeta('configJson');
  @override
  late final GeneratedColumn<String> configJson = GeneratedColumn<String>(
      'config_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _deckConfigJsonMeta =
      const VerificationMeta('deckConfigJson');
  @override
  late final GeneratedColumn<String> deckConfigJson = GeneratedColumn<String>(
      'deck_config_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _decksJsonMeta =
      const VerificationMeta('decksJson');
  @override
  late final GeneratedColumn<String> decksJson = GeneratedColumn<String>(
      'decks_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastSyncTimeMeta =
      const VerificationMeta('lastSyncTime');
  @override
  late final GeneratedColumn<DateTime> lastSyncTime = GeneratedColumn<DateTime>(
      'last_sync_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modelsJsonMeta =
      const VerificationMeta('modelsJson');
  @override
  late final GeneratedColumn<String> modelsJson = GeneratedColumn<String>(
      'models_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _schemaUpdatedAtMeta =
      const VerificationMeta('schemaUpdatedAt');
  @override
  late final GeneratedColumn<DateTime> schemaUpdatedAt =
      GeneratedColumn<DateTime>('schema_updated_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _syncNumberMeta =
      const VerificationMeta('syncNumber');
  @override
  late final GeneratedColumn<int> syncNumber = GeneratedColumn<int>(
      'sync_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _tagsJsonMeta =
      const VerificationMeta('tagsJson');
  @override
  late final GeneratedColumn<String> tagsJson = GeneratedColumn<String>(
      'tags_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _unusedFieldMeta =
      const VerificationMeta('unusedField');
  @override
  late final GeneratedColumn<int> unusedField = GeneratedColumn<int>(
      'unused_field', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        collectionId,
        configJson,
        createdAt,
        deckConfigJson,
        decksJson,
        lastSyncTime,
        modelsJson,
        schemaUpdatedAt,
        syncNumber,
        tagsJson,
        unusedField,
        updatedAt,
        version
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'collections';
  @override
  VerificationContext validateIntegrity(Insertable<Collection> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('collection_id')) {
      context.handle(
          _collectionIdMeta,
          collectionId.isAcceptableOrUnknown(
              data['collection_id']!, _collectionIdMeta));
    }
    if (data.containsKey('config_json')) {
      context.handle(
          _configJsonMeta,
          configJson.isAcceptableOrUnknown(
              data['config_json']!, _configJsonMeta));
    } else if (isInserting) {
      context.missing(_configJsonMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('deck_config_json')) {
      context.handle(
          _deckConfigJsonMeta,
          deckConfigJson.isAcceptableOrUnknown(
              data['deck_config_json']!, _deckConfigJsonMeta));
    } else if (isInserting) {
      context.missing(_deckConfigJsonMeta);
    }
    if (data.containsKey('decks_json')) {
      context.handle(_decksJsonMeta,
          decksJson.isAcceptableOrUnknown(data['decks_json']!, _decksJsonMeta));
    } else if (isInserting) {
      context.missing(_decksJsonMeta);
    }
    if (data.containsKey('last_sync_time')) {
      context.handle(
          _lastSyncTimeMeta,
          lastSyncTime.isAcceptableOrUnknown(
              data['last_sync_time']!, _lastSyncTimeMeta));
    } else if (isInserting) {
      context.missing(_lastSyncTimeMeta);
    }
    if (data.containsKey('models_json')) {
      context.handle(
          _modelsJsonMeta,
          modelsJson.isAcceptableOrUnknown(
              data['models_json']!, _modelsJsonMeta));
    } else if (isInserting) {
      context.missing(_modelsJsonMeta);
    }
    if (data.containsKey('schema_updated_at')) {
      context.handle(
          _schemaUpdatedAtMeta,
          schemaUpdatedAt.isAcceptableOrUnknown(
              data['schema_updated_at']!, _schemaUpdatedAtMeta));
    } else if (isInserting) {
      context.missing(_schemaUpdatedAtMeta);
    }
    if (data.containsKey('sync_number')) {
      context.handle(
          _syncNumberMeta,
          syncNumber.isAcceptableOrUnknown(
              data['sync_number']!, _syncNumberMeta));
    } else if (isInserting) {
      context.missing(_syncNumberMeta);
    }
    if (data.containsKey('tags_json')) {
      context.handle(_tagsJsonMeta,
          tagsJson.isAcceptableOrUnknown(data['tags_json']!, _tagsJsonMeta));
    } else if (isInserting) {
      context.missing(_tagsJsonMeta);
    }
    if (data.containsKey('unused_field')) {
      context.handle(
          _unusedFieldMeta,
          unusedField.isAcceptableOrUnknown(
              data['unused_field']!, _unusedFieldMeta));
    } else if (isInserting) {
      context.missing(_unusedFieldMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {collectionId};
  @override
  Collection map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Collection(
      collectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}collection_id'])!,
      configJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}config_json'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      deckConfigJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}deck_config_json'])!,
      decksJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}decks_json'])!,
      lastSyncTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_sync_time'])!,
      modelsJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}models_json'])!,
      schemaUpdatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}schema_updated_at'])!,
      syncNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_number'])!,
      tagsJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags_json'])!,
      unusedField: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unused_field'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
    );
  }

  @override
  $CollectionsTable createAlias(String alias) {
    return $CollectionsTable(attachedDatabase, alias);
  }
}

class Collection extends DataClass implements Insertable<Collection> {
  final int collectionId;
  final String configJson;
  final DateTime createdAt;
  final String deckConfigJson;
  final String decksJson;
  final DateTime lastSyncTime;
  final String modelsJson;
  final DateTime schemaUpdatedAt;
  final int syncNumber;
  final String tagsJson;
  final int unusedField;
  final DateTime updatedAt;
  final int version;
  const Collection(
      {required this.collectionId,
      required this.configJson,
      required this.createdAt,
      required this.deckConfigJson,
      required this.decksJson,
      required this.lastSyncTime,
      required this.modelsJson,
      required this.schemaUpdatedAt,
      required this.syncNumber,
      required this.tagsJson,
      required this.unusedField,
      required this.updatedAt,
      required this.version});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['collection_id'] = Variable<int>(collectionId);
    map['config_json'] = Variable<String>(configJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['deck_config_json'] = Variable<String>(deckConfigJson);
    map['decks_json'] = Variable<String>(decksJson);
    map['last_sync_time'] = Variable<DateTime>(lastSyncTime);
    map['models_json'] = Variable<String>(modelsJson);
    map['schema_updated_at'] = Variable<DateTime>(schemaUpdatedAt);
    map['sync_number'] = Variable<int>(syncNumber);
    map['tags_json'] = Variable<String>(tagsJson);
    map['unused_field'] = Variable<int>(unusedField);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['version'] = Variable<int>(version);
    return map;
  }

  CollectionsCompanion toCompanion(bool nullToAbsent) {
    return CollectionsCompanion(
      collectionId: Value(collectionId),
      configJson: Value(configJson),
      createdAt: Value(createdAt),
      deckConfigJson: Value(deckConfigJson),
      decksJson: Value(decksJson),
      lastSyncTime: Value(lastSyncTime),
      modelsJson: Value(modelsJson),
      schemaUpdatedAt: Value(schemaUpdatedAt),
      syncNumber: Value(syncNumber),
      tagsJson: Value(tagsJson),
      unusedField: Value(unusedField),
      updatedAt: Value(updatedAt),
      version: Value(version),
    );
  }

  factory Collection.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Collection(
      collectionId: serializer.fromJson<int>(json['collectionId']),
      configJson: serializer.fromJson<String>(json['configJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      deckConfigJson: serializer.fromJson<String>(json['deckConfigJson']),
      decksJson: serializer.fromJson<String>(json['decksJson']),
      lastSyncTime: serializer.fromJson<DateTime>(json['lastSyncTime']),
      modelsJson: serializer.fromJson<String>(json['modelsJson']),
      schemaUpdatedAt: serializer.fromJson<DateTime>(json['schemaUpdatedAt']),
      syncNumber: serializer.fromJson<int>(json['syncNumber']),
      tagsJson: serializer.fromJson<String>(json['tagsJson']),
      unusedField: serializer.fromJson<int>(json['unusedField']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      version: serializer.fromJson<int>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'collectionId': serializer.toJson<int>(collectionId),
      'configJson': serializer.toJson<String>(configJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'deckConfigJson': serializer.toJson<String>(deckConfigJson),
      'decksJson': serializer.toJson<String>(decksJson),
      'lastSyncTime': serializer.toJson<DateTime>(lastSyncTime),
      'modelsJson': serializer.toJson<String>(modelsJson),
      'schemaUpdatedAt': serializer.toJson<DateTime>(schemaUpdatedAt),
      'syncNumber': serializer.toJson<int>(syncNumber),
      'tagsJson': serializer.toJson<String>(tagsJson),
      'unusedField': serializer.toJson<int>(unusedField),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'version': serializer.toJson<int>(version),
    };
  }

  Collection copyWith(
          {int? collectionId,
          String? configJson,
          DateTime? createdAt,
          String? deckConfigJson,
          String? decksJson,
          DateTime? lastSyncTime,
          String? modelsJson,
          DateTime? schemaUpdatedAt,
          int? syncNumber,
          String? tagsJson,
          int? unusedField,
          DateTime? updatedAt,
          int? version}) =>
      Collection(
        collectionId: collectionId ?? this.collectionId,
        configJson: configJson ?? this.configJson,
        createdAt: createdAt ?? this.createdAt,
        deckConfigJson: deckConfigJson ?? this.deckConfigJson,
        decksJson: decksJson ?? this.decksJson,
        lastSyncTime: lastSyncTime ?? this.lastSyncTime,
        modelsJson: modelsJson ?? this.modelsJson,
        schemaUpdatedAt: schemaUpdatedAt ?? this.schemaUpdatedAt,
        syncNumber: syncNumber ?? this.syncNumber,
        tagsJson: tagsJson ?? this.tagsJson,
        unusedField: unusedField ?? this.unusedField,
        updatedAt: updatedAt ?? this.updatedAt,
        version: version ?? this.version,
      );
  Collection copyWithCompanion(CollectionsCompanion data) {
    return Collection(
      collectionId: data.collectionId.present
          ? data.collectionId.value
          : this.collectionId,
      configJson:
          data.configJson.present ? data.configJson.value : this.configJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      deckConfigJson: data.deckConfigJson.present
          ? data.deckConfigJson.value
          : this.deckConfigJson,
      decksJson: data.decksJson.present ? data.decksJson.value : this.decksJson,
      lastSyncTime: data.lastSyncTime.present
          ? data.lastSyncTime.value
          : this.lastSyncTime,
      modelsJson:
          data.modelsJson.present ? data.modelsJson.value : this.modelsJson,
      schemaUpdatedAt: data.schemaUpdatedAt.present
          ? data.schemaUpdatedAt.value
          : this.schemaUpdatedAt,
      syncNumber:
          data.syncNumber.present ? data.syncNumber.value : this.syncNumber,
      tagsJson: data.tagsJson.present ? data.tagsJson.value : this.tagsJson,
      unusedField:
          data.unusedField.present ? data.unusedField.value : this.unusedField,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      version: data.version.present ? data.version.value : this.version,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Collection(')
          ..write('collectionId: $collectionId, ')
          ..write('configJson: $configJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('deckConfigJson: $deckConfigJson, ')
          ..write('decksJson: $decksJson, ')
          ..write('lastSyncTime: $lastSyncTime, ')
          ..write('modelsJson: $modelsJson, ')
          ..write('schemaUpdatedAt: $schemaUpdatedAt, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('unusedField: $unusedField, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      collectionId,
      configJson,
      createdAt,
      deckConfigJson,
      decksJson,
      lastSyncTime,
      modelsJson,
      schemaUpdatedAt,
      syncNumber,
      tagsJson,
      unusedField,
      updatedAt,
      version);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Collection &&
          other.collectionId == this.collectionId &&
          other.configJson == this.configJson &&
          other.createdAt == this.createdAt &&
          other.deckConfigJson == this.deckConfigJson &&
          other.decksJson == this.decksJson &&
          other.lastSyncTime == this.lastSyncTime &&
          other.modelsJson == this.modelsJson &&
          other.schemaUpdatedAt == this.schemaUpdatedAt &&
          other.syncNumber == this.syncNumber &&
          other.tagsJson == this.tagsJson &&
          other.unusedField == this.unusedField &&
          other.updatedAt == this.updatedAt &&
          other.version == this.version);
}

class CollectionsCompanion extends UpdateCompanion<Collection> {
  final Value<int> collectionId;
  final Value<String> configJson;
  final Value<DateTime> createdAt;
  final Value<String> deckConfigJson;
  final Value<String> decksJson;
  final Value<DateTime> lastSyncTime;
  final Value<String> modelsJson;
  final Value<DateTime> schemaUpdatedAt;
  final Value<int> syncNumber;
  final Value<String> tagsJson;
  final Value<int> unusedField;
  final Value<DateTime> updatedAt;
  final Value<int> version;
  const CollectionsCompanion({
    this.collectionId = const Value.absent(),
    this.configJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.deckConfigJson = const Value.absent(),
    this.decksJson = const Value.absent(),
    this.lastSyncTime = const Value.absent(),
    this.modelsJson = const Value.absent(),
    this.schemaUpdatedAt = const Value.absent(),
    this.syncNumber = const Value.absent(),
    this.tagsJson = const Value.absent(),
    this.unusedField = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.version = const Value.absent(),
  });
  CollectionsCompanion.insert({
    this.collectionId = const Value.absent(),
    required String configJson,
    required DateTime createdAt,
    required String deckConfigJson,
    required String decksJson,
    required DateTime lastSyncTime,
    required String modelsJson,
    required DateTime schemaUpdatedAt,
    required int syncNumber,
    required String tagsJson,
    required int unusedField,
    required DateTime updatedAt,
    required int version,
  })  : configJson = Value(configJson),
        createdAt = Value(createdAt),
        deckConfigJson = Value(deckConfigJson),
        decksJson = Value(decksJson),
        lastSyncTime = Value(lastSyncTime),
        modelsJson = Value(modelsJson),
        schemaUpdatedAt = Value(schemaUpdatedAt),
        syncNumber = Value(syncNumber),
        tagsJson = Value(tagsJson),
        unusedField = Value(unusedField),
        updatedAt = Value(updatedAt),
        version = Value(version);
  static Insertable<Collection> custom({
    Expression<int>? collectionId,
    Expression<String>? configJson,
    Expression<DateTime>? createdAt,
    Expression<String>? deckConfigJson,
    Expression<String>? decksJson,
    Expression<DateTime>? lastSyncTime,
    Expression<String>? modelsJson,
    Expression<DateTime>? schemaUpdatedAt,
    Expression<int>? syncNumber,
    Expression<String>? tagsJson,
    Expression<int>? unusedField,
    Expression<DateTime>? updatedAt,
    Expression<int>? version,
  }) {
    return RawValuesInsertable({
      if (collectionId != null) 'collection_id': collectionId,
      if (configJson != null) 'config_json': configJson,
      if (createdAt != null) 'created_at': createdAt,
      if (deckConfigJson != null) 'deck_config_json': deckConfigJson,
      if (decksJson != null) 'decks_json': decksJson,
      if (lastSyncTime != null) 'last_sync_time': lastSyncTime,
      if (modelsJson != null) 'models_json': modelsJson,
      if (schemaUpdatedAt != null) 'schema_updated_at': schemaUpdatedAt,
      if (syncNumber != null) 'sync_number': syncNumber,
      if (tagsJson != null) 'tags_json': tagsJson,
      if (unusedField != null) 'unused_field': unusedField,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (version != null) 'version': version,
    });
  }

  CollectionsCompanion copyWith(
      {Value<int>? collectionId,
      Value<String>? configJson,
      Value<DateTime>? createdAt,
      Value<String>? deckConfigJson,
      Value<String>? decksJson,
      Value<DateTime>? lastSyncTime,
      Value<String>? modelsJson,
      Value<DateTime>? schemaUpdatedAt,
      Value<int>? syncNumber,
      Value<String>? tagsJson,
      Value<int>? unusedField,
      Value<DateTime>? updatedAt,
      Value<int>? version}) {
    return CollectionsCompanion(
      collectionId: collectionId ?? this.collectionId,
      configJson: configJson ?? this.configJson,
      createdAt: createdAt ?? this.createdAt,
      deckConfigJson: deckConfigJson ?? this.deckConfigJson,
      decksJson: decksJson ?? this.decksJson,
      lastSyncTime: lastSyncTime ?? this.lastSyncTime,
      modelsJson: modelsJson ?? this.modelsJson,
      schemaUpdatedAt: schemaUpdatedAt ?? this.schemaUpdatedAt,
      syncNumber: syncNumber ?? this.syncNumber,
      tagsJson: tagsJson ?? this.tagsJson,
      unusedField: unusedField ?? this.unusedField,
      updatedAt: updatedAt ?? this.updatedAt,
      version: version ?? this.version,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (collectionId.present) {
      map['collection_id'] = Variable<int>(collectionId.value);
    }
    if (configJson.present) {
      map['config_json'] = Variable<String>(configJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (deckConfigJson.present) {
      map['deck_config_json'] = Variable<String>(deckConfigJson.value);
    }
    if (decksJson.present) {
      map['decks_json'] = Variable<String>(decksJson.value);
    }
    if (lastSyncTime.present) {
      map['last_sync_time'] = Variable<DateTime>(lastSyncTime.value);
    }
    if (modelsJson.present) {
      map['models_json'] = Variable<String>(modelsJson.value);
    }
    if (schemaUpdatedAt.present) {
      map['schema_updated_at'] = Variable<DateTime>(schemaUpdatedAt.value);
    }
    if (syncNumber.present) {
      map['sync_number'] = Variable<int>(syncNumber.value);
    }
    if (tagsJson.present) {
      map['tags_json'] = Variable<String>(tagsJson.value);
    }
    if (unusedField.present) {
      map['unused_field'] = Variable<int>(unusedField.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionsCompanion(')
          ..write('collectionId: $collectionId, ')
          ..write('configJson: $configJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('deckConfigJson: $deckConfigJson, ')
          ..write('decksJson: $decksJson, ')
          ..write('lastSyncTime: $lastSyncTime, ')
          ..write('modelsJson: $modelsJson, ')
          ..write('schemaUpdatedAt: $schemaUpdatedAt, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('unusedField: $unusedField, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }
}

class $ReviewLogsTable extends ReviewLogs
    with TableInfo<$ReviewLogsTable, ReviewLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReviewLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<int> cardId = GeneratedColumn<int>(
      'card_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currentIntervalMeta =
      const VerificationMeta('currentInterval');
  @override
  late final GeneratedColumn<int> currentInterval = GeneratedColumn<int>(
      'current_interval', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _previousIntervalMeta =
      const VerificationMeta('previousInterval');
  @override
  late final GeneratedColumn<int> previousInterval = GeneratedColumn<int>(
      'previous_interval', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
      'rating', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _responseTimeMsMeta =
      const VerificationMeta('responseTimeMs');
  @override
  late final GeneratedColumn<int> responseTimeMs = GeneratedColumn<int>(
      'response_time_ms', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reviewIdMeta =
      const VerificationMeta('reviewId');
  @override
  late final GeneratedColumn<int> reviewId = GeneratedColumn<int>(
      'review_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _reviewTypeMeta =
      const VerificationMeta('reviewType');
  @override
  late final GeneratedColumn<int> reviewType = GeneratedColumn<int>(
      'review_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncNumberMeta =
      const VerificationMeta('syncNumber');
  @override
  late final GeneratedColumn<int> syncNumber = GeneratedColumn<int>(
      'sync_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _updatedEaseFactorMeta =
      const VerificationMeta('updatedEaseFactor');
  @override
  late final GeneratedColumn<int> updatedEaseFactor = GeneratedColumn<int>(
      'updated_ease_factor', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        cardId,
        currentInterval,
        previousInterval,
        rating,
        responseTimeMs,
        reviewId,
        reviewType,
        syncNumber,
        updatedEaseFactor
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'review_logs';
  @override
  VerificationContext validateIntegrity(Insertable<ReviewLog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('card_id')) {
      context.handle(_cardIdMeta,
          cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta));
    } else if (isInserting) {
      context.missing(_cardIdMeta);
    }
    if (data.containsKey('current_interval')) {
      context.handle(
          _currentIntervalMeta,
          currentInterval.isAcceptableOrUnknown(
              data['current_interval']!, _currentIntervalMeta));
    } else if (isInserting) {
      context.missing(_currentIntervalMeta);
    }
    if (data.containsKey('previous_interval')) {
      context.handle(
          _previousIntervalMeta,
          previousInterval.isAcceptableOrUnknown(
              data['previous_interval']!, _previousIntervalMeta));
    } else if (isInserting) {
      context.missing(_previousIntervalMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('response_time_ms')) {
      context.handle(
          _responseTimeMsMeta,
          responseTimeMs.isAcceptableOrUnknown(
              data['response_time_ms']!, _responseTimeMsMeta));
    } else if (isInserting) {
      context.missing(_responseTimeMsMeta);
    }
    if (data.containsKey('review_id')) {
      context.handle(_reviewIdMeta,
          reviewId.isAcceptableOrUnknown(data['review_id']!, _reviewIdMeta));
    }
    if (data.containsKey('review_type')) {
      context.handle(
          _reviewTypeMeta,
          reviewType.isAcceptableOrUnknown(
              data['review_type']!, _reviewTypeMeta));
    } else if (isInserting) {
      context.missing(_reviewTypeMeta);
    }
    if (data.containsKey('sync_number')) {
      context.handle(
          _syncNumberMeta,
          syncNumber.isAcceptableOrUnknown(
              data['sync_number']!, _syncNumberMeta));
    } else if (isInserting) {
      context.missing(_syncNumberMeta);
    }
    if (data.containsKey('updated_ease_factor')) {
      context.handle(
          _updatedEaseFactorMeta,
          updatedEaseFactor.isAcceptableOrUnknown(
              data['updated_ease_factor']!, _updatedEaseFactorMeta));
    } else if (isInserting) {
      context.missing(_updatedEaseFactorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {reviewId};
  @override
  ReviewLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReviewLog(
      cardId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}card_id'])!,
      currentInterval: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}current_interval'])!,
      previousInterval: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}previous_interval'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rating'])!,
      responseTimeMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}response_time_ms'])!,
      reviewId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}review_id'])!,
      reviewType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}review_type'])!,
      syncNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_number'])!,
      updatedEaseFactor: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}updated_ease_factor'])!,
    );
  }

  @override
  $ReviewLogsTable createAlias(String alias) {
    return $ReviewLogsTable(attachedDatabase, alias);
  }
}

class ReviewLog extends DataClass implements Insertable<ReviewLog> {
  final int cardId;
  final int currentInterval;
  final int previousInterval;
  final int rating;
  final int responseTimeMs;
  final int reviewId;
  final int reviewType;
  final int syncNumber;
  final int updatedEaseFactor;
  const ReviewLog(
      {required this.cardId,
      required this.currentInterval,
      required this.previousInterval,
      required this.rating,
      required this.responseTimeMs,
      required this.reviewId,
      required this.reviewType,
      required this.syncNumber,
      required this.updatedEaseFactor});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['card_id'] = Variable<int>(cardId);
    map['current_interval'] = Variable<int>(currentInterval);
    map['previous_interval'] = Variable<int>(previousInterval);
    map['rating'] = Variable<int>(rating);
    map['response_time_ms'] = Variable<int>(responseTimeMs);
    map['review_id'] = Variable<int>(reviewId);
    map['review_type'] = Variable<int>(reviewType);
    map['sync_number'] = Variable<int>(syncNumber);
    map['updated_ease_factor'] = Variable<int>(updatedEaseFactor);
    return map;
  }

  ReviewLogsCompanion toCompanion(bool nullToAbsent) {
    return ReviewLogsCompanion(
      cardId: Value(cardId),
      currentInterval: Value(currentInterval),
      previousInterval: Value(previousInterval),
      rating: Value(rating),
      responseTimeMs: Value(responseTimeMs),
      reviewId: Value(reviewId),
      reviewType: Value(reviewType),
      syncNumber: Value(syncNumber),
      updatedEaseFactor: Value(updatedEaseFactor),
    );
  }

  factory ReviewLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReviewLog(
      cardId: serializer.fromJson<int>(json['cardId']),
      currentInterval: serializer.fromJson<int>(json['currentInterval']),
      previousInterval: serializer.fromJson<int>(json['previousInterval']),
      rating: serializer.fromJson<int>(json['rating']),
      responseTimeMs: serializer.fromJson<int>(json['responseTimeMs']),
      reviewId: serializer.fromJson<int>(json['reviewId']),
      reviewType: serializer.fromJson<int>(json['reviewType']),
      syncNumber: serializer.fromJson<int>(json['syncNumber']),
      updatedEaseFactor: serializer.fromJson<int>(json['updatedEaseFactor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cardId': serializer.toJson<int>(cardId),
      'currentInterval': serializer.toJson<int>(currentInterval),
      'previousInterval': serializer.toJson<int>(previousInterval),
      'rating': serializer.toJson<int>(rating),
      'responseTimeMs': serializer.toJson<int>(responseTimeMs),
      'reviewId': serializer.toJson<int>(reviewId),
      'reviewType': serializer.toJson<int>(reviewType),
      'syncNumber': serializer.toJson<int>(syncNumber),
      'updatedEaseFactor': serializer.toJson<int>(updatedEaseFactor),
    };
  }

  ReviewLog copyWith(
          {int? cardId,
          int? currentInterval,
          int? previousInterval,
          int? rating,
          int? responseTimeMs,
          int? reviewId,
          int? reviewType,
          int? syncNumber,
          int? updatedEaseFactor}) =>
      ReviewLog(
        cardId: cardId ?? this.cardId,
        currentInterval: currentInterval ?? this.currentInterval,
        previousInterval: previousInterval ?? this.previousInterval,
        rating: rating ?? this.rating,
        responseTimeMs: responseTimeMs ?? this.responseTimeMs,
        reviewId: reviewId ?? this.reviewId,
        reviewType: reviewType ?? this.reviewType,
        syncNumber: syncNumber ?? this.syncNumber,
        updatedEaseFactor: updatedEaseFactor ?? this.updatedEaseFactor,
      );
  ReviewLog copyWithCompanion(ReviewLogsCompanion data) {
    return ReviewLog(
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      currentInterval: data.currentInterval.present
          ? data.currentInterval.value
          : this.currentInterval,
      previousInterval: data.previousInterval.present
          ? data.previousInterval.value
          : this.previousInterval,
      rating: data.rating.present ? data.rating.value : this.rating,
      responseTimeMs: data.responseTimeMs.present
          ? data.responseTimeMs.value
          : this.responseTimeMs,
      reviewId: data.reviewId.present ? data.reviewId.value : this.reviewId,
      reviewType:
          data.reviewType.present ? data.reviewType.value : this.reviewType,
      syncNumber:
          data.syncNumber.present ? data.syncNumber.value : this.syncNumber,
      updatedEaseFactor: data.updatedEaseFactor.present
          ? data.updatedEaseFactor.value
          : this.updatedEaseFactor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReviewLog(')
          ..write('cardId: $cardId, ')
          ..write('currentInterval: $currentInterval, ')
          ..write('previousInterval: $previousInterval, ')
          ..write('rating: $rating, ')
          ..write('responseTimeMs: $responseTimeMs, ')
          ..write('reviewId: $reviewId, ')
          ..write('reviewType: $reviewType, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('updatedEaseFactor: $updatedEaseFactor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      cardId,
      currentInterval,
      previousInterval,
      rating,
      responseTimeMs,
      reviewId,
      reviewType,
      syncNumber,
      updatedEaseFactor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReviewLog &&
          other.cardId == this.cardId &&
          other.currentInterval == this.currentInterval &&
          other.previousInterval == this.previousInterval &&
          other.rating == this.rating &&
          other.responseTimeMs == this.responseTimeMs &&
          other.reviewId == this.reviewId &&
          other.reviewType == this.reviewType &&
          other.syncNumber == this.syncNumber &&
          other.updatedEaseFactor == this.updatedEaseFactor);
}

class ReviewLogsCompanion extends UpdateCompanion<ReviewLog> {
  final Value<int> cardId;
  final Value<int> currentInterval;
  final Value<int> previousInterval;
  final Value<int> rating;
  final Value<int> responseTimeMs;
  final Value<int> reviewId;
  final Value<int> reviewType;
  final Value<int> syncNumber;
  final Value<int> updatedEaseFactor;
  const ReviewLogsCompanion({
    this.cardId = const Value.absent(),
    this.currentInterval = const Value.absent(),
    this.previousInterval = const Value.absent(),
    this.rating = const Value.absent(),
    this.responseTimeMs = const Value.absent(),
    this.reviewId = const Value.absent(),
    this.reviewType = const Value.absent(),
    this.syncNumber = const Value.absent(),
    this.updatedEaseFactor = const Value.absent(),
  });
  ReviewLogsCompanion.insert({
    required int cardId,
    required int currentInterval,
    required int previousInterval,
    required int rating,
    required int responseTimeMs,
    this.reviewId = const Value.absent(),
    required int reviewType,
    required int syncNumber,
    required int updatedEaseFactor,
  })  : cardId = Value(cardId),
        currentInterval = Value(currentInterval),
        previousInterval = Value(previousInterval),
        rating = Value(rating),
        responseTimeMs = Value(responseTimeMs),
        reviewType = Value(reviewType),
        syncNumber = Value(syncNumber),
        updatedEaseFactor = Value(updatedEaseFactor);
  static Insertable<ReviewLog> custom({
    Expression<int>? cardId,
    Expression<int>? currentInterval,
    Expression<int>? previousInterval,
    Expression<int>? rating,
    Expression<int>? responseTimeMs,
    Expression<int>? reviewId,
    Expression<int>? reviewType,
    Expression<int>? syncNumber,
    Expression<int>? updatedEaseFactor,
  }) {
    return RawValuesInsertable({
      if (cardId != null) 'card_id': cardId,
      if (currentInterval != null) 'current_interval': currentInterval,
      if (previousInterval != null) 'previous_interval': previousInterval,
      if (rating != null) 'rating': rating,
      if (responseTimeMs != null) 'response_time_ms': responseTimeMs,
      if (reviewId != null) 'review_id': reviewId,
      if (reviewType != null) 'review_type': reviewType,
      if (syncNumber != null) 'sync_number': syncNumber,
      if (updatedEaseFactor != null) 'updated_ease_factor': updatedEaseFactor,
    });
  }

  ReviewLogsCompanion copyWith(
      {Value<int>? cardId,
      Value<int>? currentInterval,
      Value<int>? previousInterval,
      Value<int>? rating,
      Value<int>? responseTimeMs,
      Value<int>? reviewId,
      Value<int>? reviewType,
      Value<int>? syncNumber,
      Value<int>? updatedEaseFactor}) {
    return ReviewLogsCompanion(
      cardId: cardId ?? this.cardId,
      currentInterval: currentInterval ?? this.currentInterval,
      previousInterval: previousInterval ?? this.previousInterval,
      rating: rating ?? this.rating,
      responseTimeMs: responseTimeMs ?? this.responseTimeMs,
      reviewId: reviewId ?? this.reviewId,
      reviewType: reviewType ?? this.reviewType,
      syncNumber: syncNumber ?? this.syncNumber,
      updatedEaseFactor: updatedEaseFactor ?? this.updatedEaseFactor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cardId.present) {
      map['card_id'] = Variable<int>(cardId.value);
    }
    if (currentInterval.present) {
      map['current_interval'] = Variable<int>(currentInterval.value);
    }
    if (previousInterval.present) {
      map['previous_interval'] = Variable<int>(previousInterval.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (responseTimeMs.present) {
      map['response_time_ms'] = Variable<int>(responseTimeMs.value);
    }
    if (reviewId.present) {
      map['review_id'] = Variable<int>(reviewId.value);
    }
    if (reviewType.present) {
      map['review_type'] = Variable<int>(reviewType.value);
    }
    if (syncNumber.present) {
      map['sync_number'] = Variable<int>(syncNumber.value);
    }
    if (updatedEaseFactor.present) {
      map['updated_ease_factor'] = Variable<int>(updatedEaseFactor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReviewLogsCompanion(')
          ..write('cardId: $cardId, ')
          ..write('currentInterval: $currentInterval, ')
          ..write('previousInterval: $previousInterval, ')
          ..write('rating: $rating, ')
          ..write('responseTimeMs: $responseTimeMs, ')
          ..write('reviewId: $reviewId, ')
          ..write('reviewType: $reviewType, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('updatedEaseFactor: $updatedEaseFactor')
          ..write(')'))
        .toString();
  }
}

class $DeletionLogsTable extends DeletionLogs
    with TableInfo<$DeletionLogsTable, DeletionLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DeletionLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _deletedObjectIdMeta =
      const VerificationMeta('deletedObjectId');
  @override
  late final GeneratedColumn<int> deletedObjectId = GeneratedColumn<int>(
      'deleted_object_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _deletedObjectTypeMeta =
      const VerificationMeta('deletedObjectType');
  @override
  late final GeneratedColumn<int> deletedObjectType = GeneratedColumn<int>(
      'deleted_object_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncNumberMeta =
      const VerificationMeta('syncNumber');
  @override
  late final GeneratedColumn<int> syncNumber = GeneratedColumn<int>(
      'sync_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [deletedObjectId, deletedObjectType, syncNumber];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'deletion_logs';
  @override
  VerificationContext validateIntegrity(Insertable<DeletionLog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('deleted_object_id')) {
      context.handle(
          _deletedObjectIdMeta,
          deletedObjectId.isAcceptableOrUnknown(
              data['deleted_object_id']!, _deletedObjectIdMeta));
    } else if (isInserting) {
      context.missing(_deletedObjectIdMeta);
    }
    if (data.containsKey('deleted_object_type')) {
      context.handle(
          _deletedObjectTypeMeta,
          deletedObjectType.isAcceptableOrUnknown(
              data['deleted_object_type']!, _deletedObjectTypeMeta));
    } else if (isInserting) {
      context.missing(_deletedObjectTypeMeta);
    }
    if (data.containsKey('sync_number')) {
      context.handle(
          _syncNumberMeta,
          syncNumber.isAcceptableOrUnknown(
              data['sync_number']!, _syncNumberMeta));
    } else if (isInserting) {
      context.missing(_syncNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  DeletionLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DeletionLog(
      deletedObjectId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deleted_object_id'])!,
      deletedObjectType: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}deleted_object_type'])!,
      syncNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_number'])!,
    );
  }

  @override
  $DeletionLogsTable createAlias(String alias) {
    return $DeletionLogsTable(attachedDatabase, alias);
  }
}

class DeletionLog extends DataClass implements Insertable<DeletionLog> {
  final int deletedObjectId;
  final int deletedObjectType;
  final int syncNumber;
  const DeletionLog(
      {required this.deletedObjectId,
      required this.deletedObjectType,
      required this.syncNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['deleted_object_id'] = Variable<int>(deletedObjectId);
    map['deleted_object_type'] = Variable<int>(deletedObjectType);
    map['sync_number'] = Variable<int>(syncNumber);
    return map;
  }

  DeletionLogsCompanion toCompanion(bool nullToAbsent) {
    return DeletionLogsCompanion(
      deletedObjectId: Value(deletedObjectId),
      deletedObjectType: Value(deletedObjectType),
      syncNumber: Value(syncNumber),
    );
  }

  factory DeletionLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DeletionLog(
      deletedObjectId: serializer.fromJson<int>(json['deletedObjectId']),
      deletedObjectType: serializer.fromJson<int>(json['deletedObjectType']),
      syncNumber: serializer.fromJson<int>(json['syncNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'deletedObjectId': serializer.toJson<int>(deletedObjectId),
      'deletedObjectType': serializer.toJson<int>(deletedObjectType),
      'syncNumber': serializer.toJson<int>(syncNumber),
    };
  }

  DeletionLog copyWith(
          {int? deletedObjectId, int? deletedObjectType, int? syncNumber}) =>
      DeletionLog(
        deletedObjectId: deletedObjectId ?? this.deletedObjectId,
        deletedObjectType: deletedObjectType ?? this.deletedObjectType,
        syncNumber: syncNumber ?? this.syncNumber,
      );
  DeletionLog copyWithCompanion(DeletionLogsCompanion data) {
    return DeletionLog(
      deletedObjectId: data.deletedObjectId.present
          ? data.deletedObjectId.value
          : this.deletedObjectId,
      deletedObjectType: data.deletedObjectType.present
          ? data.deletedObjectType.value
          : this.deletedObjectType,
      syncNumber:
          data.syncNumber.present ? data.syncNumber.value : this.syncNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DeletionLog(')
          ..write('deletedObjectId: $deletedObjectId, ')
          ..write('deletedObjectType: $deletedObjectType, ')
          ..write('syncNumber: $syncNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(deletedObjectId, deletedObjectType, syncNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DeletionLog &&
          other.deletedObjectId == this.deletedObjectId &&
          other.deletedObjectType == this.deletedObjectType &&
          other.syncNumber == this.syncNumber);
}

class DeletionLogsCompanion extends UpdateCompanion<DeletionLog> {
  final Value<int> deletedObjectId;
  final Value<int> deletedObjectType;
  final Value<int> syncNumber;
  final Value<int> rowid;
  const DeletionLogsCompanion({
    this.deletedObjectId = const Value.absent(),
    this.deletedObjectType = const Value.absent(),
    this.syncNumber = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DeletionLogsCompanion.insert({
    required int deletedObjectId,
    required int deletedObjectType,
    required int syncNumber,
    this.rowid = const Value.absent(),
  })  : deletedObjectId = Value(deletedObjectId),
        deletedObjectType = Value(deletedObjectType),
        syncNumber = Value(syncNumber);
  static Insertable<DeletionLog> custom({
    Expression<int>? deletedObjectId,
    Expression<int>? deletedObjectType,
    Expression<int>? syncNumber,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (deletedObjectId != null) 'deleted_object_id': deletedObjectId,
      if (deletedObjectType != null) 'deleted_object_type': deletedObjectType,
      if (syncNumber != null) 'sync_number': syncNumber,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DeletionLogsCompanion copyWith(
      {Value<int>? deletedObjectId,
      Value<int>? deletedObjectType,
      Value<int>? syncNumber,
      Value<int>? rowid}) {
    return DeletionLogsCompanion(
      deletedObjectId: deletedObjectId ?? this.deletedObjectId,
      deletedObjectType: deletedObjectType ?? this.deletedObjectType,
      syncNumber: syncNumber ?? this.syncNumber,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (deletedObjectId.present) {
      map['deleted_object_id'] = Variable<int>(deletedObjectId.value);
    }
    if (deletedObjectType.present) {
      map['deleted_object_type'] = Variable<int>(deletedObjectType.value);
    }
    if (syncNumber.present) {
      map['sync_number'] = Variable<int>(syncNumber.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DeletionLogsCompanion(')
          ..write('deletedObjectId: $deletedObjectId, ')
          ..write('deletedObjectType: $deletedObjectType, ')
          ..write('syncNumber: $syncNumber, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $NotesTable notes = $NotesTable(this);
  late final $CardsTable cards = $CardsTable(this);
  late final $CollectionsTable collections = $CollectionsTable(this);
  late final $ReviewLogsTable reviewLogs = $ReviewLogsTable(this);
  late final $DeletionLogsTable deletionLogs = $DeletionLogsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [notes, cards, collections, reviewLogs, deletionLogs];
}

typedef $$NotesTableCreateCompanionBuilder = NotesCompanion Function({
  required int contentChecksum,
  required String extraData,
  required String fieldValues,
  required String globalUid,
  required bool isFlagged,
  required int modelId,
  Value<int> noteId,
  required int sortFieldHash,
  required int syncNumber,
  required String tags,
  required DateTime updatedAt,
});
typedef $$NotesTableUpdateCompanionBuilder = NotesCompanion Function({
  Value<int> contentChecksum,
  Value<String> extraData,
  Value<String> fieldValues,
  Value<String> globalUid,
  Value<bool> isFlagged,
  Value<int> modelId,
  Value<int> noteId,
  Value<int> sortFieldHash,
  Value<int> syncNumber,
  Value<String> tags,
  Value<DateTime> updatedAt,
});

class $$NotesTableFilterComposer extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get contentChecksum => $composableBuilder(
      column: $table.contentChecksum,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get extraData => $composableBuilder(
      column: $table.extraData, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fieldValues => $composableBuilder(
      column: $table.fieldValues, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get globalUid => $composableBuilder(
      column: $table.globalUid, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFlagged => $composableBuilder(
      column: $table.isFlagged, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get modelId => $composableBuilder(
      column: $table.modelId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get noteId => $composableBuilder(
      column: $table.noteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sortFieldHash => $composableBuilder(
      column: $table.sortFieldHash, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$NotesTableOrderingComposer
    extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get contentChecksum => $composableBuilder(
      column: $table.contentChecksum,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get extraData => $composableBuilder(
      column: $table.extraData, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fieldValues => $composableBuilder(
      column: $table.fieldValues, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get globalUid => $composableBuilder(
      column: $table.globalUid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFlagged => $composableBuilder(
      column: $table.isFlagged, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get modelId => $composableBuilder(
      column: $table.modelId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get noteId => $composableBuilder(
      column: $table.noteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sortFieldHash => $composableBuilder(
      column: $table.sortFieldHash,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$NotesTableAnnotationComposer
    extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get contentChecksum => $composableBuilder(
      column: $table.contentChecksum, builder: (column) => column);

  GeneratedColumn<String> get extraData =>
      $composableBuilder(column: $table.extraData, builder: (column) => column);

  GeneratedColumn<String> get fieldValues => $composableBuilder(
      column: $table.fieldValues, builder: (column) => column);

  GeneratedColumn<String> get globalUid =>
      $composableBuilder(column: $table.globalUid, builder: (column) => column);

  GeneratedColumn<bool> get isFlagged =>
      $composableBuilder(column: $table.isFlagged, builder: (column) => column);

  GeneratedColumn<int> get modelId =>
      $composableBuilder(column: $table.modelId, builder: (column) => column);

  GeneratedColumn<int> get noteId =>
      $composableBuilder(column: $table.noteId, builder: (column) => column);

  GeneratedColumn<int> get sortFieldHash => $composableBuilder(
      column: $table.sortFieldHash, builder: (column) => column);

  GeneratedColumn<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => column);

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$NotesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NotesTable,
    Note,
    $$NotesTableFilterComposer,
    $$NotesTableOrderingComposer,
    $$NotesTableAnnotationComposer,
    $$NotesTableCreateCompanionBuilder,
    $$NotesTableUpdateCompanionBuilder,
    (Note, BaseReferences<_$AppDatabase, $NotesTable, Note>),
    Note,
    PrefetchHooks Function()> {
  $$NotesTableTableManager(_$AppDatabase db, $NotesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> contentChecksum = const Value.absent(),
            Value<String> extraData = const Value.absent(),
            Value<String> fieldValues = const Value.absent(),
            Value<String> globalUid = const Value.absent(),
            Value<bool> isFlagged = const Value.absent(),
            Value<int> modelId = const Value.absent(),
            Value<int> noteId = const Value.absent(),
            Value<int> sortFieldHash = const Value.absent(),
            Value<int> syncNumber = const Value.absent(),
            Value<String> tags = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              NotesCompanion(
            contentChecksum: contentChecksum,
            extraData: extraData,
            fieldValues: fieldValues,
            globalUid: globalUid,
            isFlagged: isFlagged,
            modelId: modelId,
            noteId: noteId,
            sortFieldHash: sortFieldHash,
            syncNumber: syncNumber,
            tags: tags,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            required int contentChecksum,
            required String extraData,
            required String fieldValues,
            required String globalUid,
            required bool isFlagged,
            required int modelId,
            Value<int> noteId = const Value.absent(),
            required int sortFieldHash,
            required int syncNumber,
            required String tags,
            required DateTime updatedAt,
          }) =>
              NotesCompanion.insert(
            contentChecksum: contentChecksum,
            extraData: extraData,
            fieldValues: fieldValues,
            globalUid: globalUid,
            isFlagged: isFlagged,
            modelId: modelId,
            noteId: noteId,
            sortFieldHash: sortFieldHash,
            syncNumber: syncNumber,
            tags: tags,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NotesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NotesTable,
    Note,
    $$NotesTableFilterComposer,
    $$NotesTableOrderingComposer,
    $$NotesTableAnnotationComposer,
    $$NotesTableCreateCompanionBuilder,
    $$NotesTableUpdateCompanionBuilder,
    (Note, BaseReferences<_$AppDatabase, $NotesTable, Note>),
    Note,
    PrefetchHooks Function()>;
typedef $$CardsTableCreateCompanionBuilder = CardsCompanion Function({
  Value<int> cardId,
  required int deckId,
  required int due,
  required int easeFactor,
  required String extraData,
  required int intervalDays,
  required bool isFlagged,
  required int lapseCount,
  required int learningStepsLeft,
  required int learningType,
  required int noteId,
  required int originalDeckId,
  required int originalDue,
  required int queueState,
  required int reviewCount,
  required int syncNumber,
  required int templateIndex,
  required DateTime updatedAt,
});
typedef $$CardsTableUpdateCompanionBuilder = CardsCompanion Function({
  Value<int> cardId,
  Value<int> deckId,
  Value<int> due,
  Value<int> easeFactor,
  Value<String> extraData,
  Value<int> intervalDays,
  Value<bool> isFlagged,
  Value<int> lapseCount,
  Value<int> learningStepsLeft,
  Value<int> learningType,
  Value<int> noteId,
  Value<int> originalDeckId,
  Value<int> originalDue,
  Value<int> queueState,
  Value<int> reviewCount,
  Value<int> syncNumber,
  Value<int> templateIndex,
  Value<DateTime> updatedAt,
});

class $$CardsTableFilterComposer extends Composer<_$AppDatabase, $CardsTable> {
  $$CardsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get deckId => $composableBuilder(
      column: $table.deckId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get due => $composableBuilder(
      column: $table.due, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get easeFactor => $composableBuilder(
      column: $table.easeFactor, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get extraData => $composableBuilder(
      column: $table.extraData, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFlagged => $composableBuilder(
      column: $table.isFlagged, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lapseCount => $composableBuilder(
      column: $table.lapseCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get learningStepsLeft => $composableBuilder(
      column: $table.learningStepsLeft,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get learningType => $composableBuilder(
      column: $table.learningType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get noteId => $composableBuilder(
      column: $table.noteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get originalDeckId => $composableBuilder(
      column: $table.originalDeckId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get originalDue => $composableBuilder(
      column: $table.originalDue, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get queueState => $composableBuilder(
      column: $table.queueState, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get reviewCount => $composableBuilder(
      column: $table.reviewCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get templateIndex => $composableBuilder(
      column: $table.templateIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$CardsTableOrderingComposer
    extends Composer<_$AppDatabase, $CardsTable> {
  $$CardsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get deckId => $composableBuilder(
      column: $table.deckId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get due => $composableBuilder(
      column: $table.due, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get easeFactor => $composableBuilder(
      column: $table.easeFactor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get extraData => $composableBuilder(
      column: $table.extraData, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFlagged => $composableBuilder(
      column: $table.isFlagged, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lapseCount => $composableBuilder(
      column: $table.lapseCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get learningStepsLeft => $composableBuilder(
      column: $table.learningStepsLeft,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get learningType => $composableBuilder(
      column: $table.learningType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get noteId => $composableBuilder(
      column: $table.noteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get originalDeckId => $composableBuilder(
      column: $table.originalDeckId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get originalDue => $composableBuilder(
      column: $table.originalDue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get queueState => $composableBuilder(
      column: $table.queueState, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get reviewCount => $composableBuilder(
      column: $table.reviewCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get templateIndex => $composableBuilder(
      column: $table.templateIndex,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$CardsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CardsTable> {
  $$CardsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get cardId =>
      $composableBuilder(column: $table.cardId, builder: (column) => column);

  GeneratedColumn<int> get deckId =>
      $composableBuilder(column: $table.deckId, builder: (column) => column);

  GeneratedColumn<int> get due =>
      $composableBuilder(column: $table.due, builder: (column) => column);

  GeneratedColumn<int> get easeFactor => $composableBuilder(
      column: $table.easeFactor, builder: (column) => column);

  GeneratedColumn<String> get extraData =>
      $composableBuilder(column: $table.extraData, builder: (column) => column);

  GeneratedColumn<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays, builder: (column) => column);

  GeneratedColumn<bool> get isFlagged =>
      $composableBuilder(column: $table.isFlagged, builder: (column) => column);

  GeneratedColumn<int> get lapseCount => $composableBuilder(
      column: $table.lapseCount, builder: (column) => column);

  GeneratedColumn<int> get learningStepsLeft => $composableBuilder(
      column: $table.learningStepsLeft, builder: (column) => column);

  GeneratedColumn<int> get learningType => $composableBuilder(
      column: $table.learningType, builder: (column) => column);

  GeneratedColumn<int> get noteId =>
      $composableBuilder(column: $table.noteId, builder: (column) => column);

  GeneratedColumn<int> get originalDeckId => $composableBuilder(
      column: $table.originalDeckId, builder: (column) => column);

  GeneratedColumn<int> get originalDue => $composableBuilder(
      column: $table.originalDue, builder: (column) => column);

  GeneratedColumn<int> get queueState => $composableBuilder(
      column: $table.queueState, builder: (column) => column);

  GeneratedColumn<int> get reviewCount => $composableBuilder(
      column: $table.reviewCount, builder: (column) => column);

  GeneratedColumn<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => column);

  GeneratedColumn<int> get templateIndex => $composableBuilder(
      column: $table.templateIndex, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CardsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CardsTable,
    Card,
    $$CardsTableFilterComposer,
    $$CardsTableOrderingComposer,
    $$CardsTableAnnotationComposer,
    $$CardsTableCreateCompanionBuilder,
    $$CardsTableUpdateCompanionBuilder,
    (Card, BaseReferences<_$AppDatabase, $CardsTable, Card>),
    Card,
    PrefetchHooks Function()> {
  $$CardsTableTableManager(_$AppDatabase db, $CardsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CardsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CardsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CardsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> cardId = const Value.absent(),
            Value<int> deckId = const Value.absent(),
            Value<int> due = const Value.absent(),
            Value<int> easeFactor = const Value.absent(),
            Value<String> extraData = const Value.absent(),
            Value<int> intervalDays = const Value.absent(),
            Value<bool> isFlagged = const Value.absent(),
            Value<int> lapseCount = const Value.absent(),
            Value<int> learningStepsLeft = const Value.absent(),
            Value<int> learningType = const Value.absent(),
            Value<int> noteId = const Value.absent(),
            Value<int> originalDeckId = const Value.absent(),
            Value<int> originalDue = const Value.absent(),
            Value<int> queueState = const Value.absent(),
            Value<int> reviewCount = const Value.absent(),
            Value<int> syncNumber = const Value.absent(),
            Value<int> templateIndex = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              CardsCompanion(
            cardId: cardId,
            deckId: deckId,
            due: due,
            easeFactor: easeFactor,
            extraData: extraData,
            intervalDays: intervalDays,
            isFlagged: isFlagged,
            lapseCount: lapseCount,
            learningStepsLeft: learningStepsLeft,
            learningType: learningType,
            noteId: noteId,
            originalDeckId: originalDeckId,
            originalDue: originalDue,
            queueState: queueState,
            reviewCount: reviewCount,
            syncNumber: syncNumber,
            templateIndex: templateIndex,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> cardId = const Value.absent(),
            required int deckId,
            required int due,
            required int easeFactor,
            required String extraData,
            required int intervalDays,
            required bool isFlagged,
            required int lapseCount,
            required int learningStepsLeft,
            required int learningType,
            required int noteId,
            required int originalDeckId,
            required int originalDue,
            required int queueState,
            required int reviewCount,
            required int syncNumber,
            required int templateIndex,
            required DateTime updatedAt,
          }) =>
              CardsCompanion.insert(
            cardId: cardId,
            deckId: deckId,
            due: due,
            easeFactor: easeFactor,
            extraData: extraData,
            intervalDays: intervalDays,
            isFlagged: isFlagged,
            lapseCount: lapseCount,
            learningStepsLeft: learningStepsLeft,
            learningType: learningType,
            noteId: noteId,
            originalDeckId: originalDeckId,
            originalDue: originalDue,
            queueState: queueState,
            reviewCount: reviewCount,
            syncNumber: syncNumber,
            templateIndex: templateIndex,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CardsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CardsTable,
    Card,
    $$CardsTableFilterComposer,
    $$CardsTableOrderingComposer,
    $$CardsTableAnnotationComposer,
    $$CardsTableCreateCompanionBuilder,
    $$CardsTableUpdateCompanionBuilder,
    (Card, BaseReferences<_$AppDatabase, $CardsTable, Card>),
    Card,
    PrefetchHooks Function()>;
typedef $$CollectionsTableCreateCompanionBuilder = CollectionsCompanion
    Function({
  Value<int> collectionId,
  required String configJson,
  required DateTime createdAt,
  required String deckConfigJson,
  required String decksJson,
  required DateTime lastSyncTime,
  required String modelsJson,
  required DateTime schemaUpdatedAt,
  required int syncNumber,
  required String tagsJson,
  required int unusedField,
  required DateTime updatedAt,
  required int version,
});
typedef $$CollectionsTableUpdateCompanionBuilder = CollectionsCompanion
    Function({
  Value<int> collectionId,
  Value<String> configJson,
  Value<DateTime> createdAt,
  Value<String> deckConfigJson,
  Value<String> decksJson,
  Value<DateTime> lastSyncTime,
  Value<String> modelsJson,
  Value<DateTime> schemaUpdatedAt,
  Value<int> syncNumber,
  Value<String> tagsJson,
  Value<int> unusedField,
  Value<DateTime> updatedAt,
  Value<int> version,
});

class $$CollectionsTableFilterComposer
    extends Composer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get collectionId => $composableBuilder(
      column: $table.collectionId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get configJson => $composableBuilder(
      column: $table.configJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get deckConfigJson => $composableBuilder(
      column: $table.deckConfigJson,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get decksJson => $composableBuilder(
      column: $table.decksJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastSyncTime => $composableBuilder(
      column: $table.lastSyncTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get modelsJson => $composableBuilder(
      column: $table.modelsJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get schemaUpdatedAt => $composableBuilder(
      column: $table.schemaUpdatedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tagsJson => $composableBuilder(
      column: $table.tagsJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get unusedField => $composableBuilder(
      column: $table.unusedField, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));
}

class $$CollectionsTableOrderingComposer
    extends Composer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get collectionId => $composableBuilder(
      column: $table.collectionId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get configJson => $composableBuilder(
      column: $table.configJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get deckConfigJson => $composableBuilder(
      column: $table.deckConfigJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get decksJson => $composableBuilder(
      column: $table.decksJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastSyncTime => $composableBuilder(
      column: $table.lastSyncTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get modelsJson => $composableBuilder(
      column: $table.modelsJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get schemaUpdatedAt => $composableBuilder(
      column: $table.schemaUpdatedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tagsJson => $composableBuilder(
      column: $table.tagsJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get unusedField => $composableBuilder(
      column: $table.unusedField, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));
}

class $$CollectionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get collectionId => $composableBuilder(
      column: $table.collectionId, builder: (column) => column);

  GeneratedColumn<String> get configJson => $composableBuilder(
      column: $table.configJson, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get deckConfigJson => $composableBuilder(
      column: $table.deckConfigJson, builder: (column) => column);

  GeneratedColumn<String> get decksJson =>
      $composableBuilder(column: $table.decksJson, builder: (column) => column);

  GeneratedColumn<DateTime> get lastSyncTime => $composableBuilder(
      column: $table.lastSyncTime, builder: (column) => column);

  GeneratedColumn<String> get modelsJson => $composableBuilder(
      column: $table.modelsJson, builder: (column) => column);

  GeneratedColumn<DateTime> get schemaUpdatedAt => $composableBuilder(
      column: $table.schemaUpdatedAt, builder: (column) => column);

  GeneratedColumn<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => column);

  GeneratedColumn<String> get tagsJson =>
      $composableBuilder(column: $table.tagsJson, builder: (column) => column);

  GeneratedColumn<int> get unusedField => $composableBuilder(
      column: $table.unusedField, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);
}

class $$CollectionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CollectionsTable,
    Collection,
    $$CollectionsTableFilterComposer,
    $$CollectionsTableOrderingComposer,
    $$CollectionsTableAnnotationComposer,
    $$CollectionsTableCreateCompanionBuilder,
    $$CollectionsTableUpdateCompanionBuilder,
    (Collection, BaseReferences<_$AppDatabase, $CollectionsTable, Collection>),
    Collection,
    PrefetchHooks Function()> {
  $$CollectionsTableTableManager(_$AppDatabase db, $CollectionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CollectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CollectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CollectionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> collectionId = const Value.absent(),
            Value<String> configJson = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<String> deckConfigJson = const Value.absent(),
            Value<String> decksJson = const Value.absent(),
            Value<DateTime> lastSyncTime = const Value.absent(),
            Value<String> modelsJson = const Value.absent(),
            Value<DateTime> schemaUpdatedAt = const Value.absent(),
            Value<int> syncNumber = const Value.absent(),
            Value<String> tagsJson = const Value.absent(),
            Value<int> unusedField = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> version = const Value.absent(),
          }) =>
              CollectionsCompanion(
            collectionId: collectionId,
            configJson: configJson,
            createdAt: createdAt,
            deckConfigJson: deckConfigJson,
            decksJson: decksJson,
            lastSyncTime: lastSyncTime,
            modelsJson: modelsJson,
            schemaUpdatedAt: schemaUpdatedAt,
            syncNumber: syncNumber,
            tagsJson: tagsJson,
            unusedField: unusedField,
            updatedAt: updatedAt,
            version: version,
          ),
          createCompanionCallback: ({
            Value<int> collectionId = const Value.absent(),
            required String configJson,
            required DateTime createdAt,
            required String deckConfigJson,
            required String decksJson,
            required DateTime lastSyncTime,
            required String modelsJson,
            required DateTime schemaUpdatedAt,
            required int syncNumber,
            required String tagsJson,
            required int unusedField,
            required DateTime updatedAt,
            required int version,
          }) =>
              CollectionsCompanion.insert(
            collectionId: collectionId,
            configJson: configJson,
            createdAt: createdAt,
            deckConfigJson: deckConfigJson,
            decksJson: decksJson,
            lastSyncTime: lastSyncTime,
            modelsJson: modelsJson,
            schemaUpdatedAt: schemaUpdatedAt,
            syncNumber: syncNumber,
            tagsJson: tagsJson,
            unusedField: unusedField,
            updatedAt: updatedAt,
            version: version,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CollectionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CollectionsTable,
    Collection,
    $$CollectionsTableFilterComposer,
    $$CollectionsTableOrderingComposer,
    $$CollectionsTableAnnotationComposer,
    $$CollectionsTableCreateCompanionBuilder,
    $$CollectionsTableUpdateCompanionBuilder,
    (Collection, BaseReferences<_$AppDatabase, $CollectionsTable, Collection>),
    Collection,
    PrefetchHooks Function()>;
typedef $$ReviewLogsTableCreateCompanionBuilder = ReviewLogsCompanion Function({
  required int cardId,
  required int currentInterval,
  required int previousInterval,
  required int rating,
  required int responseTimeMs,
  Value<int> reviewId,
  required int reviewType,
  required int syncNumber,
  required int updatedEaseFactor,
});
typedef $$ReviewLogsTableUpdateCompanionBuilder = ReviewLogsCompanion Function({
  Value<int> cardId,
  Value<int> currentInterval,
  Value<int> previousInterval,
  Value<int> rating,
  Value<int> responseTimeMs,
  Value<int> reviewId,
  Value<int> reviewType,
  Value<int> syncNumber,
  Value<int> updatedEaseFactor,
});

class $$ReviewLogsTableFilterComposer
    extends Composer<_$AppDatabase, $ReviewLogsTable> {
  $$ReviewLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get currentInterval => $composableBuilder(
      column: $table.currentInterval,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get previousInterval => $composableBuilder(
      column: $table.previousInterval,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get responseTimeMs => $composableBuilder(
      column: $table.responseTimeMs,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get reviewId => $composableBuilder(
      column: $table.reviewId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get reviewType => $composableBuilder(
      column: $table.reviewType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get updatedEaseFactor => $composableBuilder(
      column: $table.updatedEaseFactor,
      builder: (column) => ColumnFilters(column));
}

class $$ReviewLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReviewLogsTable> {
  $$ReviewLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get currentInterval => $composableBuilder(
      column: $table.currentInterval,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get previousInterval => $composableBuilder(
      column: $table.previousInterval,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get responseTimeMs => $composableBuilder(
      column: $table.responseTimeMs,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get reviewId => $composableBuilder(
      column: $table.reviewId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get reviewType => $composableBuilder(
      column: $table.reviewType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get updatedEaseFactor => $composableBuilder(
      column: $table.updatedEaseFactor,
      builder: (column) => ColumnOrderings(column));
}

class $$ReviewLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReviewLogsTable> {
  $$ReviewLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get cardId =>
      $composableBuilder(column: $table.cardId, builder: (column) => column);

  GeneratedColumn<int> get currentInterval => $composableBuilder(
      column: $table.currentInterval, builder: (column) => column);

  GeneratedColumn<int> get previousInterval => $composableBuilder(
      column: $table.previousInterval, builder: (column) => column);

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<int> get responseTimeMs => $composableBuilder(
      column: $table.responseTimeMs, builder: (column) => column);

  GeneratedColumn<int> get reviewId =>
      $composableBuilder(column: $table.reviewId, builder: (column) => column);

  GeneratedColumn<int> get reviewType => $composableBuilder(
      column: $table.reviewType, builder: (column) => column);

  GeneratedColumn<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => column);

  GeneratedColumn<int> get updatedEaseFactor => $composableBuilder(
      column: $table.updatedEaseFactor, builder: (column) => column);
}

class $$ReviewLogsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReviewLogsTable,
    ReviewLog,
    $$ReviewLogsTableFilterComposer,
    $$ReviewLogsTableOrderingComposer,
    $$ReviewLogsTableAnnotationComposer,
    $$ReviewLogsTableCreateCompanionBuilder,
    $$ReviewLogsTableUpdateCompanionBuilder,
    (ReviewLog, BaseReferences<_$AppDatabase, $ReviewLogsTable, ReviewLog>),
    ReviewLog,
    PrefetchHooks Function()> {
  $$ReviewLogsTableTableManager(_$AppDatabase db, $ReviewLogsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReviewLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReviewLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReviewLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> cardId = const Value.absent(),
            Value<int> currentInterval = const Value.absent(),
            Value<int> previousInterval = const Value.absent(),
            Value<int> rating = const Value.absent(),
            Value<int> responseTimeMs = const Value.absent(),
            Value<int> reviewId = const Value.absent(),
            Value<int> reviewType = const Value.absent(),
            Value<int> syncNumber = const Value.absent(),
            Value<int> updatedEaseFactor = const Value.absent(),
          }) =>
              ReviewLogsCompanion(
            cardId: cardId,
            currentInterval: currentInterval,
            previousInterval: previousInterval,
            rating: rating,
            responseTimeMs: responseTimeMs,
            reviewId: reviewId,
            reviewType: reviewType,
            syncNumber: syncNumber,
            updatedEaseFactor: updatedEaseFactor,
          ),
          createCompanionCallback: ({
            required int cardId,
            required int currentInterval,
            required int previousInterval,
            required int rating,
            required int responseTimeMs,
            Value<int> reviewId = const Value.absent(),
            required int reviewType,
            required int syncNumber,
            required int updatedEaseFactor,
          }) =>
              ReviewLogsCompanion.insert(
            cardId: cardId,
            currentInterval: currentInterval,
            previousInterval: previousInterval,
            rating: rating,
            responseTimeMs: responseTimeMs,
            reviewId: reviewId,
            reviewType: reviewType,
            syncNumber: syncNumber,
            updatedEaseFactor: updatedEaseFactor,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReviewLogsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReviewLogsTable,
    ReviewLog,
    $$ReviewLogsTableFilterComposer,
    $$ReviewLogsTableOrderingComposer,
    $$ReviewLogsTableAnnotationComposer,
    $$ReviewLogsTableCreateCompanionBuilder,
    $$ReviewLogsTableUpdateCompanionBuilder,
    (ReviewLog, BaseReferences<_$AppDatabase, $ReviewLogsTable, ReviewLog>),
    ReviewLog,
    PrefetchHooks Function()>;
typedef $$DeletionLogsTableCreateCompanionBuilder = DeletionLogsCompanion
    Function({
  required int deletedObjectId,
  required int deletedObjectType,
  required int syncNumber,
  Value<int> rowid,
});
typedef $$DeletionLogsTableUpdateCompanionBuilder = DeletionLogsCompanion
    Function({
  Value<int> deletedObjectId,
  Value<int> deletedObjectType,
  Value<int> syncNumber,
  Value<int> rowid,
});

class $$DeletionLogsTableFilterComposer
    extends Composer<_$AppDatabase, $DeletionLogsTable> {
  $$DeletionLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get deletedObjectId => $composableBuilder(
      column: $table.deletedObjectId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get deletedObjectType => $composableBuilder(
      column: $table.deletedObjectType,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnFilters(column));
}

class $$DeletionLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $DeletionLogsTable> {
  $$DeletionLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get deletedObjectId => $composableBuilder(
      column: $table.deletedObjectId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get deletedObjectType => $composableBuilder(
      column: $table.deletedObjectType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => ColumnOrderings(column));
}

class $$DeletionLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DeletionLogsTable> {
  $$DeletionLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get deletedObjectId => $composableBuilder(
      column: $table.deletedObjectId, builder: (column) => column);

  GeneratedColumn<int> get deletedObjectType => $composableBuilder(
      column: $table.deletedObjectType, builder: (column) => column);

  GeneratedColumn<int> get syncNumber => $composableBuilder(
      column: $table.syncNumber, builder: (column) => column);
}

class $$DeletionLogsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DeletionLogsTable,
    DeletionLog,
    $$DeletionLogsTableFilterComposer,
    $$DeletionLogsTableOrderingComposer,
    $$DeletionLogsTableAnnotationComposer,
    $$DeletionLogsTableCreateCompanionBuilder,
    $$DeletionLogsTableUpdateCompanionBuilder,
    (
      DeletionLog,
      BaseReferences<_$AppDatabase, $DeletionLogsTable, DeletionLog>
    ),
    DeletionLog,
    PrefetchHooks Function()> {
  $$DeletionLogsTableTableManager(_$AppDatabase db, $DeletionLogsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DeletionLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DeletionLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DeletionLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> deletedObjectId = const Value.absent(),
            Value<int> deletedObjectType = const Value.absent(),
            Value<int> syncNumber = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DeletionLogsCompanion(
            deletedObjectId: deletedObjectId,
            deletedObjectType: deletedObjectType,
            syncNumber: syncNumber,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int deletedObjectId,
            required int deletedObjectType,
            required int syncNumber,
            Value<int> rowid = const Value.absent(),
          }) =>
              DeletionLogsCompanion.insert(
            deletedObjectId: deletedObjectId,
            deletedObjectType: deletedObjectType,
            syncNumber: syncNumber,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DeletionLogsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DeletionLogsTable,
    DeletionLog,
    $$DeletionLogsTableFilterComposer,
    $$DeletionLogsTableOrderingComposer,
    $$DeletionLogsTableAnnotationComposer,
    $$DeletionLogsTableCreateCompanionBuilder,
    $$DeletionLogsTableUpdateCompanionBuilder,
    (
      DeletionLog,
      BaseReferences<_$AppDatabase, $DeletionLogsTable, DeletionLog>
    ),
    DeletionLog,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$NotesTableTableManager get notes =>
      $$NotesTableTableManager(_db, _db.notes);
  $$CardsTableTableManager get cards =>
      $$CardsTableTableManager(_db, _db.cards);
  $$CollectionsTableTableManager get collections =>
      $$CollectionsTableTableManager(_db, _db.collections);
  $$ReviewLogsTableTableManager get reviewLogs =>
      $$ReviewLogsTableTableManager(_db, _db.reviewLogs);
  $$DeletionLogsTableTableManager get deletionLogs =>
      $$DeletionLogsTableTableManager(_db, _db.deletionLogs);
}
