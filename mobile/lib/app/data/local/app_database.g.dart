// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTableTable extends UsersTable
    with TableInfo<$UsersTableTable, UsersTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _biologicalSexMeta = const VerificationMeta(
    'biologicalSex',
  );
  @override
  late final GeneratedColumn<String> biologicalSex = GeneratedColumn<String>(
    'biological_sex',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('male'),
  );
  static const VerificationMeta _dateOfBirthMeta = const VerificationMeta(
    'dateOfBirth',
  );
  @override
  late final GeneratedColumn<DateTime> dateOfBirth = GeneratedColumn<DateTime>(
    'date_of_birth',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _heightCmMeta = const VerificationMeta(
    'heightCm',
  );
  @override
  late final GeneratedColumn<double> heightCm = GeneratedColumn<double>(
    'height_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightKgMeta = const VerificationMeta(
    'weightKg',
  );
  @override
  late final GeneratedColumn<double> weightKg = GeneratedColumn<double>(
    'weight_kg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _activityLevelMeta = const VerificationMeta(
    'activityLevel',
  );
  @override
  late final GeneratedColumn<String> activityLevel = GeneratedColumn<String>(
    'activity_level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('moderate'),
  );
  static const VerificationMeta _preferredUnitsMeta = const VerificationMeta(
    'preferredUnits',
  );
  @override
  late final GeneratedColumn<String> preferredUnits = GeneratedColumn<String>(
    'preferred_units',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('metric'),
  );
  static const VerificationMeta _timezoneMeta = const VerificationMeta(
    'timezone',
  );
  @override
  late final GeneratedColumn<String> timezone = GeneratedColumn<String>(
    'timezone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('UTC'),
  );
  static const VerificationMeta _isBiometricEnabledMeta =
      const VerificationMeta('isBiometricEnabled');
  @override
  late final GeneratedColumn<bool> isBiometricEnabled = GeneratedColumn<bool>(
    'is_biometric_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_biometric_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    email,
    name,
    biologicalSex,
    dateOfBirth,
    heightCm,
    weightKg,
    activityLevel,
    preferredUnits,
    timezone,
    isBiometricEnabled,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<UsersTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('biological_sex')) {
      context.handle(
        _biologicalSexMeta,
        biologicalSex.isAcceptableOrUnknown(
          data['biological_sex']!,
          _biologicalSexMeta,
        ),
      );
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
        _dateOfBirthMeta,
        dateOfBirth.isAcceptableOrUnknown(
          data['date_of_birth']!,
          _dateOfBirthMeta,
        ),
      );
    }
    if (data.containsKey('height_cm')) {
      context.handle(
        _heightCmMeta,
        heightCm.isAcceptableOrUnknown(data['height_cm']!, _heightCmMeta),
      );
    }
    if (data.containsKey('weight_kg')) {
      context.handle(
        _weightKgMeta,
        weightKg.isAcceptableOrUnknown(data['weight_kg']!, _weightKgMeta),
      );
    }
    if (data.containsKey('activity_level')) {
      context.handle(
        _activityLevelMeta,
        activityLevel.isAcceptableOrUnknown(
          data['activity_level']!,
          _activityLevelMeta,
        ),
      );
    }
    if (data.containsKey('preferred_units')) {
      context.handle(
        _preferredUnitsMeta,
        preferredUnits.isAcceptableOrUnknown(
          data['preferred_units']!,
          _preferredUnitsMeta,
        ),
      );
    }
    if (data.containsKey('timezone')) {
      context.handle(
        _timezoneMeta,
        timezone.isAcceptableOrUnknown(data['timezone']!, _timezoneMeta),
      );
    }
    if (data.containsKey('is_biometric_enabled')) {
      context.handle(
        _isBiometricEnabledMeta,
        isBiometricEnabled.isAcceptableOrUnknown(
          data['is_biometric_enabled']!,
          _isBiometricEnabledMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UsersTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UsersTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      email:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}email'],
          )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      biologicalSex:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}biological_sex'],
          )!,
      dateOfBirth: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date_of_birth'],
      ),
      heightCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}height_cm'],
      ),
      weightKg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight_kg'],
      ),
      activityLevel:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}activity_level'],
          )!,
      preferredUnits:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}preferred_units'],
          )!,
      timezone:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}timezone'],
          )!,
      isBiometricEnabled:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_biometric_enabled'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $UsersTableTable createAlias(String alias) {
    return $UsersTableTable(attachedDatabase, alias);
  }
}

class UsersTableData extends DataClass implements Insertable<UsersTableData> {
  final String id;
  final String email;
  final String? name;
  final String biologicalSex;
  final DateTime? dateOfBirth;
  final double? heightCm;
  final double? weightKg;
  final String activityLevel;
  final String preferredUnits;
  final String timezone;
  final bool isBiometricEnabled;
  final DateTime createdAt;
  final DateTime updatedAt;
  const UsersTableData({
    required this.id,
    required this.email,
    this.name,
    required this.biologicalSex,
    this.dateOfBirth,
    this.heightCm,
    this.weightKg,
    required this.activityLevel,
    required this.preferredUnits,
    required this.timezone,
    required this.isBiometricEnabled,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['email'] = Variable<String>(email);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['biological_sex'] = Variable<String>(biologicalSex);
    if (!nullToAbsent || dateOfBirth != null) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth);
    }
    if (!nullToAbsent || heightCm != null) {
      map['height_cm'] = Variable<double>(heightCm);
    }
    if (!nullToAbsent || weightKg != null) {
      map['weight_kg'] = Variable<double>(weightKg);
    }
    map['activity_level'] = Variable<String>(activityLevel);
    map['preferred_units'] = Variable<String>(preferredUnits);
    map['timezone'] = Variable<String>(timezone);
    map['is_biometric_enabled'] = Variable<bool>(isBiometricEnabled);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  UsersTableCompanion toCompanion(bool nullToAbsent) {
    return UsersTableCompanion(
      id: Value(id),
      email: Value(email),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      biologicalSex: Value(biologicalSex),
      dateOfBirth:
          dateOfBirth == null && nullToAbsent
              ? const Value.absent()
              : Value(dateOfBirth),
      heightCm:
          heightCm == null && nullToAbsent
              ? const Value.absent()
              : Value(heightCm),
      weightKg:
          weightKg == null && nullToAbsent
              ? const Value.absent()
              : Value(weightKg),
      activityLevel: Value(activityLevel),
      preferredUnits: Value(preferredUnits),
      timezone: Value(timezone),
      isBiometricEnabled: Value(isBiometricEnabled),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory UsersTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UsersTableData(
      id: serializer.fromJson<String>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      name: serializer.fromJson<String?>(json['name']),
      biologicalSex: serializer.fromJson<String>(json['biologicalSex']),
      dateOfBirth: serializer.fromJson<DateTime?>(json['dateOfBirth']),
      heightCm: serializer.fromJson<double?>(json['heightCm']),
      weightKg: serializer.fromJson<double?>(json['weightKg']),
      activityLevel: serializer.fromJson<String>(json['activityLevel']),
      preferredUnits: serializer.fromJson<String>(json['preferredUnits']),
      timezone: serializer.fromJson<String>(json['timezone']),
      isBiometricEnabled: serializer.fromJson<bool>(json['isBiometricEnabled']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'email': serializer.toJson<String>(email),
      'name': serializer.toJson<String?>(name),
      'biologicalSex': serializer.toJson<String>(biologicalSex),
      'dateOfBirth': serializer.toJson<DateTime?>(dateOfBirth),
      'heightCm': serializer.toJson<double?>(heightCm),
      'weightKg': serializer.toJson<double?>(weightKg),
      'activityLevel': serializer.toJson<String>(activityLevel),
      'preferredUnits': serializer.toJson<String>(preferredUnits),
      'timezone': serializer.toJson<String>(timezone),
      'isBiometricEnabled': serializer.toJson<bool>(isBiometricEnabled),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  UsersTableData copyWith({
    String? id,
    String? email,
    Value<String?> name = const Value.absent(),
    String? biologicalSex,
    Value<DateTime?> dateOfBirth = const Value.absent(),
    Value<double?> heightCm = const Value.absent(),
    Value<double?> weightKg = const Value.absent(),
    String? activityLevel,
    String? preferredUnits,
    String? timezone,
    bool? isBiometricEnabled,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => UsersTableData(
    id: id ?? this.id,
    email: email ?? this.email,
    name: name.present ? name.value : this.name,
    biologicalSex: biologicalSex ?? this.biologicalSex,
    dateOfBirth: dateOfBirth.present ? dateOfBirth.value : this.dateOfBirth,
    heightCm: heightCm.present ? heightCm.value : this.heightCm,
    weightKg: weightKg.present ? weightKg.value : this.weightKg,
    activityLevel: activityLevel ?? this.activityLevel,
    preferredUnits: preferredUnits ?? this.preferredUnits,
    timezone: timezone ?? this.timezone,
    isBiometricEnabled: isBiometricEnabled ?? this.isBiometricEnabled,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  UsersTableData copyWithCompanion(UsersTableCompanion data) {
    return UsersTableData(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
      name: data.name.present ? data.name.value : this.name,
      biologicalSex:
          data.biologicalSex.present
              ? data.biologicalSex.value
              : this.biologicalSex,
      dateOfBirth:
          data.dateOfBirth.present ? data.dateOfBirth.value : this.dateOfBirth,
      heightCm: data.heightCm.present ? data.heightCm.value : this.heightCm,
      weightKg: data.weightKg.present ? data.weightKg.value : this.weightKg,
      activityLevel:
          data.activityLevel.present
              ? data.activityLevel.value
              : this.activityLevel,
      preferredUnits:
          data.preferredUnits.present
              ? data.preferredUnits.value
              : this.preferredUnits,
      timezone: data.timezone.present ? data.timezone.value : this.timezone,
      isBiometricEnabled:
          data.isBiometricEnabled.present
              ? data.isBiometricEnabled.value
              : this.isBiometricEnabled,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UsersTableData(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('name: $name, ')
          ..write('biologicalSex: $biologicalSex, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('activityLevel: $activityLevel, ')
          ..write('preferredUnits: $preferredUnits, ')
          ..write('timezone: $timezone, ')
          ..write('isBiometricEnabled: $isBiometricEnabled, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    email,
    name,
    biologicalSex,
    dateOfBirth,
    heightCm,
    weightKg,
    activityLevel,
    preferredUnits,
    timezone,
    isBiometricEnabled,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UsersTableData &&
          other.id == this.id &&
          other.email == this.email &&
          other.name == this.name &&
          other.biologicalSex == this.biologicalSex &&
          other.dateOfBirth == this.dateOfBirth &&
          other.heightCm == this.heightCm &&
          other.weightKg == this.weightKg &&
          other.activityLevel == this.activityLevel &&
          other.preferredUnits == this.preferredUnits &&
          other.timezone == this.timezone &&
          other.isBiometricEnabled == this.isBiometricEnabled &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UsersTableCompanion extends UpdateCompanion<UsersTableData> {
  final Value<String> id;
  final Value<String> email;
  final Value<String?> name;
  final Value<String> biologicalSex;
  final Value<DateTime?> dateOfBirth;
  final Value<double?> heightCm;
  final Value<double?> weightKg;
  final Value<String> activityLevel;
  final Value<String> preferredUnits;
  final Value<String> timezone;
  final Value<bool> isBiometricEnabled;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const UsersTableCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.name = const Value.absent(),
    this.biologicalSex = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.heightCm = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.activityLevel = const Value.absent(),
    this.preferredUnits = const Value.absent(),
    this.timezone = const Value.absent(),
    this.isBiometricEnabled = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersTableCompanion.insert({
    required String id,
    required String email,
    this.name = const Value.absent(),
    this.biologicalSex = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.heightCm = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.activityLevel = const Value.absent(),
    this.preferredUnits = const Value.absent(),
    this.timezone = const Value.absent(),
    this.isBiometricEnabled = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       email = Value(email);
  static Insertable<UsersTableData> custom({
    Expression<String>? id,
    Expression<String>? email,
    Expression<String>? name,
    Expression<String>? biologicalSex,
    Expression<DateTime>? dateOfBirth,
    Expression<double>? heightCm,
    Expression<double>? weightKg,
    Expression<String>? activityLevel,
    Expression<String>? preferredUnits,
    Expression<String>? timezone,
    Expression<bool>? isBiometricEnabled,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (name != null) 'name': name,
      if (biologicalSex != null) 'biological_sex': biologicalSex,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (heightCm != null) 'height_cm': heightCm,
      if (weightKg != null) 'weight_kg': weightKg,
      if (activityLevel != null) 'activity_level': activityLevel,
      if (preferredUnits != null) 'preferred_units': preferredUnits,
      if (timezone != null) 'timezone': timezone,
      if (isBiometricEnabled != null)
        'is_biometric_enabled': isBiometricEnabled,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersTableCompanion copyWith({
    Value<String>? id,
    Value<String>? email,
    Value<String?>? name,
    Value<String>? biologicalSex,
    Value<DateTime?>? dateOfBirth,
    Value<double?>? heightCm,
    Value<double?>? weightKg,
    Value<String>? activityLevel,
    Value<String>? preferredUnits,
    Value<String>? timezone,
    Value<bool>? isBiometricEnabled,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return UsersTableCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      biologicalSex: biologicalSex ?? this.biologicalSex,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      activityLevel: activityLevel ?? this.activityLevel,
      preferredUnits: preferredUnits ?? this.preferredUnits,
      timezone: timezone ?? this.timezone,
      isBiometricEnabled: isBiometricEnabled ?? this.isBiometricEnabled,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (biologicalSex.present) {
      map['biological_sex'] = Variable<String>(biologicalSex.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth.value);
    }
    if (heightCm.present) {
      map['height_cm'] = Variable<double>(heightCm.value);
    }
    if (weightKg.present) {
      map['weight_kg'] = Variable<double>(weightKg.value);
    }
    if (activityLevel.present) {
      map['activity_level'] = Variable<String>(activityLevel.value);
    }
    if (preferredUnits.present) {
      map['preferred_units'] = Variable<String>(preferredUnits.value);
    }
    if (timezone.present) {
      map['timezone'] = Variable<String>(timezone.value);
    }
    if (isBiometricEnabled.present) {
      map['is_biometric_enabled'] = Variable<bool>(isBiometricEnabled.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersTableCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('name: $name, ')
          ..write('biologicalSex: $biologicalSex, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('activityLevel: $activityLevel, ')
          ..write('preferredUnits: $preferredUnits, ')
          ..write('timezone: $timezone, ')
          ..write('isBiometricEnabled: $isBiometricEnabled, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HealthMeasurementsTableTable extends HealthMeasurementsTable
    with TableInfo<$HealthMeasurementsTableTable, HealthMeasurementsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HealthMeasurementsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('Manual'),
  );
  static const VerificationMeta _sourceIdMeta = const VerificationMeta(
    'sourceId',
  );
  @override
  late final GeneratedColumn<String> sourceId = GeneratedColumn<String>(
    'source_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _originalValueMeta = const VerificationMeta(
    'originalValue',
  );
  @override
  late final GeneratedColumn<double> originalValue = GeneratedColumn<double>(
    'original_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isDeletedMeta = const VerificationMeta(
    'isDeleted',
  );
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_deleted" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    type,
    value,
    unit,
    timestamp,
    source,
    sourceId,
    notes,
    originalValue,
    isDeleted,
    syncStatus,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'health_measurements_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<HealthMeasurementsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('source')) {
      context.handle(
        _sourceMeta,
        source.isAcceptableOrUnknown(data['source']!, _sourceMeta),
      );
    }
    if (data.containsKey('source_id')) {
      context.handle(
        _sourceIdMeta,
        sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('original_value')) {
      context.handle(
        _originalValueMeta,
        originalValue.isAcceptableOrUnknown(
          data['original_value']!,
          _originalValueMeta,
        ),
      );
    }
    if (data.containsKey('is_deleted')) {
      context.handle(
        _isDeletedMeta,
        isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HealthMeasurementsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HealthMeasurementsTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      value:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}value'],
          )!,
      unit:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}unit'],
          )!,
      timestamp:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}timestamp'],
          )!,
      source:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}source'],
          )!,
      sourceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_id'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      originalValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}original_value'],
      ),
      isDeleted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_deleted'],
          )!,
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $HealthMeasurementsTableTable createAlias(String alias) {
    return $HealthMeasurementsTableTable(attachedDatabase, alias);
  }
}

class HealthMeasurementsTableData extends DataClass
    implements Insertable<HealthMeasurementsTableData> {
  final String id;
  final String userId;
  final String type;
  final double value;
  final String unit;
  final DateTime timestamp;
  final String source;
  final String? sourceId;
  final String? notes;
  final double? originalValue;
  final bool isDeleted;
  final String syncStatus;
  final DateTime createdAt;
  const HealthMeasurementsTableData({
    required this.id,
    required this.userId,
    required this.type,
    required this.value,
    required this.unit,
    required this.timestamp,
    required this.source,
    this.sourceId,
    this.notes,
    this.originalValue,
    required this.isDeleted,
    required this.syncStatus,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['type'] = Variable<String>(type);
    map['value'] = Variable<double>(value);
    map['unit'] = Variable<String>(unit);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['source'] = Variable<String>(source);
    if (!nullToAbsent || sourceId != null) {
      map['source_id'] = Variable<String>(sourceId);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || originalValue != null) {
      map['original_value'] = Variable<double>(originalValue);
    }
    map['is_deleted'] = Variable<bool>(isDeleted);
    map['sync_status'] = Variable<String>(syncStatus);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  HealthMeasurementsTableCompanion toCompanion(bool nullToAbsent) {
    return HealthMeasurementsTableCompanion(
      id: Value(id),
      userId: Value(userId),
      type: Value(type),
      value: Value(value),
      unit: Value(unit),
      timestamp: Value(timestamp),
      source: Value(source),
      sourceId:
          sourceId == null && nullToAbsent
              ? const Value.absent()
              : Value(sourceId),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      originalValue:
          originalValue == null && nullToAbsent
              ? const Value.absent()
              : Value(originalValue),
      isDeleted: Value(isDeleted),
      syncStatus: Value(syncStatus),
      createdAt: Value(createdAt),
    );
  }

  factory HealthMeasurementsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HealthMeasurementsTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      type: serializer.fromJson<String>(json['type']),
      value: serializer.fromJson<double>(json['value']),
      unit: serializer.fromJson<String>(json['unit']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      source: serializer.fromJson<String>(json['source']),
      sourceId: serializer.fromJson<String?>(json['sourceId']),
      notes: serializer.fromJson<String?>(json['notes']),
      originalValue: serializer.fromJson<double?>(json['originalValue']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'type': serializer.toJson<String>(type),
      'value': serializer.toJson<double>(value),
      'unit': serializer.toJson<String>(unit),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'source': serializer.toJson<String>(source),
      'sourceId': serializer.toJson<String?>(sourceId),
      'notes': serializer.toJson<String?>(notes),
      'originalValue': serializer.toJson<double?>(originalValue),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'syncStatus': serializer.toJson<String>(syncStatus),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  HealthMeasurementsTableData copyWith({
    String? id,
    String? userId,
    String? type,
    double? value,
    String? unit,
    DateTime? timestamp,
    String? source,
    Value<String?> sourceId = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    Value<double?> originalValue = const Value.absent(),
    bool? isDeleted,
    String? syncStatus,
    DateTime? createdAt,
  }) => HealthMeasurementsTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    type: type ?? this.type,
    value: value ?? this.value,
    unit: unit ?? this.unit,
    timestamp: timestamp ?? this.timestamp,
    source: source ?? this.source,
    sourceId: sourceId.present ? sourceId.value : this.sourceId,
    notes: notes.present ? notes.value : this.notes,
    originalValue:
        originalValue.present ? originalValue.value : this.originalValue,
    isDeleted: isDeleted ?? this.isDeleted,
    syncStatus: syncStatus ?? this.syncStatus,
    createdAt: createdAt ?? this.createdAt,
  );
  HealthMeasurementsTableData copyWithCompanion(
    HealthMeasurementsTableCompanion data,
  ) {
    return HealthMeasurementsTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      type: data.type.present ? data.type.value : this.type,
      value: data.value.present ? data.value.value : this.value,
      unit: data.unit.present ? data.unit.value : this.unit,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      source: data.source.present ? data.source.value : this.source,
      sourceId: data.sourceId.present ? data.sourceId.value : this.sourceId,
      notes: data.notes.present ? data.notes.value : this.notes,
      originalValue:
          data.originalValue.present
              ? data.originalValue.value
              : this.originalValue,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HealthMeasurementsTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('type: $type, ')
          ..write('value: $value, ')
          ..write('unit: $unit, ')
          ..write('timestamp: $timestamp, ')
          ..write('source: $source, ')
          ..write('sourceId: $sourceId, ')
          ..write('notes: $notes, ')
          ..write('originalValue: $originalValue, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    type,
    value,
    unit,
    timestamp,
    source,
    sourceId,
    notes,
    originalValue,
    isDeleted,
    syncStatus,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HealthMeasurementsTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.type == this.type &&
          other.value == this.value &&
          other.unit == this.unit &&
          other.timestamp == this.timestamp &&
          other.source == this.source &&
          other.sourceId == this.sourceId &&
          other.notes == this.notes &&
          other.originalValue == this.originalValue &&
          other.isDeleted == this.isDeleted &&
          other.syncStatus == this.syncStatus &&
          other.createdAt == this.createdAt);
}

class HealthMeasurementsTableCompanion
    extends UpdateCompanion<HealthMeasurementsTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> type;
  final Value<double> value;
  final Value<String> unit;
  final Value<DateTime> timestamp;
  final Value<String> source;
  final Value<String?> sourceId;
  final Value<String?> notes;
  final Value<double?> originalValue;
  final Value<bool> isDeleted;
  final Value<String> syncStatus;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const HealthMeasurementsTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.type = const Value.absent(),
    this.value = const Value.absent(),
    this.unit = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.notes = const Value.absent(),
    this.originalValue = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HealthMeasurementsTableCompanion.insert({
    required String id,
    required String userId,
    required String type,
    required double value,
    required String unit,
    required DateTime timestamp,
    this.source = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.notes = const Value.absent(),
    this.originalValue = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       type = Value(type),
       value = Value(value),
       unit = Value(unit),
       timestamp = Value(timestamp);
  static Insertable<HealthMeasurementsTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? type,
    Expression<double>? value,
    Expression<String>? unit,
    Expression<DateTime>? timestamp,
    Expression<String>? source,
    Expression<String>? sourceId,
    Expression<String>? notes,
    Expression<double>? originalValue,
    Expression<bool>? isDeleted,
    Expression<String>? syncStatus,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (type != null) 'type': type,
      if (value != null) 'value': value,
      if (unit != null) 'unit': unit,
      if (timestamp != null) 'timestamp': timestamp,
      if (source != null) 'source': source,
      if (sourceId != null) 'source_id': sourceId,
      if (notes != null) 'notes': notes,
      if (originalValue != null) 'original_value': originalValue,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HealthMeasurementsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? type,
    Value<double>? value,
    Value<String>? unit,
    Value<DateTime>? timestamp,
    Value<String>? source,
    Value<String?>? sourceId,
    Value<String?>? notes,
    Value<double?>? originalValue,
    Value<bool>? isDeleted,
    Value<String>? syncStatus,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return HealthMeasurementsTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      value: value ?? this.value,
      unit: unit ?? this.unit,
      timestamp: timestamp ?? this.timestamp,
      source: source ?? this.source,
      sourceId: sourceId ?? this.sourceId,
      notes: notes ?? this.notes,
      originalValue: originalValue ?? this.originalValue,
      isDeleted: isDeleted ?? this.isDeleted,
      syncStatus: syncStatus ?? this.syncStatus,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (sourceId.present) {
      map['source_id'] = Variable<String>(sourceId.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (originalValue.present) {
      map['original_value'] = Variable<double>(originalValue.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HealthMeasurementsTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('type: $type, ')
          ..write('value: $value, ')
          ..write('unit: $unit, ')
          ..write('timestamp: $timestamp, ')
          ..write('source: $source, ')
          ..write('sourceId: $sourceId, ')
          ..write('notes: $notes, ')
          ..write('originalValue: $originalValue, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SemenAnalysisTableTable extends SemenAnalysisTable
    with TableInfo<$SemenAnalysisTableTable, SemenAnalysisTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SemenAnalysisTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _collectionDateMeta = const VerificationMeta(
    'collectionDate',
  );
  @override
  late final GeneratedColumn<DateTime> collectionDate =
      GeneratedColumn<DateTime>(
        'collection_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _analysisDateMeta = const VerificationMeta(
    'analysisDate',
  );
  @override
  late final GeneratedColumn<DateTime> analysisDate = GeneratedColumn<DateTime>(
    'analysis_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _volumeMlMeta = const VerificationMeta(
    'volumeMl',
  );
  @override
  late final GeneratedColumn<double> volumeMl = GeneratedColumn<double>(
    'volume_ml',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _concentrationMPerMlMeta =
      const VerificationMeta('concentrationMPerMl');
  @override
  late final GeneratedColumn<double> concentrationMPerMl =
      GeneratedColumn<double>(
        'concentration_m_per_ml',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _totalCountMMeta = const VerificationMeta(
    'totalCountM',
  );
  @override
  late final GeneratedColumn<double> totalCountM = GeneratedColumn<double>(
    'total_count_m',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _progressiveMotilityPctMeta =
      const VerificationMeta('progressiveMotilityPct');
  @override
  late final GeneratedColumn<double> progressiveMotilityPct =
      GeneratedColumn<double>(
        'progressive_motility_pct',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _nonProgressiveMotilityPctMeta =
      const VerificationMeta('nonProgressiveMotilityPct');
  @override
  late final GeneratedColumn<double> nonProgressiveMotilityPct =
      GeneratedColumn<double>(
        'non_progressive_motility_pct',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _immotilePctMeta = const VerificationMeta(
    'immotilePct',
  );
  @override
  late final GeneratedColumn<double> immotilePct = GeneratedColumn<double>(
    'immotile_pct',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _totalMotilityPctMeta = const VerificationMeta(
    'totalMotilityPct',
  );
  @override
  late final GeneratedColumn<double> totalMotilityPct = GeneratedColumn<double>(
    'total_motility_pct',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _morphologyPctMeta = const VerificationMeta(
    'morphologyPct',
  );
  @override
  late final GeneratedColumn<double> morphologyPct = GeneratedColumn<double>(
    'morphology_pct',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitalityPctMeta = const VerificationMeta(
    'vitalityPct',
  );
  @override
  late final GeneratedColumn<double> vitalityPct = GeneratedColumn<double>(
    'vitality_pct',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phMeta = const VerificationMeta('ph');
  @override
  late final GeneratedColumn<double> ph = GeneratedColumn<double>(
    'ph',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _liquefactionMeta = const VerificationMeta(
    'liquefaction',
  );
  @override
  late final GeneratedColumn<String> liquefaction = GeneratedColumn<String>(
    'liquefaction',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _roundCellsMeta = const VerificationMeta(
    'roundCells',
  );
  @override
  late final GeneratedColumn<double> roundCells = GeneratedColumn<double>(
    'round_cells',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _labNameMeta = const VerificationMeta(
    'labName',
  );
  @override
  late final GeneratedColumn<String> labName = GeneratedColumn<String>(
    'lab_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    collectionDate,
    analysisDate,
    volumeMl,
    concentrationMPerMl,
    totalCountM,
    progressiveMotilityPct,
    nonProgressiveMotilityPct,
    immotilePct,
    totalMotilityPct,
    morphologyPct,
    vitalityPct,
    ph,
    liquefaction,
    roundCells,
    labName,
    notes,
    syncStatus,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'semen_analysis_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SemenAnalysisTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('collection_date')) {
      context.handle(
        _collectionDateMeta,
        collectionDate.isAcceptableOrUnknown(
          data['collection_date']!,
          _collectionDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_collectionDateMeta);
    }
    if (data.containsKey('analysis_date')) {
      context.handle(
        _analysisDateMeta,
        analysisDate.isAcceptableOrUnknown(
          data['analysis_date']!,
          _analysisDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_analysisDateMeta);
    }
    if (data.containsKey('volume_ml')) {
      context.handle(
        _volumeMlMeta,
        volumeMl.isAcceptableOrUnknown(data['volume_ml']!, _volumeMlMeta),
      );
    }
    if (data.containsKey('concentration_m_per_ml')) {
      context.handle(
        _concentrationMPerMlMeta,
        concentrationMPerMl.isAcceptableOrUnknown(
          data['concentration_m_per_ml']!,
          _concentrationMPerMlMeta,
        ),
      );
    }
    if (data.containsKey('total_count_m')) {
      context.handle(
        _totalCountMMeta,
        totalCountM.isAcceptableOrUnknown(
          data['total_count_m']!,
          _totalCountMMeta,
        ),
      );
    }
    if (data.containsKey('progressive_motility_pct')) {
      context.handle(
        _progressiveMotilityPctMeta,
        progressiveMotilityPct.isAcceptableOrUnknown(
          data['progressive_motility_pct']!,
          _progressiveMotilityPctMeta,
        ),
      );
    }
    if (data.containsKey('non_progressive_motility_pct')) {
      context.handle(
        _nonProgressiveMotilityPctMeta,
        nonProgressiveMotilityPct.isAcceptableOrUnknown(
          data['non_progressive_motility_pct']!,
          _nonProgressiveMotilityPctMeta,
        ),
      );
    }
    if (data.containsKey('immotile_pct')) {
      context.handle(
        _immotilePctMeta,
        immotilePct.isAcceptableOrUnknown(
          data['immotile_pct']!,
          _immotilePctMeta,
        ),
      );
    }
    if (data.containsKey('total_motility_pct')) {
      context.handle(
        _totalMotilityPctMeta,
        totalMotilityPct.isAcceptableOrUnknown(
          data['total_motility_pct']!,
          _totalMotilityPctMeta,
        ),
      );
    }
    if (data.containsKey('morphology_pct')) {
      context.handle(
        _morphologyPctMeta,
        morphologyPct.isAcceptableOrUnknown(
          data['morphology_pct']!,
          _morphologyPctMeta,
        ),
      );
    }
    if (data.containsKey('vitality_pct')) {
      context.handle(
        _vitalityPctMeta,
        vitalityPct.isAcceptableOrUnknown(
          data['vitality_pct']!,
          _vitalityPctMeta,
        ),
      );
    }
    if (data.containsKey('ph')) {
      context.handle(_phMeta, ph.isAcceptableOrUnknown(data['ph']!, _phMeta));
    }
    if (data.containsKey('liquefaction')) {
      context.handle(
        _liquefactionMeta,
        liquefaction.isAcceptableOrUnknown(
          data['liquefaction']!,
          _liquefactionMeta,
        ),
      );
    }
    if (data.containsKey('round_cells')) {
      context.handle(
        _roundCellsMeta,
        roundCells.isAcceptableOrUnknown(data['round_cells']!, _roundCellsMeta),
      );
    }
    if (data.containsKey('lab_name')) {
      context.handle(
        _labNameMeta,
        labName.isAcceptableOrUnknown(data['lab_name']!, _labNameMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SemenAnalysisTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SemenAnalysisTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      collectionDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}collection_date'],
          )!,
      analysisDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}analysis_date'],
          )!,
      volumeMl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}volume_ml'],
      ),
      concentrationMPerMl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}concentration_m_per_ml'],
      ),
      totalCountM: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_count_m'],
      ),
      progressiveMotilityPct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}progressive_motility_pct'],
      ),
      nonProgressiveMotilityPct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}non_progressive_motility_pct'],
      ),
      immotilePct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}immotile_pct'],
      ),
      totalMotilityPct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_motility_pct'],
      ),
      morphologyPct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}morphology_pct'],
      ),
      vitalityPct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitality_pct'],
      ),
      ph: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}ph'],
      ),
      liquefaction: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}liquefaction'],
      ),
      roundCells: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}round_cells'],
      ),
      labName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lab_name'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $SemenAnalysisTableTable createAlias(String alias) {
    return $SemenAnalysisTableTable(attachedDatabase, alias);
  }
}

class SemenAnalysisTableData extends DataClass
    implements Insertable<SemenAnalysisTableData> {
  final String id;
  final String userId;
  final DateTime collectionDate;
  final DateTime analysisDate;
  final double? volumeMl;
  final double? concentrationMPerMl;
  final double? totalCountM;
  final double? progressiveMotilityPct;
  final double? nonProgressiveMotilityPct;
  final double? immotilePct;
  final double? totalMotilityPct;
  final double? morphologyPct;
  final double? vitalityPct;
  final double? ph;
  final String? liquefaction;
  final double? roundCells;
  final String? labName;
  final String? notes;
  final String syncStatus;
  final DateTime createdAt;
  const SemenAnalysisTableData({
    required this.id,
    required this.userId,
    required this.collectionDate,
    required this.analysisDate,
    this.volumeMl,
    this.concentrationMPerMl,
    this.totalCountM,
    this.progressiveMotilityPct,
    this.nonProgressiveMotilityPct,
    this.immotilePct,
    this.totalMotilityPct,
    this.morphologyPct,
    this.vitalityPct,
    this.ph,
    this.liquefaction,
    this.roundCells,
    this.labName,
    this.notes,
    required this.syncStatus,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['collection_date'] = Variable<DateTime>(collectionDate);
    map['analysis_date'] = Variable<DateTime>(analysisDate);
    if (!nullToAbsent || volumeMl != null) {
      map['volume_ml'] = Variable<double>(volumeMl);
    }
    if (!nullToAbsent || concentrationMPerMl != null) {
      map['concentration_m_per_ml'] = Variable<double>(concentrationMPerMl);
    }
    if (!nullToAbsent || totalCountM != null) {
      map['total_count_m'] = Variable<double>(totalCountM);
    }
    if (!nullToAbsent || progressiveMotilityPct != null) {
      map['progressive_motility_pct'] = Variable<double>(
        progressiveMotilityPct,
      );
    }
    if (!nullToAbsent || nonProgressiveMotilityPct != null) {
      map['non_progressive_motility_pct'] = Variable<double>(
        nonProgressiveMotilityPct,
      );
    }
    if (!nullToAbsent || immotilePct != null) {
      map['immotile_pct'] = Variable<double>(immotilePct);
    }
    if (!nullToAbsent || totalMotilityPct != null) {
      map['total_motility_pct'] = Variable<double>(totalMotilityPct);
    }
    if (!nullToAbsent || morphologyPct != null) {
      map['morphology_pct'] = Variable<double>(morphologyPct);
    }
    if (!nullToAbsent || vitalityPct != null) {
      map['vitality_pct'] = Variable<double>(vitalityPct);
    }
    if (!nullToAbsent || ph != null) {
      map['ph'] = Variable<double>(ph);
    }
    if (!nullToAbsent || liquefaction != null) {
      map['liquefaction'] = Variable<String>(liquefaction);
    }
    if (!nullToAbsent || roundCells != null) {
      map['round_cells'] = Variable<double>(roundCells);
    }
    if (!nullToAbsent || labName != null) {
      map['lab_name'] = Variable<String>(labName);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['sync_status'] = Variable<String>(syncStatus);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  SemenAnalysisTableCompanion toCompanion(bool nullToAbsent) {
    return SemenAnalysisTableCompanion(
      id: Value(id),
      userId: Value(userId),
      collectionDate: Value(collectionDate),
      analysisDate: Value(analysisDate),
      volumeMl:
          volumeMl == null && nullToAbsent
              ? const Value.absent()
              : Value(volumeMl),
      concentrationMPerMl:
          concentrationMPerMl == null && nullToAbsent
              ? const Value.absent()
              : Value(concentrationMPerMl),
      totalCountM:
          totalCountM == null && nullToAbsent
              ? const Value.absent()
              : Value(totalCountM),
      progressiveMotilityPct:
          progressiveMotilityPct == null && nullToAbsent
              ? const Value.absent()
              : Value(progressiveMotilityPct),
      nonProgressiveMotilityPct:
          nonProgressiveMotilityPct == null && nullToAbsent
              ? const Value.absent()
              : Value(nonProgressiveMotilityPct),
      immotilePct:
          immotilePct == null && nullToAbsent
              ? const Value.absent()
              : Value(immotilePct),
      totalMotilityPct:
          totalMotilityPct == null && nullToAbsent
              ? const Value.absent()
              : Value(totalMotilityPct),
      morphologyPct:
          morphologyPct == null && nullToAbsent
              ? const Value.absent()
              : Value(morphologyPct),
      vitalityPct:
          vitalityPct == null && nullToAbsent
              ? const Value.absent()
              : Value(vitalityPct),
      ph: ph == null && nullToAbsent ? const Value.absent() : Value(ph),
      liquefaction:
          liquefaction == null && nullToAbsent
              ? const Value.absent()
              : Value(liquefaction),
      roundCells:
          roundCells == null && nullToAbsent
              ? const Value.absent()
              : Value(roundCells),
      labName:
          labName == null && nullToAbsent
              ? const Value.absent()
              : Value(labName),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      syncStatus: Value(syncStatus),
      createdAt: Value(createdAt),
    );
  }

  factory SemenAnalysisTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SemenAnalysisTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      collectionDate: serializer.fromJson<DateTime>(json['collectionDate']),
      analysisDate: serializer.fromJson<DateTime>(json['analysisDate']),
      volumeMl: serializer.fromJson<double?>(json['volumeMl']),
      concentrationMPerMl: serializer.fromJson<double?>(
        json['concentrationMPerMl'],
      ),
      totalCountM: serializer.fromJson<double?>(json['totalCountM']),
      progressiveMotilityPct: serializer.fromJson<double?>(
        json['progressiveMotilityPct'],
      ),
      nonProgressiveMotilityPct: serializer.fromJson<double?>(
        json['nonProgressiveMotilityPct'],
      ),
      immotilePct: serializer.fromJson<double?>(json['immotilePct']),
      totalMotilityPct: serializer.fromJson<double?>(json['totalMotilityPct']),
      morphologyPct: serializer.fromJson<double?>(json['morphologyPct']),
      vitalityPct: serializer.fromJson<double?>(json['vitalityPct']),
      ph: serializer.fromJson<double?>(json['ph']),
      liquefaction: serializer.fromJson<String?>(json['liquefaction']),
      roundCells: serializer.fromJson<double?>(json['roundCells']),
      labName: serializer.fromJson<String?>(json['labName']),
      notes: serializer.fromJson<String?>(json['notes']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'collectionDate': serializer.toJson<DateTime>(collectionDate),
      'analysisDate': serializer.toJson<DateTime>(analysisDate),
      'volumeMl': serializer.toJson<double?>(volumeMl),
      'concentrationMPerMl': serializer.toJson<double?>(concentrationMPerMl),
      'totalCountM': serializer.toJson<double?>(totalCountM),
      'progressiveMotilityPct': serializer.toJson<double?>(
        progressiveMotilityPct,
      ),
      'nonProgressiveMotilityPct': serializer.toJson<double?>(
        nonProgressiveMotilityPct,
      ),
      'immotilePct': serializer.toJson<double?>(immotilePct),
      'totalMotilityPct': serializer.toJson<double?>(totalMotilityPct),
      'morphologyPct': serializer.toJson<double?>(morphologyPct),
      'vitalityPct': serializer.toJson<double?>(vitalityPct),
      'ph': serializer.toJson<double?>(ph),
      'liquefaction': serializer.toJson<String?>(liquefaction),
      'roundCells': serializer.toJson<double?>(roundCells),
      'labName': serializer.toJson<String?>(labName),
      'notes': serializer.toJson<String?>(notes),
      'syncStatus': serializer.toJson<String>(syncStatus),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  SemenAnalysisTableData copyWith({
    String? id,
    String? userId,
    DateTime? collectionDate,
    DateTime? analysisDate,
    Value<double?> volumeMl = const Value.absent(),
    Value<double?> concentrationMPerMl = const Value.absent(),
    Value<double?> totalCountM = const Value.absent(),
    Value<double?> progressiveMotilityPct = const Value.absent(),
    Value<double?> nonProgressiveMotilityPct = const Value.absent(),
    Value<double?> immotilePct = const Value.absent(),
    Value<double?> totalMotilityPct = const Value.absent(),
    Value<double?> morphologyPct = const Value.absent(),
    Value<double?> vitalityPct = const Value.absent(),
    Value<double?> ph = const Value.absent(),
    Value<String?> liquefaction = const Value.absent(),
    Value<double?> roundCells = const Value.absent(),
    Value<String?> labName = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    String? syncStatus,
    DateTime? createdAt,
  }) => SemenAnalysisTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    collectionDate: collectionDate ?? this.collectionDate,
    analysisDate: analysisDate ?? this.analysisDate,
    volumeMl: volumeMl.present ? volumeMl.value : this.volumeMl,
    concentrationMPerMl:
        concentrationMPerMl.present
            ? concentrationMPerMl.value
            : this.concentrationMPerMl,
    totalCountM: totalCountM.present ? totalCountM.value : this.totalCountM,
    progressiveMotilityPct:
        progressiveMotilityPct.present
            ? progressiveMotilityPct.value
            : this.progressiveMotilityPct,
    nonProgressiveMotilityPct:
        nonProgressiveMotilityPct.present
            ? nonProgressiveMotilityPct.value
            : this.nonProgressiveMotilityPct,
    immotilePct: immotilePct.present ? immotilePct.value : this.immotilePct,
    totalMotilityPct:
        totalMotilityPct.present
            ? totalMotilityPct.value
            : this.totalMotilityPct,
    morphologyPct:
        morphologyPct.present ? morphologyPct.value : this.morphologyPct,
    vitalityPct: vitalityPct.present ? vitalityPct.value : this.vitalityPct,
    ph: ph.present ? ph.value : this.ph,
    liquefaction: liquefaction.present ? liquefaction.value : this.liquefaction,
    roundCells: roundCells.present ? roundCells.value : this.roundCells,
    labName: labName.present ? labName.value : this.labName,
    notes: notes.present ? notes.value : this.notes,
    syncStatus: syncStatus ?? this.syncStatus,
    createdAt: createdAt ?? this.createdAt,
  );
  SemenAnalysisTableData copyWithCompanion(SemenAnalysisTableCompanion data) {
    return SemenAnalysisTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      collectionDate:
          data.collectionDate.present
              ? data.collectionDate.value
              : this.collectionDate,
      analysisDate:
          data.analysisDate.present
              ? data.analysisDate.value
              : this.analysisDate,
      volumeMl: data.volumeMl.present ? data.volumeMl.value : this.volumeMl,
      concentrationMPerMl:
          data.concentrationMPerMl.present
              ? data.concentrationMPerMl.value
              : this.concentrationMPerMl,
      totalCountM:
          data.totalCountM.present ? data.totalCountM.value : this.totalCountM,
      progressiveMotilityPct:
          data.progressiveMotilityPct.present
              ? data.progressiveMotilityPct.value
              : this.progressiveMotilityPct,
      nonProgressiveMotilityPct:
          data.nonProgressiveMotilityPct.present
              ? data.nonProgressiveMotilityPct.value
              : this.nonProgressiveMotilityPct,
      immotilePct:
          data.immotilePct.present ? data.immotilePct.value : this.immotilePct,
      totalMotilityPct:
          data.totalMotilityPct.present
              ? data.totalMotilityPct.value
              : this.totalMotilityPct,
      morphologyPct:
          data.morphologyPct.present
              ? data.morphologyPct.value
              : this.morphologyPct,
      vitalityPct:
          data.vitalityPct.present ? data.vitalityPct.value : this.vitalityPct,
      ph: data.ph.present ? data.ph.value : this.ph,
      liquefaction:
          data.liquefaction.present
              ? data.liquefaction.value
              : this.liquefaction,
      roundCells:
          data.roundCells.present ? data.roundCells.value : this.roundCells,
      labName: data.labName.present ? data.labName.value : this.labName,
      notes: data.notes.present ? data.notes.value : this.notes,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SemenAnalysisTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('collectionDate: $collectionDate, ')
          ..write('analysisDate: $analysisDate, ')
          ..write('volumeMl: $volumeMl, ')
          ..write('concentrationMPerMl: $concentrationMPerMl, ')
          ..write('totalCountM: $totalCountM, ')
          ..write('progressiveMotilityPct: $progressiveMotilityPct, ')
          ..write('nonProgressiveMotilityPct: $nonProgressiveMotilityPct, ')
          ..write('immotilePct: $immotilePct, ')
          ..write('totalMotilityPct: $totalMotilityPct, ')
          ..write('morphologyPct: $morphologyPct, ')
          ..write('vitalityPct: $vitalityPct, ')
          ..write('ph: $ph, ')
          ..write('liquefaction: $liquefaction, ')
          ..write('roundCells: $roundCells, ')
          ..write('labName: $labName, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    collectionDate,
    analysisDate,
    volumeMl,
    concentrationMPerMl,
    totalCountM,
    progressiveMotilityPct,
    nonProgressiveMotilityPct,
    immotilePct,
    totalMotilityPct,
    morphologyPct,
    vitalityPct,
    ph,
    liquefaction,
    roundCells,
    labName,
    notes,
    syncStatus,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SemenAnalysisTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.collectionDate == this.collectionDate &&
          other.analysisDate == this.analysisDate &&
          other.volumeMl == this.volumeMl &&
          other.concentrationMPerMl == this.concentrationMPerMl &&
          other.totalCountM == this.totalCountM &&
          other.progressiveMotilityPct == this.progressiveMotilityPct &&
          other.nonProgressiveMotilityPct == this.nonProgressiveMotilityPct &&
          other.immotilePct == this.immotilePct &&
          other.totalMotilityPct == this.totalMotilityPct &&
          other.morphologyPct == this.morphologyPct &&
          other.vitalityPct == this.vitalityPct &&
          other.ph == this.ph &&
          other.liquefaction == this.liquefaction &&
          other.roundCells == this.roundCells &&
          other.labName == this.labName &&
          other.notes == this.notes &&
          other.syncStatus == this.syncStatus &&
          other.createdAt == this.createdAt);
}

class SemenAnalysisTableCompanion
    extends UpdateCompanion<SemenAnalysisTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> collectionDate;
  final Value<DateTime> analysisDate;
  final Value<double?> volumeMl;
  final Value<double?> concentrationMPerMl;
  final Value<double?> totalCountM;
  final Value<double?> progressiveMotilityPct;
  final Value<double?> nonProgressiveMotilityPct;
  final Value<double?> immotilePct;
  final Value<double?> totalMotilityPct;
  final Value<double?> morphologyPct;
  final Value<double?> vitalityPct;
  final Value<double?> ph;
  final Value<String?> liquefaction;
  final Value<double?> roundCells;
  final Value<String?> labName;
  final Value<String?> notes;
  final Value<String> syncStatus;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const SemenAnalysisTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.collectionDate = const Value.absent(),
    this.analysisDate = const Value.absent(),
    this.volumeMl = const Value.absent(),
    this.concentrationMPerMl = const Value.absent(),
    this.totalCountM = const Value.absent(),
    this.progressiveMotilityPct = const Value.absent(),
    this.nonProgressiveMotilityPct = const Value.absent(),
    this.immotilePct = const Value.absent(),
    this.totalMotilityPct = const Value.absent(),
    this.morphologyPct = const Value.absent(),
    this.vitalityPct = const Value.absent(),
    this.ph = const Value.absent(),
    this.liquefaction = const Value.absent(),
    this.roundCells = const Value.absent(),
    this.labName = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SemenAnalysisTableCompanion.insert({
    required String id,
    required String userId,
    required DateTime collectionDate,
    required DateTime analysisDate,
    this.volumeMl = const Value.absent(),
    this.concentrationMPerMl = const Value.absent(),
    this.totalCountM = const Value.absent(),
    this.progressiveMotilityPct = const Value.absent(),
    this.nonProgressiveMotilityPct = const Value.absent(),
    this.immotilePct = const Value.absent(),
    this.totalMotilityPct = const Value.absent(),
    this.morphologyPct = const Value.absent(),
    this.vitalityPct = const Value.absent(),
    this.ph = const Value.absent(),
    this.liquefaction = const Value.absent(),
    this.roundCells = const Value.absent(),
    this.labName = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       collectionDate = Value(collectionDate),
       analysisDate = Value(analysisDate);
  static Insertable<SemenAnalysisTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? collectionDate,
    Expression<DateTime>? analysisDate,
    Expression<double>? volumeMl,
    Expression<double>? concentrationMPerMl,
    Expression<double>? totalCountM,
    Expression<double>? progressiveMotilityPct,
    Expression<double>? nonProgressiveMotilityPct,
    Expression<double>? immotilePct,
    Expression<double>? totalMotilityPct,
    Expression<double>? morphologyPct,
    Expression<double>? vitalityPct,
    Expression<double>? ph,
    Expression<String>? liquefaction,
    Expression<double>? roundCells,
    Expression<String>? labName,
    Expression<String>? notes,
    Expression<String>? syncStatus,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (collectionDate != null) 'collection_date': collectionDate,
      if (analysisDate != null) 'analysis_date': analysisDate,
      if (volumeMl != null) 'volume_ml': volumeMl,
      if (concentrationMPerMl != null)
        'concentration_m_per_ml': concentrationMPerMl,
      if (totalCountM != null) 'total_count_m': totalCountM,
      if (progressiveMotilityPct != null)
        'progressive_motility_pct': progressiveMotilityPct,
      if (nonProgressiveMotilityPct != null)
        'non_progressive_motility_pct': nonProgressiveMotilityPct,
      if (immotilePct != null) 'immotile_pct': immotilePct,
      if (totalMotilityPct != null) 'total_motility_pct': totalMotilityPct,
      if (morphologyPct != null) 'morphology_pct': morphologyPct,
      if (vitalityPct != null) 'vitality_pct': vitalityPct,
      if (ph != null) 'ph': ph,
      if (liquefaction != null) 'liquefaction': liquefaction,
      if (roundCells != null) 'round_cells': roundCells,
      if (labName != null) 'lab_name': labName,
      if (notes != null) 'notes': notes,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SemenAnalysisTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<DateTime>? collectionDate,
    Value<DateTime>? analysisDate,
    Value<double?>? volumeMl,
    Value<double?>? concentrationMPerMl,
    Value<double?>? totalCountM,
    Value<double?>? progressiveMotilityPct,
    Value<double?>? nonProgressiveMotilityPct,
    Value<double?>? immotilePct,
    Value<double?>? totalMotilityPct,
    Value<double?>? morphologyPct,
    Value<double?>? vitalityPct,
    Value<double?>? ph,
    Value<String?>? liquefaction,
    Value<double?>? roundCells,
    Value<String?>? labName,
    Value<String?>? notes,
    Value<String>? syncStatus,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return SemenAnalysisTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      collectionDate: collectionDate ?? this.collectionDate,
      analysisDate: analysisDate ?? this.analysisDate,
      volumeMl: volumeMl ?? this.volumeMl,
      concentrationMPerMl: concentrationMPerMl ?? this.concentrationMPerMl,
      totalCountM: totalCountM ?? this.totalCountM,
      progressiveMotilityPct:
          progressiveMotilityPct ?? this.progressiveMotilityPct,
      nonProgressiveMotilityPct:
          nonProgressiveMotilityPct ?? this.nonProgressiveMotilityPct,
      immotilePct: immotilePct ?? this.immotilePct,
      totalMotilityPct: totalMotilityPct ?? this.totalMotilityPct,
      morphologyPct: morphologyPct ?? this.morphologyPct,
      vitalityPct: vitalityPct ?? this.vitalityPct,
      ph: ph ?? this.ph,
      liquefaction: liquefaction ?? this.liquefaction,
      roundCells: roundCells ?? this.roundCells,
      labName: labName ?? this.labName,
      notes: notes ?? this.notes,
      syncStatus: syncStatus ?? this.syncStatus,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (collectionDate.present) {
      map['collection_date'] = Variable<DateTime>(collectionDate.value);
    }
    if (analysisDate.present) {
      map['analysis_date'] = Variable<DateTime>(analysisDate.value);
    }
    if (volumeMl.present) {
      map['volume_ml'] = Variable<double>(volumeMl.value);
    }
    if (concentrationMPerMl.present) {
      map['concentration_m_per_ml'] = Variable<double>(
        concentrationMPerMl.value,
      );
    }
    if (totalCountM.present) {
      map['total_count_m'] = Variable<double>(totalCountM.value);
    }
    if (progressiveMotilityPct.present) {
      map['progressive_motility_pct'] = Variable<double>(
        progressiveMotilityPct.value,
      );
    }
    if (nonProgressiveMotilityPct.present) {
      map['non_progressive_motility_pct'] = Variable<double>(
        nonProgressiveMotilityPct.value,
      );
    }
    if (immotilePct.present) {
      map['immotile_pct'] = Variable<double>(immotilePct.value);
    }
    if (totalMotilityPct.present) {
      map['total_motility_pct'] = Variable<double>(totalMotilityPct.value);
    }
    if (morphologyPct.present) {
      map['morphology_pct'] = Variable<double>(morphologyPct.value);
    }
    if (vitalityPct.present) {
      map['vitality_pct'] = Variable<double>(vitalityPct.value);
    }
    if (ph.present) {
      map['ph'] = Variable<double>(ph.value);
    }
    if (liquefaction.present) {
      map['liquefaction'] = Variable<String>(liquefaction.value);
    }
    if (roundCells.present) {
      map['round_cells'] = Variable<double>(roundCells.value);
    }
    if (labName.present) {
      map['lab_name'] = Variable<String>(labName.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SemenAnalysisTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('collectionDate: $collectionDate, ')
          ..write('analysisDate: $analysisDate, ')
          ..write('volumeMl: $volumeMl, ')
          ..write('concentrationMPerMl: $concentrationMPerMl, ')
          ..write('totalCountM: $totalCountM, ')
          ..write('progressiveMotilityPct: $progressiveMotilityPct, ')
          ..write('nonProgressiveMotilityPct: $nonProgressiveMotilityPct, ')
          ..write('immotilePct: $immotilePct, ')
          ..write('totalMotilityPct: $totalMotilityPct, ')
          ..write('morphologyPct: $morphologyPct, ')
          ..write('vitalityPct: $vitalityPct, ')
          ..write('ph: $ph, ')
          ..write('liquefaction: $liquefaction, ')
          ..write('roundCells: $roundCells, ')
          ..write('labName: $labName, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HormonesTableTable extends HormonesTable
    with TableInfo<$HormonesTableTable, HormonesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HormonesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _testNameMeta = const VerificationMeta(
    'testName',
  );
  @override
  late final GeneratedColumn<String> testName = GeneratedColumn<String>(
    'test_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _resultValueMeta = const VerificationMeta(
    'resultValue',
  );
  @override
  late final GeneratedColumn<double> resultValue = GeneratedColumn<double>(
    'result_value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _refRangeLowMeta = const VerificationMeta(
    'refRangeLow',
  );
  @override
  late final GeneratedColumn<double> refRangeLow = GeneratedColumn<double>(
    'ref_range_low',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _refRangeHighMeta = const VerificationMeta(
    'refRangeHigh',
  );
  @override
  late final GeneratedColumn<double> refRangeHigh = GeneratedColumn<double>(
    'ref_range_high',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _collectionDateMeta = const VerificationMeta(
    'collectionDate',
  );
  @override
  late final GeneratedColumn<DateTime> collectionDate =
      GeneratedColumn<DateTime>(
        'collection_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _labNameMeta = const VerificationMeta(
    'labName',
  );
  @override
  late final GeneratedColumn<String> labName = GeneratedColumn<String>(
    'lab_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    testName,
    resultValue,
    unit,
    refRangeLow,
    refRangeHigh,
    collectionDate,
    labName,
    notes,
    syncStatus,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hormones_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<HormonesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('test_name')) {
      context.handle(
        _testNameMeta,
        testName.isAcceptableOrUnknown(data['test_name']!, _testNameMeta),
      );
    } else if (isInserting) {
      context.missing(_testNameMeta);
    }
    if (data.containsKey('result_value')) {
      context.handle(
        _resultValueMeta,
        resultValue.isAcceptableOrUnknown(
          data['result_value']!,
          _resultValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_resultValueMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('ref_range_low')) {
      context.handle(
        _refRangeLowMeta,
        refRangeLow.isAcceptableOrUnknown(
          data['ref_range_low']!,
          _refRangeLowMeta,
        ),
      );
    }
    if (data.containsKey('ref_range_high')) {
      context.handle(
        _refRangeHighMeta,
        refRangeHigh.isAcceptableOrUnknown(
          data['ref_range_high']!,
          _refRangeHighMeta,
        ),
      );
    }
    if (data.containsKey('collection_date')) {
      context.handle(
        _collectionDateMeta,
        collectionDate.isAcceptableOrUnknown(
          data['collection_date']!,
          _collectionDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_collectionDateMeta);
    }
    if (data.containsKey('lab_name')) {
      context.handle(
        _labNameMeta,
        labName.isAcceptableOrUnknown(data['lab_name']!, _labNameMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HormonesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HormonesTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      testName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}test_name'],
          )!,
      resultValue:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}result_value'],
          )!,
      unit:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}unit'],
          )!,
      refRangeLow: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}ref_range_low'],
      ),
      refRangeHigh: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}ref_range_high'],
      ),
      collectionDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}collection_date'],
          )!,
      labName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lab_name'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $HormonesTableTable createAlias(String alias) {
    return $HormonesTableTable(attachedDatabase, alias);
  }
}

class HormonesTableData extends DataClass
    implements Insertable<HormonesTableData> {
  final String id;
  final String userId;
  final String testName;
  final double resultValue;
  final String unit;
  final double? refRangeLow;
  final double? refRangeHigh;
  final DateTime collectionDate;
  final String? labName;
  final String? notes;
  final String syncStatus;
  final DateTime createdAt;
  const HormonesTableData({
    required this.id,
    required this.userId,
    required this.testName,
    required this.resultValue,
    required this.unit,
    this.refRangeLow,
    this.refRangeHigh,
    required this.collectionDate,
    this.labName,
    this.notes,
    required this.syncStatus,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['test_name'] = Variable<String>(testName);
    map['result_value'] = Variable<double>(resultValue);
    map['unit'] = Variable<String>(unit);
    if (!nullToAbsent || refRangeLow != null) {
      map['ref_range_low'] = Variable<double>(refRangeLow);
    }
    if (!nullToAbsent || refRangeHigh != null) {
      map['ref_range_high'] = Variable<double>(refRangeHigh);
    }
    map['collection_date'] = Variable<DateTime>(collectionDate);
    if (!nullToAbsent || labName != null) {
      map['lab_name'] = Variable<String>(labName);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['sync_status'] = Variable<String>(syncStatus);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  HormonesTableCompanion toCompanion(bool nullToAbsent) {
    return HormonesTableCompanion(
      id: Value(id),
      userId: Value(userId),
      testName: Value(testName),
      resultValue: Value(resultValue),
      unit: Value(unit),
      refRangeLow:
          refRangeLow == null && nullToAbsent
              ? const Value.absent()
              : Value(refRangeLow),
      refRangeHigh:
          refRangeHigh == null && nullToAbsent
              ? const Value.absent()
              : Value(refRangeHigh),
      collectionDate: Value(collectionDate),
      labName:
          labName == null && nullToAbsent
              ? const Value.absent()
              : Value(labName),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      syncStatus: Value(syncStatus),
      createdAt: Value(createdAt),
    );
  }

  factory HormonesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HormonesTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      testName: serializer.fromJson<String>(json['testName']),
      resultValue: serializer.fromJson<double>(json['resultValue']),
      unit: serializer.fromJson<String>(json['unit']),
      refRangeLow: serializer.fromJson<double?>(json['refRangeLow']),
      refRangeHigh: serializer.fromJson<double?>(json['refRangeHigh']),
      collectionDate: serializer.fromJson<DateTime>(json['collectionDate']),
      labName: serializer.fromJson<String?>(json['labName']),
      notes: serializer.fromJson<String?>(json['notes']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'testName': serializer.toJson<String>(testName),
      'resultValue': serializer.toJson<double>(resultValue),
      'unit': serializer.toJson<String>(unit),
      'refRangeLow': serializer.toJson<double?>(refRangeLow),
      'refRangeHigh': serializer.toJson<double?>(refRangeHigh),
      'collectionDate': serializer.toJson<DateTime>(collectionDate),
      'labName': serializer.toJson<String?>(labName),
      'notes': serializer.toJson<String?>(notes),
      'syncStatus': serializer.toJson<String>(syncStatus),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  HormonesTableData copyWith({
    String? id,
    String? userId,
    String? testName,
    double? resultValue,
    String? unit,
    Value<double?> refRangeLow = const Value.absent(),
    Value<double?> refRangeHigh = const Value.absent(),
    DateTime? collectionDate,
    Value<String?> labName = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    String? syncStatus,
    DateTime? createdAt,
  }) => HormonesTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    testName: testName ?? this.testName,
    resultValue: resultValue ?? this.resultValue,
    unit: unit ?? this.unit,
    refRangeLow: refRangeLow.present ? refRangeLow.value : this.refRangeLow,
    refRangeHigh: refRangeHigh.present ? refRangeHigh.value : this.refRangeHigh,
    collectionDate: collectionDate ?? this.collectionDate,
    labName: labName.present ? labName.value : this.labName,
    notes: notes.present ? notes.value : this.notes,
    syncStatus: syncStatus ?? this.syncStatus,
    createdAt: createdAt ?? this.createdAt,
  );
  HormonesTableData copyWithCompanion(HormonesTableCompanion data) {
    return HormonesTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      testName: data.testName.present ? data.testName.value : this.testName,
      resultValue:
          data.resultValue.present ? data.resultValue.value : this.resultValue,
      unit: data.unit.present ? data.unit.value : this.unit,
      refRangeLow:
          data.refRangeLow.present ? data.refRangeLow.value : this.refRangeLow,
      refRangeHigh:
          data.refRangeHigh.present
              ? data.refRangeHigh.value
              : this.refRangeHigh,
      collectionDate:
          data.collectionDate.present
              ? data.collectionDate.value
              : this.collectionDate,
      labName: data.labName.present ? data.labName.value : this.labName,
      notes: data.notes.present ? data.notes.value : this.notes,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HormonesTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('testName: $testName, ')
          ..write('resultValue: $resultValue, ')
          ..write('unit: $unit, ')
          ..write('refRangeLow: $refRangeLow, ')
          ..write('refRangeHigh: $refRangeHigh, ')
          ..write('collectionDate: $collectionDate, ')
          ..write('labName: $labName, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    testName,
    resultValue,
    unit,
    refRangeLow,
    refRangeHigh,
    collectionDate,
    labName,
    notes,
    syncStatus,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HormonesTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.testName == this.testName &&
          other.resultValue == this.resultValue &&
          other.unit == this.unit &&
          other.refRangeLow == this.refRangeLow &&
          other.refRangeHigh == this.refRangeHigh &&
          other.collectionDate == this.collectionDate &&
          other.labName == this.labName &&
          other.notes == this.notes &&
          other.syncStatus == this.syncStatus &&
          other.createdAt == this.createdAt);
}

class HormonesTableCompanion extends UpdateCompanion<HormonesTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> testName;
  final Value<double> resultValue;
  final Value<String> unit;
  final Value<double?> refRangeLow;
  final Value<double?> refRangeHigh;
  final Value<DateTime> collectionDate;
  final Value<String?> labName;
  final Value<String?> notes;
  final Value<String> syncStatus;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const HormonesTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.testName = const Value.absent(),
    this.resultValue = const Value.absent(),
    this.unit = const Value.absent(),
    this.refRangeLow = const Value.absent(),
    this.refRangeHigh = const Value.absent(),
    this.collectionDate = const Value.absent(),
    this.labName = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HormonesTableCompanion.insert({
    required String id,
    required String userId,
    required String testName,
    required double resultValue,
    required String unit,
    this.refRangeLow = const Value.absent(),
    this.refRangeHigh = const Value.absent(),
    required DateTime collectionDate,
    this.labName = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       testName = Value(testName),
       resultValue = Value(resultValue),
       unit = Value(unit),
       collectionDate = Value(collectionDate);
  static Insertable<HormonesTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? testName,
    Expression<double>? resultValue,
    Expression<String>? unit,
    Expression<double>? refRangeLow,
    Expression<double>? refRangeHigh,
    Expression<DateTime>? collectionDate,
    Expression<String>? labName,
    Expression<String>? notes,
    Expression<String>? syncStatus,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (testName != null) 'test_name': testName,
      if (resultValue != null) 'result_value': resultValue,
      if (unit != null) 'unit': unit,
      if (refRangeLow != null) 'ref_range_low': refRangeLow,
      if (refRangeHigh != null) 'ref_range_high': refRangeHigh,
      if (collectionDate != null) 'collection_date': collectionDate,
      if (labName != null) 'lab_name': labName,
      if (notes != null) 'notes': notes,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HormonesTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? testName,
    Value<double>? resultValue,
    Value<String>? unit,
    Value<double?>? refRangeLow,
    Value<double?>? refRangeHigh,
    Value<DateTime>? collectionDate,
    Value<String?>? labName,
    Value<String?>? notes,
    Value<String>? syncStatus,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return HormonesTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      testName: testName ?? this.testName,
      resultValue: resultValue ?? this.resultValue,
      unit: unit ?? this.unit,
      refRangeLow: refRangeLow ?? this.refRangeLow,
      refRangeHigh: refRangeHigh ?? this.refRangeHigh,
      collectionDate: collectionDate ?? this.collectionDate,
      labName: labName ?? this.labName,
      notes: notes ?? this.notes,
      syncStatus: syncStatus ?? this.syncStatus,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (testName.present) {
      map['test_name'] = Variable<String>(testName.value);
    }
    if (resultValue.present) {
      map['result_value'] = Variable<double>(resultValue.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (refRangeLow.present) {
      map['ref_range_low'] = Variable<double>(refRangeLow.value);
    }
    if (refRangeHigh.present) {
      map['ref_range_high'] = Variable<double>(refRangeHigh.value);
    }
    if (collectionDate.present) {
      map['collection_date'] = Variable<DateTime>(collectionDate.value);
    }
    if (labName.present) {
      map['lab_name'] = Variable<String>(labName.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HormonesTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('testName: $testName, ')
          ..write('resultValue: $resultValue, ')
          ..write('unit: $unit, ')
          ..write('refRangeLow: $refRangeLow, ')
          ..write('refRangeHigh: $refRangeHigh, ')
          ..write('collectionDate: $collectionDate, ')
          ..write('labName: $labName, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReproductiveLifestylesTableTable extends ReproductiveLifestylesTable
    with
        TableInfo<
          $ReproductiveLifestylesTableTable,
          ReproductiveLifestylesTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReproductiveLifestylesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sleepHoursMeta = const VerificationMeta(
    'sleepHours',
  );
  @override
  late final GeneratedColumn<double> sleepHours = GeneratedColumn<double>(
    'sleep_hours',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _exerciseMinutesMeta = const VerificationMeta(
    'exerciseMinutes',
  );
  @override
  late final GeneratedColumn<int> exerciseMinutes = GeneratedColumn<int>(
    'exercise_minutes',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tobaccoUsedMeta = const VerificationMeta(
    'tobaccoUsed',
  );
  @override
  late final GeneratedColumn<bool> tobaccoUsed = GeneratedColumn<bool>(
    'tobacco_used',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tobacco_used" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _alcoholUnitsMeta = const VerificationMeta(
    'alcoholUnits',
  );
  @override
  late final GeneratedColumn<int> alcoholUnits = GeneratedColumn<int>(
    'alcohol_units',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _saunaExposedMeta = const VerificationMeta(
    'saunaExposed',
  );
  @override
  late final GeneratedColumn<bool> saunaExposed = GeneratedColumn<bool>(
    'sauna_exposed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("sauna_exposed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _stressLevelMeta = const VerificationMeta(
    'stressLevel',
  );
  @override
  late final GeneratedColumn<int> stressLevel = GeneratedColumn<int>(
    'stress_level',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _illnessOrFeverMeta = const VerificationMeta(
    'illnessOrFever',
  );
  @override
  late final GeneratedColumn<bool> illnessOrFever = GeneratedColumn<bool>(
    'illness_or_fever',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("illness_or_fever" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    date,
    sleepHours,
    exerciseMinutes,
    tobaccoUsed,
    alcoholUnits,
    saunaExposed,
    stressLevel,
    illnessOrFever,
    notes,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reproductive_lifestyles_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReproductiveLifestylesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('sleep_hours')) {
      context.handle(
        _sleepHoursMeta,
        sleepHours.isAcceptableOrUnknown(data['sleep_hours']!, _sleepHoursMeta),
      );
    }
    if (data.containsKey('exercise_minutes')) {
      context.handle(
        _exerciseMinutesMeta,
        exerciseMinutes.isAcceptableOrUnknown(
          data['exercise_minutes']!,
          _exerciseMinutesMeta,
        ),
      );
    }
    if (data.containsKey('tobacco_used')) {
      context.handle(
        _tobaccoUsedMeta,
        tobaccoUsed.isAcceptableOrUnknown(
          data['tobacco_used']!,
          _tobaccoUsedMeta,
        ),
      );
    }
    if (data.containsKey('alcohol_units')) {
      context.handle(
        _alcoholUnitsMeta,
        alcoholUnits.isAcceptableOrUnknown(
          data['alcohol_units']!,
          _alcoholUnitsMeta,
        ),
      );
    }
    if (data.containsKey('sauna_exposed')) {
      context.handle(
        _saunaExposedMeta,
        saunaExposed.isAcceptableOrUnknown(
          data['sauna_exposed']!,
          _saunaExposedMeta,
        ),
      );
    }
    if (data.containsKey('stress_level')) {
      context.handle(
        _stressLevelMeta,
        stressLevel.isAcceptableOrUnknown(
          data['stress_level']!,
          _stressLevelMeta,
        ),
      );
    }
    if (data.containsKey('illness_or_fever')) {
      context.handle(
        _illnessOrFeverMeta,
        illnessOrFever.isAcceptableOrUnknown(
          data['illness_or_fever']!,
          _illnessOrFeverMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReproductiveLifestylesTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReproductiveLifestylesTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      date:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}date'],
          )!,
      sleepHours: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sleep_hours'],
      ),
      exerciseMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_minutes'],
      ),
      tobaccoUsed:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}tobacco_used'],
          )!,
      alcoholUnits:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}alcohol_units'],
          )!,
      saunaExposed:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}sauna_exposed'],
          )!,
      stressLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stress_level'],
      ),
      illnessOrFever:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}illness_or_fever'],
          )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $ReproductiveLifestylesTableTable createAlias(String alias) {
    return $ReproductiveLifestylesTableTable(attachedDatabase, alias);
  }
}

class ReproductiveLifestylesTableData extends DataClass
    implements Insertable<ReproductiveLifestylesTableData> {
  final String id;
  final String userId;
  final DateTime date;
  final double? sleepHours;
  final int? exerciseMinutes;
  final bool tobaccoUsed;
  final int alcoholUnits;
  final bool saunaExposed;
  final int? stressLevel;
  final bool illnessOrFever;
  final String? notes;
  final String syncStatus;
  const ReproductiveLifestylesTableData({
    required this.id,
    required this.userId,
    required this.date,
    this.sleepHours,
    this.exerciseMinutes,
    required this.tobaccoUsed,
    required this.alcoholUnits,
    required this.saunaExposed,
    this.stressLevel,
    required this.illnessOrFever,
    this.notes,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || sleepHours != null) {
      map['sleep_hours'] = Variable<double>(sleepHours);
    }
    if (!nullToAbsent || exerciseMinutes != null) {
      map['exercise_minutes'] = Variable<int>(exerciseMinutes);
    }
    map['tobacco_used'] = Variable<bool>(tobaccoUsed);
    map['alcohol_units'] = Variable<int>(alcoholUnits);
    map['sauna_exposed'] = Variable<bool>(saunaExposed);
    if (!nullToAbsent || stressLevel != null) {
      map['stress_level'] = Variable<int>(stressLevel);
    }
    map['illness_or_fever'] = Variable<bool>(illnessOrFever);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  ReproductiveLifestylesTableCompanion toCompanion(bool nullToAbsent) {
    return ReproductiveLifestylesTableCompanion(
      id: Value(id),
      userId: Value(userId),
      date: Value(date),
      sleepHours:
          sleepHours == null && nullToAbsent
              ? const Value.absent()
              : Value(sleepHours),
      exerciseMinutes:
          exerciseMinutes == null && nullToAbsent
              ? const Value.absent()
              : Value(exerciseMinutes),
      tobaccoUsed: Value(tobaccoUsed),
      alcoholUnits: Value(alcoholUnits),
      saunaExposed: Value(saunaExposed),
      stressLevel:
          stressLevel == null && nullToAbsent
              ? const Value.absent()
              : Value(stressLevel),
      illnessOrFever: Value(illnessOrFever),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      syncStatus: Value(syncStatus),
    );
  }

  factory ReproductiveLifestylesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReproductiveLifestylesTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      date: serializer.fromJson<DateTime>(json['date']),
      sleepHours: serializer.fromJson<double?>(json['sleepHours']),
      exerciseMinutes: serializer.fromJson<int?>(json['exerciseMinutes']),
      tobaccoUsed: serializer.fromJson<bool>(json['tobaccoUsed']),
      alcoholUnits: serializer.fromJson<int>(json['alcoholUnits']),
      saunaExposed: serializer.fromJson<bool>(json['saunaExposed']),
      stressLevel: serializer.fromJson<int?>(json['stressLevel']),
      illnessOrFever: serializer.fromJson<bool>(json['illnessOrFever']),
      notes: serializer.fromJson<String?>(json['notes']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'date': serializer.toJson<DateTime>(date),
      'sleepHours': serializer.toJson<double?>(sleepHours),
      'exerciseMinutes': serializer.toJson<int?>(exerciseMinutes),
      'tobaccoUsed': serializer.toJson<bool>(tobaccoUsed),
      'alcoholUnits': serializer.toJson<int>(alcoholUnits),
      'saunaExposed': serializer.toJson<bool>(saunaExposed),
      'stressLevel': serializer.toJson<int?>(stressLevel),
      'illnessOrFever': serializer.toJson<bool>(illnessOrFever),
      'notes': serializer.toJson<String?>(notes),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  ReproductiveLifestylesTableData copyWith({
    String? id,
    String? userId,
    DateTime? date,
    Value<double?> sleepHours = const Value.absent(),
    Value<int?> exerciseMinutes = const Value.absent(),
    bool? tobaccoUsed,
    int? alcoholUnits,
    bool? saunaExposed,
    Value<int?> stressLevel = const Value.absent(),
    bool? illnessOrFever,
    Value<String?> notes = const Value.absent(),
    String? syncStatus,
  }) => ReproductiveLifestylesTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    date: date ?? this.date,
    sleepHours: sleepHours.present ? sleepHours.value : this.sleepHours,
    exerciseMinutes:
        exerciseMinutes.present ? exerciseMinutes.value : this.exerciseMinutes,
    tobaccoUsed: tobaccoUsed ?? this.tobaccoUsed,
    alcoholUnits: alcoholUnits ?? this.alcoholUnits,
    saunaExposed: saunaExposed ?? this.saunaExposed,
    stressLevel: stressLevel.present ? stressLevel.value : this.stressLevel,
    illnessOrFever: illnessOrFever ?? this.illnessOrFever,
    notes: notes.present ? notes.value : this.notes,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  ReproductiveLifestylesTableData copyWithCompanion(
    ReproductiveLifestylesTableCompanion data,
  ) {
    return ReproductiveLifestylesTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      date: data.date.present ? data.date.value : this.date,
      sleepHours:
          data.sleepHours.present ? data.sleepHours.value : this.sleepHours,
      exerciseMinutes:
          data.exerciseMinutes.present
              ? data.exerciseMinutes.value
              : this.exerciseMinutes,
      tobaccoUsed:
          data.tobaccoUsed.present ? data.tobaccoUsed.value : this.tobaccoUsed,
      alcoholUnits:
          data.alcoholUnits.present
              ? data.alcoholUnits.value
              : this.alcoholUnits,
      saunaExposed:
          data.saunaExposed.present
              ? data.saunaExposed.value
              : this.saunaExposed,
      stressLevel:
          data.stressLevel.present ? data.stressLevel.value : this.stressLevel,
      illnessOrFever:
          data.illnessOrFever.present
              ? data.illnessOrFever.value
              : this.illnessOrFever,
      notes: data.notes.present ? data.notes.value : this.notes,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReproductiveLifestylesTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('sleepHours: $sleepHours, ')
          ..write('exerciseMinutes: $exerciseMinutes, ')
          ..write('tobaccoUsed: $tobaccoUsed, ')
          ..write('alcoholUnits: $alcoholUnits, ')
          ..write('saunaExposed: $saunaExposed, ')
          ..write('stressLevel: $stressLevel, ')
          ..write('illnessOrFever: $illnessOrFever, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    date,
    sleepHours,
    exerciseMinutes,
    tobaccoUsed,
    alcoholUnits,
    saunaExposed,
    stressLevel,
    illnessOrFever,
    notes,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReproductiveLifestylesTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.date == this.date &&
          other.sleepHours == this.sleepHours &&
          other.exerciseMinutes == this.exerciseMinutes &&
          other.tobaccoUsed == this.tobaccoUsed &&
          other.alcoholUnits == this.alcoholUnits &&
          other.saunaExposed == this.saunaExposed &&
          other.stressLevel == this.stressLevel &&
          other.illnessOrFever == this.illnessOrFever &&
          other.notes == this.notes &&
          other.syncStatus == this.syncStatus);
}

class ReproductiveLifestylesTableCompanion
    extends UpdateCompanion<ReproductiveLifestylesTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> date;
  final Value<double?> sleepHours;
  final Value<int?> exerciseMinutes;
  final Value<bool> tobaccoUsed;
  final Value<int> alcoholUnits;
  final Value<bool> saunaExposed;
  final Value<int?> stressLevel;
  final Value<bool> illnessOrFever;
  final Value<String?> notes;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const ReproductiveLifestylesTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.date = const Value.absent(),
    this.sleepHours = const Value.absent(),
    this.exerciseMinutes = const Value.absent(),
    this.tobaccoUsed = const Value.absent(),
    this.alcoholUnits = const Value.absent(),
    this.saunaExposed = const Value.absent(),
    this.stressLevel = const Value.absent(),
    this.illnessOrFever = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReproductiveLifestylesTableCompanion.insert({
    required String id,
    required String userId,
    required DateTime date,
    this.sleepHours = const Value.absent(),
    this.exerciseMinutes = const Value.absent(),
    this.tobaccoUsed = const Value.absent(),
    this.alcoholUnits = const Value.absent(),
    this.saunaExposed = const Value.absent(),
    this.stressLevel = const Value.absent(),
    this.illnessOrFever = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       date = Value(date);
  static Insertable<ReproductiveLifestylesTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? date,
    Expression<double>? sleepHours,
    Expression<int>? exerciseMinutes,
    Expression<bool>? tobaccoUsed,
    Expression<int>? alcoholUnits,
    Expression<bool>? saunaExposed,
    Expression<int>? stressLevel,
    Expression<bool>? illnessOrFever,
    Expression<String>? notes,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (date != null) 'date': date,
      if (sleepHours != null) 'sleep_hours': sleepHours,
      if (exerciseMinutes != null) 'exercise_minutes': exerciseMinutes,
      if (tobaccoUsed != null) 'tobacco_used': tobaccoUsed,
      if (alcoholUnits != null) 'alcohol_units': alcoholUnits,
      if (saunaExposed != null) 'sauna_exposed': saunaExposed,
      if (stressLevel != null) 'stress_level': stressLevel,
      if (illnessOrFever != null) 'illness_or_fever': illnessOrFever,
      if (notes != null) 'notes': notes,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReproductiveLifestylesTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<DateTime>? date,
    Value<double?>? sleepHours,
    Value<int?>? exerciseMinutes,
    Value<bool>? tobaccoUsed,
    Value<int>? alcoholUnits,
    Value<bool>? saunaExposed,
    Value<int?>? stressLevel,
    Value<bool>? illnessOrFever,
    Value<String?>? notes,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return ReproductiveLifestylesTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      sleepHours: sleepHours ?? this.sleepHours,
      exerciseMinutes: exerciseMinutes ?? this.exerciseMinutes,
      tobaccoUsed: tobaccoUsed ?? this.tobaccoUsed,
      alcoholUnits: alcoholUnits ?? this.alcoholUnits,
      saunaExposed: saunaExposed ?? this.saunaExposed,
      stressLevel: stressLevel ?? this.stressLevel,
      illnessOrFever: illnessOrFever ?? this.illnessOrFever,
      notes: notes ?? this.notes,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (sleepHours.present) {
      map['sleep_hours'] = Variable<double>(sleepHours.value);
    }
    if (exerciseMinutes.present) {
      map['exercise_minutes'] = Variable<int>(exerciseMinutes.value);
    }
    if (tobaccoUsed.present) {
      map['tobacco_used'] = Variable<bool>(tobaccoUsed.value);
    }
    if (alcoholUnits.present) {
      map['alcohol_units'] = Variable<int>(alcoholUnits.value);
    }
    if (saunaExposed.present) {
      map['sauna_exposed'] = Variable<bool>(saunaExposed.value);
    }
    if (stressLevel.present) {
      map['stress_level'] = Variable<int>(stressLevel.value);
    }
    if (illnessOrFever.present) {
      map['illness_or_fever'] = Variable<bool>(illnessOrFever.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReproductiveLifestylesTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('sleepHours: $sleepHours, ')
          ..write('exerciseMinutes: $exerciseMinutes, ')
          ..write('tobaccoUsed: $tobaccoUsed, ')
          ..write('alcoholUnits: $alcoholUnits, ')
          ..write('saunaExposed: $saunaExposed, ')
          ..write('stressLevel: $stressLevel, ')
          ..write('illnessOrFever: $illnessOrFever, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FemaleCycleTableTable extends FemaleCycleTable
    with TableInfo<$FemaleCycleTableTable, FemaleCycleTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FemaleCycleTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _periodStartDateMeta = const VerificationMeta(
    'periodStartDate',
  );
  @override
  late final GeneratedColumn<DateTime> periodStartDate =
      GeneratedColumn<DateTime>(
        'period_start_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _periodEndDateMeta = const VerificationMeta(
    'periodEndDate',
  );
  @override
  late final GeneratedColumn<DateTime> periodEndDate =
      GeneratedColumn<DateTime>(
        'period_end_date',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _cycleLengthDaysMeta = const VerificationMeta(
    'cycleLengthDays',
  );
  @override
  late final GeneratedColumn<int> cycleLengthDays = GeneratedColumn<int>(
    'cycle_length_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(28),
  );
  static const VerificationMeta _periodLengthDaysMeta = const VerificationMeta(
    'periodLengthDays',
  );
  @override
  late final GeneratedColumn<int> periodLengthDays = GeneratedColumn<int>(
    'period_length_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(5),
  );
  static const VerificationMeta _symptomsMeta = const VerificationMeta(
    'symptoms',
  );
  @override
  late final GeneratedColumn<String> symptoms = GeneratedColumn<String>(
    'symptoms',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    periodStartDate,
    periodEndDate,
    cycleLengthDays,
    periodLengthDays,
    symptoms,
    notes,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'female_cycle_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FemaleCycleTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('period_start_date')) {
      context.handle(
        _periodStartDateMeta,
        periodStartDate.isAcceptableOrUnknown(
          data['period_start_date']!,
          _periodStartDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_periodStartDateMeta);
    }
    if (data.containsKey('period_end_date')) {
      context.handle(
        _periodEndDateMeta,
        periodEndDate.isAcceptableOrUnknown(
          data['period_end_date']!,
          _periodEndDateMeta,
        ),
      );
    }
    if (data.containsKey('cycle_length_days')) {
      context.handle(
        _cycleLengthDaysMeta,
        cycleLengthDays.isAcceptableOrUnknown(
          data['cycle_length_days']!,
          _cycleLengthDaysMeta,
        ),
      );
    }
    if (data.containsKey('period_length_days')) {
      context.handle(
        _periodLengthDaysMeta,
        periodLengthDays.isAcceptableOrUnknown(
          data['period_length_days']!,
          _periodLengthDaysMeta,
        ),
      );
    }
    if (data.containsKey('symptoms')) {
      context.handle(
        _symptomsMeta,
        symptoms.isAcceptableOrUnknown(data['symptoms']!, _symptomsMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FemaleCycleTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FemaleCycleTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      periodStartDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}period_start_date'],
          )!,
      periodEndDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}period_end_date'],
      ),
      cycleLengthDays:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}cycle_length_days'],
          )!,
      periodLengthDays:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}period_length_days'],
          )!,
      symptoms: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symptoms'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $FemaleCycleTableTable createAlias(String alias) {
    return $FemaleCycleTableTable(attachedDatabase, alias);
  }
}

class FemaleCycleTableData extends DataClass
    implements Insertable<FemaleCycleTableData> {
  final String id;
  final String userId;
  final DateTime periodStartDate;
  final DateTime? periodEndDate;
  final int cycleLengthDays;
  final int periodLengthDays;
  final String? symptoms;
  final String? notes;
  final String syncStatus;
  const FemaleCycleTableData({
    required this.id,
    required this.userId,
    required this.periodStartDate,
    this.periodEndDate,
    required this.cycleLengthDays,
    required this.periodLengthDays,
    this.symptoms,
    this.notes,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['period_start_date'] = Variable<DateTime>(periodStartDate);
    if (!nullToAbsent || periodEndDate != null) {
      map['period_end_date'] = Variable<DateTime>(periodEndDate);
    }
    map['cycle_length_days'] = Variable<int>(cycleLengthDays);
    map['period_length_days'] = Variable<int>(periodLengthDays);
    if (!nullToAbsent || symptoms != null) {
      map['symptoms'] = Variable<String>(symptoms);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  FemaleCycleTableCompanion toCompanion(bool nullToAbsent) {
    return FemaleCycleTableCompanion(
      id: Value(id),
      userId: Value(userId),
      periodStartDate: Value(periodStartDate),
      periodEndDate:
          periodEndDate == null && nullToAbsent
              ? const Value.absent()
              : Value(periodEndDate),
      cycleLengthDays: Value(cycleLengthDays),
      periodLengthDays: Value(periodLengthDays),
      symptoms:
          symptoms == null && nullToAbsent
              ? const Value.absent()
              : Value(symptoms),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      syncStatus: Value(syncStatus),
    );
  }

  factory FemaleCycleTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FemaleCycleTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      periodStartDate: serializer.fromJson<DateTime>(json['periodStartDate']),
      periodEndDate: serializer.fromJson<DateTime?>(json['periodEndDate']),
      cycleLengthDays: serializer.fromJson<int>(json['cycleLengthDays']),
      periodLengthDays: serializer.fromJson<int>(json['periodLengthDays']),
      symptoms: serializer.fromJson<String?>(json['symptoms']),
      notes: serializer.fromJson<String?>(json['notes']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'periodStartDate': serializer.toJson<DateTime>(periodStartDate),
      'periodEndDate': serializer.toJson<DateTime?>(periodEndDate),
      'cycleLengthDays': serializer.toJson<int>(cycleLengthDays),
      'periodLengthDays': serializer.toJson<int>(periodLengthDays),
      'symptoms': serializer.toJson<String?>(symptoms),
      'notes': serializer.toJson<String?>(notes),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  FemaleCycleTableData copyWith({
    String? id,
    String? userId,
    DateTime? periodStartDate,
    Value<DateTime?> periodEndDate = const Value.absent(),
    int? cycleLengthDays,
    int? periodLengthDays,
    Value<String?> symptoms = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    String? syncStatus,
  }) => FemaleCycleTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    periodStartDate: periodStartDate ?? this.periodStartDate,
    periodEndDate:
        periodEndDate.present ? periodEndDate.value : this.periodEndDate,
    cycleLengthDays: cycleLengthDays ?? this.cycleLengthDays,
    periodLengthDays: periodLengthDays ?? this.periodLengthDays,
    symptoms: symptoms.present ? symptoms.value : this.symptoms,
    notes: notes.present ? notes.value : this.notes,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  FemaleCycleTableData copyWithCompanion(FemaleCycleTableCompanion data) {
    return FemaleCycleTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      periodStartDate:
          data.periodStartDate.present
              ? data.periodStartDate.value
              : this.periodStartDate,
      periodEndDate:
          data.periodEndDate.present
              ? data.periodEndDate.value
              : this.periodEndDate,
      cycleLengthDays:
          data.cycleLengthDays.present
              ? data.cycleLengthDays.value
              : this.cycleLengthDays,
      periodLengthDays:
          data.periodLengthDays.present
              ? data.periodLengthDays.value
              : this.periodLengthDays,
      symptoms: data.symptoms.present ? data.symptoms.value : this.symptoms,
      notes: data.notes.present ? data.notes.value : this.notes,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FemaleCycleTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('periodStartDate: $periodStartDate, ')
          ..write('periodEndDate: $periodEndDate, ')
          ..write('cycleLengthDays: $cycleLengthDays, ')
          ..write('periodLengthDays: $periodLengthDays, ')
          ..write('symptoms: $symptoms, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    periodStartDate,
    periodEndDate,
    cycleLengthDays,
    periodLengthDays,
    symptoms,
    notes,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FemaleCycleTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.periodStartDate == this.periodStartDate &&
          other.periodEndDate == this.periodEndDate &&
          other.cycleLengthDays == this.cycleLengthDays &&
          other.periodLengthDays == this.periodLengthDays &&
          other.symptoms == this.symptoms &&
          other.notes == this.notes &&
          other.syncStatus == this.syncStatus);
}

class FemaleCycleTableCompanion extends UpdateCompanion<FemaleCycleTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> periodStartDate;
  final Value<DateTime?> periodEndDate;
  final Value<int> cycleLengthDays;
  final Value<int> periodLengthDays;
  final Value<String?> symptoms;
  final Value<String?> notes;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const FemaleCycleTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.periodStartDate = const Value.absent(),
    this.periodEndDate = const Value.absent(),
    this.cycleLengthDays = const Value.absent(),
    this.periodLengthDays = const Value.absent(),
    this.symptoms = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FemaleCycleTableCompanion.insert({
    required String id,
    required String userId,
    required DateTime periodStartDate,
    this.periodEndDate = const Value.absent(),
    this.cycleLengthDays = const Value.absent(),
    this.periodLengthDays = const Value.absent(),
    this.symptoms = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       periodStartDate = Value(periodStartDate);
  static Insertable<FemaleCycleTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? periodStartDate,
    Expression<DateTime>? periodEndDate,
    Expression<int>? cycleLengthDays,
    Expression<int>? periodLengthDays,
    Expression<String>? symptoms,
    Expression<String>? notes,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (periodStartDate != null) 'period_start_date': periodStartDate,
      if (periodEndDate != null) 'period_end_date': periodEndDate,
      if (cycleLengthDays != null) 'cycle_length_days': cycleLengthDays,
      if (periodLengthDays != null) 'period_length_days': periodLengthDays,
      if (symptoms != null) 'symptoms': symptoms,
      if (notes != null) 'notes': notes,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FemaleCycleTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<DateTime>? periodStartDate,
    Value<DateTime?>? periodEndDate,
    Value<int>? cycleLengthDays,
    Value<int>? periodLengthDays,
    Value<String?>? symptoms,
    Value<String?>? notes,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return FemaleCycleTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      periodStartDate: periodStartDate ?? this.periodStartDate,
      periodEndDate: periodEndDate ?? this.periodEndDate,
      cycleLengthDays: cycleLengthDays ?? this.cycleLengthDays,
      periodLengthDays: periodLengthDays ?? this.periodLengthDays,
      symptoms: symptoms ?? this.symptoms,
      notes: notes ?? this.notes,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (periodStartDate.present) {
      map['period_start_date'] = Variable<DateTime>(periodStartDate.value);
    }
    if (periodEndDate.present) {
      map['period_end_date'] = Variable<DateTime>(periodEndDate.value);
    }
    if (cycleLengthDays.present) {
      map['cycle_length_days'] = Variable<int>(cycleLengthDays.value);
    }
    if (periodLengthDays.present) {
      map['period_length_days'] = Variable<int>(periodLengthDays.value);
    }
    if (symptoms.present) {
      map['symptoms'] = Variable<String>(symptoms.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FemaleCycleTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('periodStartDate: $periodStartDate, ')
          ..write('periodEndDate: $periodEndDate, ')
          ..write('cycleLengthDays: $cycleLengthDays, ')
          ..write('periodLengthDays: $periodLengthDays, ')
          ..write('symptoms: $symptoms, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MedicationsTableTable extends MedicationsTable
    with TableInfo<$MedicationsTableTable, MedicationsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MedicationsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dosageMeta = const VerificationMeta('dosage');
  @override
  late final GeneratedColumn<double> dosage = GeneratedColumn<double>(
    'dosage',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _frequencyMeta = const VerificationMeta(
    'frequency',
  );
  @override
  late final GeneratedColumn<String> frequency = GeneratedColumn<String>(
    'frequency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _instructionsMeta = const VerificationMeta(
    'instructions',
  );
  @override
  late final GeneratedColumn<String> instructions = GeneratedColumn<String>(
    'instructions',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isReminderActiveMeta = const VerificationMeta(
    'isReminderActive',
  );
  @override
  late final GeneratedColumn<bool> isReminderActive = GeneratedColumn<bool>(
    'is_reminder_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_reminder_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    name,
    dosage,
    unit,
    frequency,
    startDate,
    endDate,
    instructions,
    isReminderActive,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'medications_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MedicationsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('dosage')) {
      context.handle(
        _dosageMeta,
        dosage.isAcceptableOrUnknown(data['dosage']!, _dosageMeta),
      );
    } else if (isInserting) {
      context.missing(_dosageMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('frequency')) {
      context.handle(
        _frequencyMeta,
        frequency.isAcceptableOrUnknown(data['frequency']!, _frequencyMeta),
      );
    } else if (isInserting) {
      context.missing(_frequencyMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    }
    if (data.containsKey('instructions')) {
      context.handle(
        _instructionsMeta,
        instructions.isAcceptableOrUnknown(
          data['instructions']!,
          _instructionsMeta,
        ),
      );
    }
    if (data.containsKey('is_reminder_active')) {
      context.handle(
        _isReminderActiveMeta,
        isReminderActive.isAcceptableOrUnknown(
          data['is_reminder_active']!,
          _isReminderActiveMeta,
        ),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MedicationsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MedicationsTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      dosage:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}dosage'],
          )!,
      unit:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}unit'],
          )!,
      frequency:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}frequency'],
          )!,
      startDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}start_date'],
          )!,
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      ),
      instructions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instructions'],
      ),
      isReminderActive:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_reminder_active'],
          )!,
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $MedicationsTableTable createAlias(String alias) {
    return $MedicationsTableTable(attachedDatabase, alias);
  }
}

class MedicationsTableData extends DataClass
    implements Insertable<MedicationsTableData> {
  final String id;
  final String userId;
  final String name;
  final double dosage;
  final String unit;
  final String frequency;
  final DateTime startDate;
  final DateTime? endDate;
  final String? instructions;
  final bool isReminderActive;
  final String syncStatus;
  const MedicationsTableData({
    required this.id,
    required this.userId,
    required this.name,
    required this.dosage,
    required this.unit,
    required this.frequency,
    required this.startDate,
    this.endDate,
    this.instructions,
    required this.isReminderActive,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['name'] = Variable<String>(name);
    map['dosage'] = Variable<double>(dosage);
    map['unit'] = Variable<String>(unit);
    map['frequency'] = Variable<String>(frequency);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || instructions != null) {
      map['instructions'] = Variable<String>(instructions);
    }
    map['is_reminder_active'] = Variable<bool>(isReminderActive);
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  MedicationsTableCompanion toCompanion(bool nullToAbsent) {
    return MedicationsTableCompanion(
      id: Value(id),
      userId: Value(userId),
      name: Value(name),
      dosage: Value(dosage),
      unit: Value(unit),
      frequency: Value(frequency),
      startDate: Value(startDate),
      endDate:
          endDate == null && nullToAbsent
              ? const Value.absent()
              : Value(endDate),
      instructions:
          instructions == null && nullToAbsent
              ? const Value.absent()
              : Value(instructions),
      isReminderActive: Value(isReminderActive),
      syncStatus: Value(syncStatus),
    );
  }

  factory MedicationsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MedicationsTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      dosage: serializer.fromJson<double>(json['dosage']),
      unit: serializer.fromJson<String>(json['unit']),
      frequency: serializer.fromJson<String>(json['frequency']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      instructions: serializer.fromJson<String?>(json['instructions']),
      isReminderActive: serializer.fromJson<bool>(json['isReminderActive']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'name': serializer.toJson<String>(name),
      'dosage': serializer.toJson<double>(dosage),
      'unit': serializer.toJson<String>(unit),
      'frequency': serializer.toJson<String>(frequency),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'instructions': serializer.toJson<String?>(instructions),
      'isReminderActive': serializer.toJson<bool>(isReminderActive),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  MedicationsTableData copyWith({
    String? id,
    String? userId,
    String? name,
    double? dosage,
    String? unit,
    String? frequency,
    DateTime? startDate,
    Value<DateTime?> endDate = const Value.absent(),
    Value<String?> instructions = const Value.absent(),
    bool? isReminderActive,
    String? syncStatus,
  }) => MedicationsTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    name: name ?? this.name,
    dosage: dosage ?? this.dosage,
    unit: unit ?? this.unit,
    frequency: frequency ?? this.frequency,
    startDate: startDate ?? this.startDate,
    endDate: endDate.present ? endDate.value : this.endDate,
    instructions: instructions.present ? instructions.value : this.instructions,
    isReminderActive: isReminderActive ?? this.isReminderActive,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  MedicationsTableData copyWithCompanion(MedicationsTableCompanion data) {
    return MedicationsTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      name: data.name.present ? data.name.value : this.name,
      dosage: data.dosage.present ? data.dosage.value : this.dosage,
      unit: data.unit.present ? data.unit.value : this.unit,
      frequency: data.frequency.present ? data.frequency.value : this.frequency,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      instructions:
          data.instructions.present
              ? data.instructions.value
              : this.instructions,
      isReminderActive:
          data.isReminderActive.present
              ? data.isReminderActive.value
              : this.isReminderActive,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MedicationsTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('dosage: $dosage, ')
          ..write('unit: $unit, ')
          ..write('frequency: $frequency, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('instructions: $instructions, ')
          ..write('isReminderActive: $isReminderActive, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    name,
    dosage,
    unit,
    frequency,
    startDate,
    endDate,
    instructions,
    isReminderActive,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MedicationsTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.dosage == this.dosage &&
          other.unit == this.unit &&
          other.frequency == this.frequency &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.instructions == this.instructions &&
          other.isReminderActive == this.isReminderActive &&
          other.syncStatus == this.syncStatus);
}

class MedicationsTableCompanion extends UpdateCompanion<MedicationsTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> name;
  final Value<double> dosage;
  final Value<String> unit;
  final Value<String> frequency;
  final Value<DateTime> startDate;
  final Value<DateTime?> endDate;
  final Value<String?> instructions;
  final Value<bool> isReminderActive;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const MedicationsTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.dosage = const Value.absent(),
    this.unit = const Value.absent(),
    this.frequency = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.instructions = const Value.absent(),
    this.isReminderActive = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MedicationsTableCompanion.insert({
    required String id,
    required String userId,
    required String name,
    required double dosage,
    required String unit,
    required String frequency,
    required DateTime startDate,
    this.endDate = const Value.absent(),
    this.instructions = const Value.absent(),
    this.isReminderActive = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       name = Value(name),
       dosage = Value(dosage),
       unit = Value(unit),
       frequency = Value(frequency),
       startDate = Value(startDate);
  static Insertable<MedicationsTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? name,
    Expression<double>? dosage,
    Expression<String>? unit,
    Expression<String>? frequency,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? instructions,
    Expression<bool>? isReminderActive,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (dosage != null) 'dosage': dosage,
      if (unit != null) 'unit': unit,
      if (frequency != null) 'frequency': frequency,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (instructions != null) 'instructions': instructions,
      if (isReminderActive != null) 'is_reminder_active': isReminderActive,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MedicationsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? name,
    Value<double>? dosage,
    Value<String>? unit,
    Value<String>? frequency,
    Value<DateTime>? startDate,
    Value<DateTime?>? endDate,
    Value<String?>? instructions,
    Value<bool>? isReminderActive,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return MedicationsTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      dosage: dosage ?? this.dosage,
      unit: unit ?? this.unit,
      frequency: frequency ?? this.frequency,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      instructions: instructions ?? this.instructions,
      isReminderActive: isReminderActive ?? this.isReminderActive,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (dosage.present) {
      map['dosage'] = Variable<double>(dosage.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (frequency.present) {
      map['frequency'] = Variable<String>(frequency.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (instructions.present) {
      map['instructions'] = Variable<String>(instructions.value);
    }
    if (isReminderActive.present) {
      map['is_reminder_active'] = Variable<bool>(isReminderActive.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MedicationsTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('dosage: $dosage, ')
          ..write('unit: $unit, ')
          ..write('frequency: $frequency, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('instructions: $instructions, ')
          ..write('isReminderActive: $isReminderActive, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GoalsTableTable extends GoalsTable
    with TableInfo<$GoalsTableTable, GoalsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetValueMeta = const VerificationMeta(
    'targetValue',
  );
  @override
  late final GeneratedColumn<double> targetValue = GeneratedColumn<double>(
    'target_value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetDateMeta = const VerificationMeta(
    'targetDate',
  );
  @override
  late final GeneratedColumn<DateTime> targetDate = GeneratedColumn<DateTime>(
    'target_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currentProgressMeta = const VerificationMeta(
    'currentProgress',
  );
  @override
  late final GeneratedColumn<double> currentProgress = GeneratedColumn<double>(
    'current_progress',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _isCompletedMeta = const VerificationMeta(
    'isCompleted',
  );
  @override
  late final GeneratedColumn<bool> isCompleted = GeneratedColumn<bool>(
    'is_completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    category,
    targetValue,
    unit,
    startDate,
    targetDate,
    currentProgress,
    isCompleted,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goals_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<GoalsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('target_value')) {
      context.handle(
        _targetValueMeta,
        targetValue.isAcceptableOrUnknown(
          data['target_value']!,
          _targetValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_targetValueMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('target_date')) {
      context.handle(
        _targetDateMeta,
        targetDate.isAcceptableOrUnknown(data['target_date']!, _targetDateMeta),
      );
    }
    if (data.containsKey('current_progress')) {
      context.handle(
        _currentProgressMeta,
        currentProgress.isAcceptableOrUnknown(
          data['current_progress']!,
          _currentProgressMeta,
        ),
      );
    }
    if (data.containsKey('is_completed')) {
      context.handle(
        _isCompletedMeta,
        isCompleted.isAcceptableOrUnknown(
          data['is_completed']!,
          _isCompletedMeta,
        ),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoalsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoalsTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      category:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}category'],
          )!,
      targetValue:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}target_value'],
          )!,
      unit:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}unit'],
          )!,
      startDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}start_date'],
          )!,
      targetDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}target_date'],
      ),
      currentProgress:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}current_progress'],
          )!,
      isCompleted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_completed'],
          )!,
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $GoalsTableTable createAlias(String alias) {
    return $GoalsTableTable(attachedDatabase, alias);
  }
}

class GoalsTableData extends DataClass implements Insertable<GoalsTableData> {
  final String id;
  final String userId;
  final String category;
  final double targetValue;
  final String unit;
  final DateTime startDate;
  final DateTime? targetDate;
  final double currentProgress;
  final bool isCompleted;
  final String syncStatus;
  const GoalsTableData({
    required this.id,
    required this.userId,
    required this.category,
    required this.targetValue,
    required this.unit,
    required this.startDate,
    this.targetDate,
    required this.currentProgress,
    required this.isCompleted,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['category'] = Variable<String>(category);
    map['target_value'] = Variable<double>(targetValue);
    map['unit'] = Variable<String>(unit);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || targetDate != null) {
      map['target_date'] = Variable<DateTime>(targetDate);
    }
    map['current_progress'] = Variable<double>(currentProgress);
    map['is_completed'] = Variable<bool>(isCompleted);
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  GoalsTableCompanion toCompanion(bool nullToAbsent) {
    return GoalsTableCompanion(
      id: Value(id),
      userId: Value(userId),
      category: Value(category),
      targetValue: Value(targetValue),
      unit: Value(unit),
      startDate: Value(startDate),
      targetDate:
          targetDate == null && nullToAbsent
              ? const Value.absent()
              : Value(targetDate),
      currentProgress: Value(currentProgress),
      isCompleted: Value(isCompleted),
      syncStatus: Value(syncStatus),
    );
  }

  factory GoalsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoalsTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      category: serializer.fromJson<String>(json['category']),
      targetValue: serializer.fromJson<double>(json['targetValue']),
      unit: serializer.fromJson<String>(json['unit']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      targetDate: serializer.fromJson<DateTime?>(json['targetDate']),
      currentProgress: serializer.fromJson<double>(json['currentProgress']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'category': serializer.toJson<String>(category),
      'targetValue': serializer.toJson<double>(targetValue),
      'unit': serializer.toJson<String>(unit),
      'startDate': serializer.toJson<DateTime>(startDate),
      'targetDate': serializer.toJson<DateTime?>(targetDate),
      'currentProgress': serializer.toJson<double>(currentProgress),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  GoalsTableData copyWith({
    String? id,
    String? userId,
    String? category,
    double? targetValue,
    String? unit,
    DateTime? startDate,
    Value<DateTime?> targetDate = const Value.absent(),
    double? currentProgress,
    bool? isCompleted,
    String? syncStatus,
  }) => GoalsTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    category: category ?? this.category,
    targetValue: targetValue ?? this.targetValue,
    unit: unit ?? this.unit,
    startDate: startDate ?? this.startDate,
    targetDate: targetDate.present ? targetDate.value : this.targetDate,
    currentProgress: currentProgress ?? this.currentProgress,
    isCompleted: isCompleted ?? this.isCompleted,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  GoalsTableData copyWithCompanion(GoalsTableCompanion data) {
    return GoalsTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      category: data.category.present ? data.category.value : this.category,
      targetValue:
          data.targetValue.present ? data.targetValue.value : this.targetValue,
      unit: data.unit.present ? data.unit.value : this.unit,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      targetDate:
          data.targetDate.present ? data.targetDate.value : this.targetDate,
      currentProgress:
          data.currentProgress.present
              ? data.currentProgress.value
              : this.currentProgress,
      isCompleted:
          data.isCompleted.present ? data.isCompleted.value : this.isCompleted,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GoalsTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('category: $category, ')
          ..write('targetValue: $targetValue, ')
          ..write('unit: $unit, ')
          ..write('startDate: $startDate, ')
          ..write('targetDate: $targetDate, ')
          ..write('currentProgress: $currentProgress, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    category,
    targetValue,
    unit,
    startDate,
    targetDate,
    currentProgress,
    isCompleted,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoalsTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.category == this.category &&
          other.targetValue == this.targetValue &&
          other.unit == this.unit &&
          other.startDate == this.startDate &&
          other.targetDate == this.targetDate &&
          other.currentProgress == this.currentProgress &&
          other.isCompleted == this.isCompleted &&
          other.syncStatus == this.syncStatus);
}

class GoalsTableCompanion extends UpdateCompanion<GoalsTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> category;
  final Value<double> targetValue;
  final Value<String> unit;
  final Value<DateTime> startDate;
  final Value<DateTime?> targetDate;
  final Value<double> currentProgress;
  final Value<bool> isCompleted;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const GoalsTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.category = const Value.absent(),
    this.targetValue = const Value.absent(),
    this.unit = const Value.absent(),
    this.startDate = const Value.absent(),
    this.targetDate = const Value.absent(),
    this.currentProgress = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GoalsTableCompanion.insert({
    required String id,
    required String userId,
    required String category,
    required double targetValue,
    required String unit,
    required DateTime startDate,
    this.targetDate = const Value.absent(),
    this.currentProgress = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       category = Value(category),
       targetValue = Value(targetValue),
       unit = Value(unit),
       startDate = Value(startDate);
  static Insertable<GoalsTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? category,
    Expression<double>? targetValue,
    Expression<String>? unit,
    Expression<DateTime>? startDate,
    Expression<DateTime>? targetDate,
    Expression<double>? currentProgress,
    Expression<bool>? isCompleted,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (category != null) 'category': category,
      if (targetValue != null) 'target_value': targetValue,
      if (unit != null) 'unit': unit,
      if (startDate != null) 'start_date': startDate,
      if (targetDate != null) 'target_date': targetDate,
      if (currentProgress != null) 'current_progress': currentProgress,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GoalsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? category,
    Value<double>? targetValue,
    Value<String>? unit,
    Value<DateTime>? startDate,
    Value<DateTime?>? targetDate,
    Value<double>? currentProgress,
    Value<bool>? isCompleted,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return GoalsTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      category: category ?? this.category,
      targetValue: targetValue ?? this.targetValue,
      unit: unit ?? this.unit,
      startDate: startDate ?? this.startDate,
      targetDate: targetDate ?? this.targetDate,
      currentProgress: currentProgress ?? this.currentProgress,
      isCompleted: isCompleted ?? this.isCompleted,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (targetValue.present) {
      map['target_value'] = Variable<double>(targetValue.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (targetDate.present) {
      map['target_date'] = Variable<DateTime>(targetDate.value);
    }
    if (currentProgress.present) {
      map['current_progress'] = Variable<double>(currentProgress.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalsTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('category: $category, ')
          ..write('targetValue: $targetValue, ')
          ..write('unit: $unit, ')
          ..write('startDate: $startDate, ')
          ..write('targetDate: $targetDate, ')
          ..write('currentProgress: $currentProgress, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RemindersTableTable extends RemindersTable
    with TableInfo<$RemindersTableTable, RemindersTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RemindersTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scheduledTimeMeta = const VerificationMeta(
    'scheduledTime',
  );
  @override
  late final GeneratedColumn<DateTime> scheduledTime =
      GeneratedColumn<DateTime>(
        'scheduled_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _recurringTypeMeta = const VerificationMeta(
    'recurringType',
  );
  @override
  late final GeneratedColumn<String> recurringType = GeneratedColumn<String>(
    'recurring_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('once'),
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    title,
    body,
    scheduledTime,
    recurringType,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reminders_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<RemindersTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('scheduled_time')) {
      context.handle(
        _scheduledTimeMeta,
        scheduledTime.isAcceptableOrUnknown(
          data['scheduled_time']!,
          _scheduledTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_scheduledTimeMeta);
    }
    if (data.containsKey('recurring_type')) {
      context.handle(
        _recurringTypeMeta,
        recurringType.isAcceptableOrUnknown(
          data['recurring_type']!,
          _recurringTypeMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RemindersTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RemindersTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      body:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}body'],
          )!,
      scheduledTime:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}scheduled_time'],
          )!,
      recurringType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}recurring_type'],
          )!,
      isActive:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_active'],
          )!,
    );
  }

  @override
  $RemindersTableTable createAlias(String alias) {
    return $RemindersTableTable(attachedDatabase, alias);
  }
}

class RemindersTableData extends DataClass
    implements Insertable<RemindersTableData> {
  final String id;
  final String userId;
  final String title;
  final String body;
  final DateTime scheduledTime;
  final String recurringType;
  final bool isActive;
  const RemindersTableData({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
    required this.scheduledTime,
    required this.recurringType,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    map['scheduled_time'] = Variable<DateTime>(scheduledTime);
    map['recurring_type'] = Variable<String>(recurringType);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  RemindersTableCompanion toCompanion(bool nullToAbsent) {
    return RemindersTableCompanion(
      id: Value(id),
      userId: Value(userId),
      title: Value(title),
      body: Value(body),
      scheduledTime: Value(scheduledTime),
      recurringType: Value(recurringType),
      isActive: Value(isActive),
    );
  }

  factory RemindersTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RemindersTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      scheduledTime: serializer.fromJson<DateTime>(json['scheduledTime']),
      recurringType: serializer.fromJson<String>(json['recurringType']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'scheduledTime': serializer.toJson<DateTime>(scheduledTime),
      'recurringType': serializer.toJson<String>(recurringType),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  RemindersTableData copyWith({
    String? id,
    String? userId,
    String? title,
    String? body,
    DateTime? scheduledTime,
    String? recurringType,
    bool? isActive,
  }) => RemindersTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    title: title ?? this.title,
    body: body ?? this.body,
    scheduledTime: scheduledTime ?? this.scheduledTime,
    recurringType: recurringType ?? this.recurringType,
    isActive: isActive ?? this.isActive,
  );
  RemindersTableData copyWithCompanion(RemindersTableCompanion data) {
    return RemindersTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      title: data.title.present ? data.title.value : this.title,
      body: data.body.present ? data.body.value : this.body,
      scheduledTime:
          data.scheduledTime.present
              ? data.scheduledTime.value
              : this.scheduledTime,
      recurringType:
          data.recurringType.present
              ? data.recurringType.value
              : this.recurringType,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RemindersTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('scheduledTime: $scheduledTime, ')
          ..write('recurringType: $recurringType, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    title,
    body,
    scheduledTime,
    recurringType,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RemindersTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.body == this.body &&
          other.scheduledTime == this.scheduledTime &&
          other.recurringType == this.recurringType &&
          other.isActive == this.isActive);
}

class RemindersTableCompanion extends UpdateCompanion<RemindersTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> title;
  final Value<String> body;
  final Value<DateTime> scheduledTime;
  final Value<String> recurringType;
  final Value<bool> isActive;
  final Value<int> rowid;
  const RemindersTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.scheduledTime = const Value.absent(),
    this.recurringType = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RemindersTableCompanion.insert({
    required String id,
    required String userId,
    required String title,
    required String body,
    required DateTime scheduledTime,
    this.recurringType = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       title = Value(title),
       body = Value(body),
       scheduledTime = Value(scheduledTime);
  static Insertable<RemindersTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? title,
    Expression<String>? body,
    Expression<DateTime>? scheduledTime,
    Expression<String>? recurringType,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (scheduledTime != null) 'scheduled_time': scheduledTime,
      if (recurringType != null) 'recurring_type': recurringType,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RemindersTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? title,
    Value<String>? body,
    Value<DateTime>? scheduledTime,
    Value<String>? recurringType,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return RemindersTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      recurringType: recurringType ?? this.recurringType,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (scheduledTime.present) {
      map['scheduled_time'] = Variable<DateTime>(scheduledTime.value);
    }
    if (recurringType.present) {
      map['recurring_type'] = Variable<String>(recurringType.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RemindersTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('scheduledTime: $scheduledTime, ')
          ..write('recurringType: $recurringType, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MedicalRecordsTableTable extends MedicalRecordsTable
    with TableInfo<$MedicalRecordsTableTable, MedicalRecordsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MedicalRecordsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recordDateMeta = const VerificationMeta(
    'recordDate',
  );
  @override
  late final GeneratedColumn<DateTime> recordDate = GeneratedColumn<DateTime>(
    'record_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _providerMeta = const VerificationMeta(
    'provider',
  );
  @override
  late final GeneratedColumn<String> provider = GeneratedColumn<String>(
    'provider',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fileUriMeta = const VerificationMeta(
    'fileUri',
  );
  @override
  late final GeneratedColumn<String> fileUri = GeneratedColumn<String>(
    'file_uri',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    title,
    category,
    recordDate,
    provider,
    fileUri,
    notes,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'medical_records_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MedicalRecordsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('record_date')) {
      context.handle(
        _recordDateMeta,
        recordDate.isAcceptableOrUnknown(data['record_date']!, _recordDateMeta),
      );
    } else if (isInserting) {
      context.missing(_recordDateMeta);
    }
    if (data.containsKey('provider')) {
      context.handle(
        _providerMeta,
        provider.isAcceptableOrUnknown(data['provider']!, _providerMeta),
      );
    }
    if (data.containsKey('file_uri')) {
      context.handle(
        _fileUriMeta,
        fileUri.isAcceptableOrUnknown(data['file_uri']!, _fileUriMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MedicalRecordsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MedicalRecordsTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      category:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}category'],
          )!,
      recordDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}record_date'],
          )!,
      provider: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}provider'],
      ),
      fileUri: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_uri'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $MedicalRecordsTableTable createAlias(String alias) {
    return $MedicalRecordsTableTable(attachedDatabase, alias);
  }
}

class MedicalRecordsTableData extends DataClass
    implements Insertable<MedicalRecordsTableData> {
  final String id;
  final String userId;
  final String title;
  final String category;
  final DateTime recordDate;
  final String? provider;
  final String? fileUri;
  final String? notes;
  final String syncStatus;
  const MedicalRecordsTableData({
    required this.id,
    required this.userId,
    required this.title,
    required this.category,
    required this.recordDate,
    this.provider,
    this.fileUri,
    this.notes,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['title'] = Variable<String>(title);
    map['category'] = Variable<String>(category);
    map['record_date'] = Variable<DateTime>(recordDate);
    if (!nullToAbsent || provider != null) {
      map['provider'] = Variable<String>(provider);
    }
    if (!nullToAbsent || fileUri != null) {
      map['file_uri'] = Variable<String>(fileUri);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  MedicalRecordsTableCompanion toCompanion(bool nullToAbsent) {
    return MedicalRecordsTableCompanion(
      id: Value(id),
      userId: Value(userId),
      title: Value(title),
      category: Value(category),
      recordDate: Value(recordDate),
      provider:
          provider == null && nullToAbsent
              ? const Value.absent()
              : Value(provider),
      fileUri:
          fileUri == null && nullToAbsent
              ? const Value.absent()
              : Value(fileUri),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      syncStatus: Value(syncStatus),
    );
  }

  factory MedicalRecordsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MedicalRecordsTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<String>(json['category']),
      recordDate: serializer.fromJson<DateTime>(json['recordDate']),
      provider: serializer.fromJson<String?>(json['provider']),
      fileUri: serializer.fromJson<String?>(json['fileUri']),
      notes: serializer.fromJson<String?>(json['notes']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<String>(category),
      'recordDate': serializer.toJson<DateTime>(recordDate),
      'provider': serializer.toJson<String?>(provider),
      'fileUri': serializer.toJson<String?>(fileUri),
      'notes': serializer.toJson<String?>(notes),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  MedicalRecordsTableData copyWith({
    String? id,
    String? userId,
    String? title,
    String? category,
    DateTime? recordDate,
    Value<String?> provider = const Value.absent(),
    Value<String?> fileUri = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    String? syncStatus,
  }) => MedicalRecordsTableData(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    title: title ?? this.title,
    category: category ?? this.category,
    recordDate: recordDate ?? this.recordDate,
    provider: provider.present ? provider.value : this.provider,
    fileUri: fileUri.present ? fileUri.value : this.fileUri,
    notes: notes.present ? notes.value : this.notes,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  MedicalRecordsTableData copyWithCompanion(MedicalRecordsTableCompanion data) {
    return MedicalRecordsTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      title: data.title.present ? data.title.value : this.title,
      category: data.category.present ? data.category.value : this.category,
      recordDate:
          data.recordDate.present ? data.recordDate.value : this.recordDate,
      provider: data.provider.present ? data.provider.value : this.provider,
      fileUri: data.fileUri.present ? data.fileUri.value : this.fileUri,
      notes: data.notes.present ? data.notes.value : this.notes,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MedicalRecordsTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('recordDate: $recordDate, ')
          ..write('provider: $provider, ')
          ..write('fileUri: $fileUri, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    userId,
    title,
    category,
    recordDate,
    provider,
    fileUri,
    notes,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MedicalRecordsTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.category == this.category &&
          other.recordDate == this.recordDate &&
          other.provider == this.provider &&
          other.fileUri == this.fileUri &&
          other.notes == this.notes &&
          other.syncStatus == this.syncStatus);
}

class MedicalRecordsTableCompanion
    extends UpdateCompanion<MedicalRecordsTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> title;
  final Value<String> category;
  final Value<DateTime> recordDate;
  final Value<String?> provider;
  final Value<String?> fileUri;
  final Value<String?> notes;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const MedicalRecordsTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.recordDate = const Value.absent(),
    this.provider = const Value.absent(),
    this.fileUri = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MedicalRecordsTableCompanion.insert({
    required String id,
    required String userId,
    required String title,
    required String category,
    required DateTime recordDate,
    this.provider = const Value.absent(),
    this.fileUri = const Value.absent(),
    this.notes = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       title = Value(title),
       category = Value(category),
       recordDate = Value(recordDate);
  static Insertable<MedicalRecordsTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? title,
    Expression<String>? category,
    Expression<DateTime>? recordDate,
    Expression<String>? provider,
    Expression<String>? fileUri,
    Expression<String>? notes,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (recordDate != null) 'record_date': recordDate,
      if (provider != null) 'provider': provider,
      if (fileUri != null) 'file_uri': fileUri,
      if (notes != null) 'notes': notes,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MedicalRecordsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? title,
    Value<String>? category,
    Value<DateTime>? recordDate,
    Value<String?>? provider,
    Value<String?>? fileUri,
    Value<String?>? notes,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return MedicalRecordsTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      category: category ?? this.category,
      recordDate: recordDate ?? this.recordDate,
      provider: provider ?? this.provider,
      fileUri: fileUri ?? this.fileUri,
      notes: notes ?? this.notes,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (recordDate.present) {
      map['record_date'] = Variable<DateTime>(recordDate.value);
    }
    if (provider.present) {
      map['provider'] = Variable<String>(provider.value);
    }
    if (fileUri.present) {
      map['file_uri'] = Variable<String>(fileUri.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MedicalRecordsTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('recordDate: $recordDate, ')
          ..write('provider: $provider, ')
          ..write('fileUri: $fileUri, ')
          ..write('notes: $notes, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTableTable usersTable = $UsersTableTable(this);
  late final $HealthMeasurementsTableTable healthMeasurementsTable =
      $HealthMeasurementsTableTable(this);
  late final $SemenAnalysisTableTable semenAnalysisTable =
      $SemenAnalysisTableTable(this);
  late final $HormonesTableTable hormonesTable = $HormonesTableTable(this);
  late final $ReproductiveLifestylesTableTable reproductiveLifestylesTable =
      $ReproductiveLifestylesTableTable(this);
  late final $FemaleCycleTableTable femaleCycleTable = $FemaleCycleTableTable(
    this,
  );
  late final $MedicationsTableTable medicationsTable = $MedicationsTableTable(
    this,
  );
  late final $GoalsTableTable goalsTable = $GoalsTableTable(this);
  late final $RemindersTableTable remindersTable = $RemindersTableTable(this);
  late final $MedicalRecordsTableTable medicalRecordsTable =
      $MedicalRecordsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    usersTable,
    healthMeasurementsTable,
    semenAnalysisTable,
    hormonesTable,
    reproductiveLifestylesTable,
    femaleCycleTable,
    medicationsTable,
    goalsTable,
    remindersTable,
    medicalRecordsTable,
  ];
}

typedef $$UsersTableTableCreateCompanionBuilder =
    UsersTableCompanion Function({
      required String id,
      required String email,
      Value<String?> name,
      Value<String> biologicalSex,
      Value<DateTime?> dateOfBirth,
      Value<double?> heightCm,
      Value<double?> weightKg,
      Value<String> activityLevel,
      Value<String> preferredUnits,
      Value<String> timezone,
      Value<bool> isBiometricEnabled,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$UsersTableTableUpdateCompanionBuilder =
    UsersTableCompanion Function({
      Value<String> id,
      Value<String> email,
      Value<String?> name,
      Value<String> biologicalSex,
      Value<DateTime?> dateOfBirth,
      Value<double?> heightCm,
      Value<double?> weightKg,
      Value<String> activityLevel,
      Value<String> preferredUnits,
      Value<String> timezone,
      Value<bool> isBiometricEnabled,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$UsersTableTableFilterComposer
    extends Composer<_$AppDatabase, $UsersTableTable> {
  $$UsersTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get biologicalSex => $composableBuilder(
    column: $table.biologicalSex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dateOfBirth => $composableBuilder(
    column: $table.dateOfBirth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get heightCm => $composableBuilder(
    column: $table.heightCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get activityLevel => $composableBuilder(
    column: $table.activityLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get preferredUnits => $composableBuilder(
    column: $table.preferredUnits,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timezone => $composableBuilder(
    column: $table.timezone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isBiometricEnabled => $composableBuilder(
    column: $table.isBiometricEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UsersTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTableTable> {
  $$UsersTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get biologicalSex => $composableBuilder(
    column: $table.biologicalSex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dateOfBirth => $composableBuilder(
    column: $table.dateOfBirth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get heightCm => $composableBuilder(
    column: $table.heightCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get activityLevel => $composableBuilder(
    column: $table.activityLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get preferredUnits => $composableBuilder(
    column: $table.preferredUnits,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timezone => $composableBuilder(
    column: $table.timezone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isBiometricEnabled => $composableBuilder(
    column: $table.isBiometricEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTableTable> {
  $$UsersTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get biologicalSex => $composableBuilder(
    column: $table.biologicalSex,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dateOfBirth => $composableBuilder(
    column: $table.dateOfBirth,
    builder: (column) => column,
  );

  GeneratedColumn<double> get heightCm =>
      $composableBuilder(column: $table.heightCm, builder: (column) => column);

  GeneratedColumn<double> get weightKg =>
      $composableBuilder(column: $table.weightKg, builder: (column) => column);

  GeneratedColumn<String> get activityLevel => $composableBuilder(
    column: $table.activityLevel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get preferredUnits => $composableBuilder(
    column: $table.preferredUnits,
    builder: (column) => column,
  );

  GeneratedColumn<String> get timezone =>
      $composableBuilder(column: $table.timezone, builder: (column) => column);

  GeneratedColumn<bool> get isBiometricEnabled => $composableBuilder(
    column: $table.isBiometricEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$UsersTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTableTable,
          UsersTableData,
          $$UsersTableTableFilterComposer,
          $$UsersTableTableOrderingComposer,
          $$UsersTableTableAnnotationComposer,
          $$UsersTableTableCreateCompanionBuilder,
          $$UsersTableTableUpdateCompanionBuilder,
          (
            UsersTableData,
            BaseReferences<_$AppDatabase, $UsersTableTable, UsersTableData>,
          ),
          UsersTableData,
          PrefetchHooks Function()
        > {
  $$UsersTableTableTableManager(_$AppDatabase db, $UsersTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$UsersTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$UsersTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$UsersTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<String> biologicalSex = const Value.absent(),
                Value<DateTime?> dateOfBirth = const Value.absent(),
                Value<double?> heightCm = const Value.absent(),
                Value<double?> weightKg = const Value.absent(),
                Value<String> activityLevel = const Value.absent(),
                Value<String> preferredUnits = const Value.absent(),
                Value<String> timezone = const Value.absent(),
                Value<bool> isBiometricEnabled = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersTableCompanion(
                id: id,
                email: email,
                name: name,
                biologicalSex: biologicalSex,
                dateOfBirth: dateOfBirth,
                heightCm: heightCm,
                weightKg: weightKg,
                activityLevel: activityLevel,
                preferredUnits: preferredUnits,
                timezone: timezone,
                isBiometricEnabled: isBiometricEnabled,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String email,
                Value<String?> name = const Value.absent(),
                Value<String> biologicalSex = const Value.absent(),
                Value<DateTime?> dateOfBirth = const Value.absent(),
                Value<double?> heightCm = const Value.absent(),
                Value<double?> weightKg = const Value.absent(),
                Value<String> activityLevel = const Value.absent(),
                Value<String> preferredUnits = const Value.absent(),
                Value<String> timezone = const Value.absent(),
                Value<bool> isBiometricEnabled = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersTableCompanion.insert(
                id: id,
                email: email,
                name: name,
                biologicalSex: biologicalSex,
                dateOfBirth: dateOfBirth,
                heightCm: heightCm,
                weightKg: weightKg,
                activityLevel: activityLevel,
                preferredUnits: preferredUnits,
                timezone: timezone,
                isBiometricEnabled: isBiometricEnabled,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UsersTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTableTable,
      UsersTableData,
      $$UsersTableTableFilterComposer,
      $$UsersTableTableOrderingComposer,
      $$UsersTableTableAnnotationComposer,
      $$UsersTableTableCreateCompanionBuilder,
      $$UsersTableTableUpdateCompanionBuilder,
      (
        UsersTableData,
        BaseReferences<_$AppDatabase, $UsersTableTable, UsersTableData>,
      ),
      UsersTableData,
      PrefetchHooks Function()
    >;
typedef $$HealthMeasurementsTableTableCreateCompanionBuilder =
    HealthMeasurementsTableCompanion Function({
      required String id,
      required String userId,
      required String type,
      required double value,
      required String unit,
      required DateTime timestamp,
      Value<String> source,
      Value<String?> sourceId,
      Value<String?> notes,
      Value<double?> originalValue,
      Value<bool> isDeleted,
      Value<String> syncStatus,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$HealthMeasurementsTableTableUpdateCompanionBuilder =
    HealthMeasurementsTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> type,
      Value<double> value,
      Value<String> unit,
      Value<DateTime> timestamp,
      Value<String> source,
      Value<String?> sourceId,
      Value<String?> notes,
      Value<double?> originalValue,
      Value<bool> isDeleted,
      Value<String> syncStatus,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$HealthMeasurementsTableTableFilterComposer
    extends Composer<_$AppDatabase, $HealthMeasurementsTableTable> {
  $$HealthMeasurementsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get originalValue => $composableBuilder(
    column: $table.originalValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HealthMeasurementsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HealthMeasurementsTableTable> {
  $$HealthMeasurementsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get originalValue => $composableBuilder(
    column: $table.originalValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HealthMeasurementsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HealthMeasurementsTableTable> {
  $$HealthMeasurementsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<double> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<String> get sourceId =>
      $composableBuilder(column: $table.sourceId, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<double> get originalValue => $composableBuilder(
    column: $table.originalValue,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$HealthMeasurementsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HealthMeasurementsTableTable,
          HealthMeasurementsTableData,
          $$HealthMeasurementsTableTableFilterComposer,
          $$HealthMeasurementsTableTableOrderingComposer,
          $$HealthMeasurementsTableTableAnnotationComposer,
          $$HealthMeasurementsTableTableCreateCompanionBuilder,
          $$HealthMeasurementsTableTableUpdateCompanionBuilder,
          (
            HealthMeasurementsTableData,
            BaseReferences<
              _$AppDatabase,
              $HealthMeasurementsTableTable,
              HealthMeasurementsTableData
            >,
          ),
          HealthMeasurementsTableData,
          PrefetchHooks Function()
        > {
  $$HealthMeasurementsTableTableTableManager(
    _$AppDatabase db,
    $HealthMeasurementsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$HealthMeasurementsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$HealthMeasurementsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$HealthMeasurementsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<double> value = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<DateTime> timestamp = const Value.absent(),
                Value<String> source = const Value.absent(),
                Value<String?> sourceId = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<double?> originalValue = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HealthMeasurementsTableCompanion(
                id: id,
                userId: userId,
                type: type,
                value: value,
                unit: unit,
                timestamp: timestamp,
                source: source,
                sourceId: sourceId,
                notes: notes,
                originalValue: originalValue,
                isDeleted: isDeleted,
                syncStatus: syncStatus,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String type,
                required double value,
                required String unit,
                required DateTime timestamp,
                Value<String> source = const Value.absent(),
                Value<String?> sourceId = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<double?> originalValue = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HealthMeasurementsTableCompanion.insert(
                id: id,
                userId: userId,
                type: type,
                value: value,
                unit: unit,
                timestamp: timestamp,
                source: source,
                sourceId: sourceId,
                notes: notes,
                originalValue: originalValue,
                isDeleted: isDeleted,
                syncStatus: syncStatus,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HealthMeasurementsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HealthMeasurementsTableTable,
      HealthMeasurementsTableData,
      $$HealthMeasurementsTableTableFilterComposer,
      $$HealthMeasurementsTableTableOrderingComposer,
      $$HealthMeasurementsTableTableAnnotationComposer,
      $$HealthMeasurementsTableTableCreateCompanionBuilder,
      $$HealthMeasurementsTableTableUpdateCompanionBuilder,
      (
        HealthMeasurementsTableData,
        BaseReferences<
          _$AppDatabase,
          $HealthMeasurementsTableTable,
          HealthMeasurementsTableData
        >,
      ),
      HealthMeasurementsTableData,
      PrefetchHooks Function()
    >;
typedef $$SemenAnalysisTableTableCreateCompanionBuilder =
    SemenAnalysisTableCompanion Function({
      required String id,
      required String userId,
      required DateTime collectionDate,
      required DateTime analysisDate,
      Value<double?> volumeMl,
      Value<double?> concentrationMPerMl,
      Value<double?> totalCountM,
      Value<double?> progressiveMotilityPct,
      Value<double?> nonProgressiveMotilityPct,
      Value<double?> immotilePct,
      Value<double?> totalMotilityPct,
      Value<double?> morphologyPct,
      Value<double?> vitalityPct,
      Value<double?> ph,
      Value<String?> liquefaction,
      Value<double?> roundCells,
      Value<String?> labName,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$SemenAnalysisTableTableUpdateCompanionBuilder =
    SemenAnalysisTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<DateTime> collectionDate,
      Value<DateTime> analysisDate,
      Value<double?> volumeMl,
      Value<double?> concentrationMPerMl,
      Value<double?> totalCountM,
      Value<double?> progressiveMotilityPct,
      Value<double?> nonProgressiveMotilityPct,
      Value<double?> immotilePct,
      Value<double?> totalMotilityPct,
      Value<double?> morphologyPct,
      Value<double?> vitalityPct,
      Value<double?> ph,
      Value<String?> liquefaction,
      Value<double?> roundCells,
      Value<String?> labName,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$SemenAnalysisTableTableFilterComposer
    extends Composer<_$AppDatabase, $SemenAnalysisTableTable> {
  $$SemenAnalysisTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get collectionDate => $composableBuilder(
    column: $table.collectionDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get analysisDate => $composableBuilder(
    column: $table.analysisDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get volumeMl => $composableBuilder(
    column: $table.volumeMl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get concentrationMPerMl => $composableBuilder(
    column: $table.concentrationMPerMl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalCountM => $composableBuilder(
    column: $table.totalCountM,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get progressiveMotilityPct => $composableBuilder(
    column: $table.progressiveMotilityPct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get nonProgressiveMotilityPct => $composableBuilder(
    column: $table.nonProgressiveMotilityPct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get immotilePct => $composableBuilder(
    column: $table.immotilePct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalMotilityPct => $composableBuilder(
    column: $table.totalMotilityPct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get morphologyPct => $composableBuilder(
    column: $table.morphologyPct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitalityPct => $composableBuilder(
    column: $table.vitalityPct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get ph => $composableBuilder(
    column: $table.ph,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get liquefaction => $composableBuilder(
    column: $table.liquefaction,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get roundCells => $composableBuilder(
    column: $table.roundCells,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get labName => $composableBuilder(
    column: $table.labName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SemenAnalysisTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SemenAnalysisTableTable> {
  $$SemenAnalysisTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get collectionDate => $composableBuilder(
    column: $table.collectionDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get analysisDate => $composableBuilder(
    column: $table.analysisDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get volumeMl => $composableBuilder(
    column: $table.volumeMl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get concentrationMPerMl => $composableBuilder(
    column: $table.concentrationMPerMl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalCountM => $composableBuilder(
    column: $table.totalCountM,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get progressiveMotilityPct => $composableBuilder(
    column: $table.progressiveMotilityPct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get nonProgressiveMotilityPct => $composableBuilder(
    column: $table.nonProgressiveMotilityPct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get immotilePct => $composableBuilder(
    column: $table.immotilePct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalMotilityPct => $composableBuilder(
    column: $table.totalMotilityPct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get morphologyPct => $composableBuilder(
    column: $table.morphologyPct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitalityPct => $composableBuilder(
    column: $table.vitalityPct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get ph => $composableBuilder(
    column: $table.ph,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get liquefaction => $composableBuilder(
    column: $table.liquefaction,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get roundCells => $composableBuilder(
    column: $table.roundCells,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get labName => $composableBuilder(
    column: $table.labName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SemenAnalysisTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SemenAnalysisTableTable> {
  $$SemenAnalysisTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get collectionDate => $composableBuilder(
    column: $table.collectionDate,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get analysisDate => $composableBuilder(
    column: $table.analysisDate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get volumeMl =>
      $composableBuilder(column: $table.volumeMl, builder: (column) => column);

  GeneratedColumn<double> get concentrationMPerMl => $composableBuilder(
    column: $table.concentrationMPerMl,
    builder: (column) => column,
  );

  GeneratedColumn<double> get totalCountM => $composableBuilder(
    column: $table.totalCountM,
    builder: (column) => column,
  );

  GeneratedColumn<double> get progressiveMotilityPct => $composableBuilder(
    column: $table.progressiveMotilityPct,
    builder: (column) => column,
  );

  GeneratedColumn<double> get nonProgressiveMotilityPct => $composableBuilder(
    column: $table.nonProgressiveMotilityPct,
    builder: (column) => column,
  );

  GeneratedColumn<double> get immotilePct => $composableBuilder(
    column: $table.immotilePct,
    builder: (column) => column,
  );

  GeneratedColumn<double> get totalMotilityPct => $composableBuilder(
    column: $table.totalMotilityPct,
    builder: (column) => column,
  );

  GeneratedColumn<double> get morphologyPct => $composableBuilder(
    column: $table.morphologyPct,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitalityPct => $composableBuilder(
    column: $table.vitalityPct,
    builder: (column) => column,
  );

  GeneratedColumn<double> get ph =>
      $composableBuilder(column: $table.ph, builder: (column) => column);

  GeneratedColumn<String> get liquefaction => $composableBuilder(
    column: $table.liquefaction,
    builder: (column) => column,
  );

  GeneratedColumn<double> get roundCells => $composableBuilder(
    column: $table.roundCells,
    builder: (column) => column,
  );

  GeneratedColumn<String> get labName =>
      $composableBuilder(column: $table.labName, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$SemenAnalysisTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SemenAnalysisTableTable,
          SemenAnalysisTableData,
          $$SemenAnalysisTableTableFilterComposer,
          $$SemenAnalysisTableTableOrderingComposer,
          $$SemenAnalysisTableTableAnnotationComposer,
          $$SemenAnalysisTableTableCreateCompanionBuilder,
          $$SemenAnalysisTableTableUpdateCompanionBuilder,
          (
            SemenAnalysisTableData,
            BaseReferences<
              _$AppDatabase,
              $SemenAnalysisTableTable,
              SemenAnalysisTableData
            >,
          ),
          SemenAnalysisTableData,
          PrefetchHooks Function()
        > {
  $$SemenAnalysisTableTableTableManager(
    _$AppDatabase db,
    $SemenAnalysisTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SemenAnalysisTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$SemenAnalysisTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$SemenAnalysisTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<DateTime> collectionDate = const Value.absent(),
                Value<DateTime> analysisDate = const Value.absent(),
                Value<double?> volumeMl = const Value.absent(),
                Value<double?> concentrationMPerMl = const Value.absent(),
                Value<double?> totalCountM = const Value.absent(),
                Value<double?> progressiveMotilityPct = const Value.absent(),
                Value<double?> nonProgressiveMotilityPct = const Value.absent(),
                Value<double?> immotilePct = const Value.absent(),
                Value<double?> totalMotilityPct = const Value.absent(),
                Value<double?> morphologyPct = const Value.absent(),
                Value<double?> vitalityPct = const Value.absent(),
                Value<double?> ph = const Value.absent(),
                Value<String?> liquefaction = const Value.absent(),
                Value<double?> roundCells = const Value.absent(),
                Value<String?> labName = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SemenAnalysisTableCompanion(
                id: id,
                userId: userId,
                collectionDate: collectionDate,
                analysisDate: analysisDate,
                volumeMl: volumeMl,
                concentrationMPerMl: concentrationMPerMl,
                totalCountM: totalCountM,
                progressiveMotilityPct: progressiveMotilityPct,
                nonProgressiveMotilityPct: nonProgressiveMotilityPct,
                immotilePct: immotilePct,
                totalMotilityPct: totalMotilityPct,
                morphologyPct: morphologyPct,
                vitalityPct: vitalityPct,
                ph: ph,
                liquefaction: liquefaction,
                roundCells: roundCells,
                labName: labName,
                notes: notes,
                syncStatus: syncStatus,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required DateTime collectionDate,
                required DateTime analysisDate,
                Value<double?> volumeMl = const Value.absent(),
                Value<double?> concentrationMPerMl = const Value.absent(),
                Value<double?> totalCountM = const Value.absent(),
                Value<double?> progressiveMotilityPct = const Value.absent(),
                Value<double?> nonProgressiveMotilityPct = const Value.absent(),
                Value<double?> immotilePct = const Value.absent(),
                Value<double?> totalMotilityPct = const Value.absent(),
                Value<double?> morphologyPct = const Value.absent(),
                Value<double?> vitalityPct = const Value.absent(),
                Value<double?> ph = const Value.absent(),
                Value<String?> liquefaction = const Value.absent(),
                Value<double?> roundCells = const Value.absent(),
                Value<String?> labName = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SemenAnalysisTableCompanion.insert(
                id: id,
                userId: userId,
                collectionDate: collectionDate,
                analysisDate: analysisDate,
                volumeMl: volumeMl,
                concentrationMPerMl: concentrationMPerMl,
                totalCountM: totalCountM,
                progressiveMotilityPct: progressiveMotilityPct,
                nonProgressiveMotilityPct: nonProgressiveMotilityPct,
                immotilePct: immotilePct,
                totalMotilityPct: totalMotilityPct,
                morphologyPct: morphologyPct,
                vitalityPct: vitalityPct,
                ph: ph,
                liquefaction: liquefaction,
                roundCells: roundCells,
                labName: labName,
                notes: notes,
                syncStatus: syncStatus,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SemenAnalysisTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SemenAnalysisTableTable,
      SemenAnalysisTableData,
      $$SemenAnalysisTableTableFilterComposer,
      $$SemenAnalysisTableTableOrderingComposer,
      $$SemenAnalysisTableTableAnnotationComposer,
      $$SemenAnalysisTableTableCreateCompanionBuilder,
      $$SemenAnalysisTableTableUpdateCompanionBuilder,
      (
        SemenAnalysisTableData,
        BaseReferences<
          _$AppDatabase,
          $SemenAnalysisTableTable,
          SemenAnalysisTableData
        >,
      ),
      SemenAnalysisTableData,
      PrefetchHooks Function()
    >;
typedef $$HormonesTableTableCreateCompanionBuilder =
    HormonesTableCompanion Function({
      required String id,
      required String userId,
      required String testName,
      required double resultValue,
      required String unit,
      Value<double?> refRangeLow,
      Value<double?> refRangeHigh,
      required DateTime collectionDate,
      Value<String?> labName,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$HormonesTableTableUpdateCompanionBuilder =
    HormonesTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> testName,
      Value<double> resultValue,
      Value<String> unit,
      Value<double?> refRangeLow,
      Value<double?> refRangeHigh,
      Value<DateTime> collectionDate,
      Value<String?> labName,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$HormonesTableTableFilterComposer
    extends Composer<_$AppDatabase, $HormonesTableTable> {
  $$HormonesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get testName => $composableBuilder(
    column: $table.testName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get resultValue => $composableBuilder(
    column: $table.resultValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get refRangeLow => $composableBuilder(
    column: $table.refRangeLow,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get refRangeHigh => $composableBuilder(
    column: $table.refRangeHigh,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get collectionDate => $composableBuilder(
    column: $table.collectionDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get labName => $composableBuilder(
    column: $table.labName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HormonesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HormonesTableTable> {
  $$HormonesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get testName => $composableBuilder(
    column: $table.testName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get resultValue => $composableBuilder(
    column: $table.resultValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get refRangeLow => $composableBuilder(
    column: $table.refRangeLow,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get refRangeHigh => $composableBuilder(
    column: $table.refRangeHigh,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get collectionDate => $composableBuilder(
    column: $table.collectionDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get labName => $composableBuilder(
    column: $table.labName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HormonesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HormonesTableTable> {
  $$HormonesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get testName =>
      $composableBuilder(column: $table.testName, builder: (column) => column);

  GeneratedColumn<double> get resultValue => $composableBuilder(
    column: $table.resultValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<double> get refRangeLow => $composableBuilder(
    column: $table.refRangeLow,
    builder: (column) => column,
  );

  GeneratedColumn<double> get refRangeHigh => $composableBuilder(
    column: $table.refRangeHigh,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get collectionDate => $composableBuilder(
    column: $table.collectionDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get labName =>
      $composableBuilder(column: $table.labName, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$HormonesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HormonesTableTable,
          HormonesTableData,
          $$HormonesTableTableFilterComposer,
          $$HormonesTableTableOrderingComposer,
          $$HormonesTableTableAnnotationComposer,
          $$HormonesTableTableCreateCompanionBuilder,
          $$HormonesTableTableUpdateCompanionBuilder,
          (
            HormonesTableData,
            BaseReferences<
              _$AppDatabase,
              $HormonesTableTable,
              HormonesTableData
            >,
          ),
          HormonesTableData,
          PrefetchHooks Function()
        > {
  $$HormonesTableTableTableManager(_$AppDatabase db, $HormonesTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$HormonesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$HormonesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$HormonesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> testName = const Value.absent(),
                Value<double> resultValue = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<double?> refRangeLow = const Value.absent(),
                Value<double?> refRangeHigh = const Value.absent(),
                Value<DateTime> collectionDate = const Value.absent(),
                Value<String?> labName = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HormonesTableCompanion(
                id: id,
                userId: userId,
                testName: testName,
                resultValue: resultValue,
                unit: unit,
                refRangeLow: refRangeLow,
                refRangeHigh: refRangeHigh,
                collectionDate: collectionDate,
                labName: labName,
                notes: notes,
                syncStatus: syncStatus,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String testName,
                required double resultValue,
                required String unit,
                Value<double?> refRangeLow = const Value.absent(),
                Value<double?> refRangeHigh = const Value.absent(),
                required DateTime collectionDate,
                Value<String?> labName = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HormonesTableCompanion.insert(
                id: id,
                userId: userId,
                testName: testName,
                resultValue: resultValue,
                unit: unit,
                refRangeLow: refRangeLow,
                refRangeHigh: refRangeHigh,
                collectionDate: collectionDate,
                labName: labName,
                notes: notes,
                syncStatus: syncStatus,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HormonesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HormonesTableTable,
      HormonesTableData,
      $$HormonesTableTableFilterComposer,
      $$HormonesTableTableOrderingComposer,
      $$HormonesTableTableAnnotationComposer,
      $$HormonesTableTableCreateCompanionBuilder,
      $$HormonesTableTableUpdateCompanionBuilder,
      (
        HormonesTableData,
        BaseReferences<_$AppDatabase, $HormonesTableTable, HormonesTableData>,
      ),
      HormonesTableData,
      PrefetchHooks Function()
    >;
typedef $$ReproductiveLifestylesTableTableCreateCompanionBuilder =
    ReproductiveLifestylesTableCompanion Function({
      required String id,
      required String userId,
      required DateTime date,
      Value<double?> sleepHours,
      Value<int?> exerciseMinutes,
      Value<bool> tobaccoUsed,
      Value<int> alcoholUnits,
      Value<bool> saunaExposed,
      Value<int?> stressLevel,
      Value<bool> illnessOrFever,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$ReproductiveLifestylesTableTableUpdateCompanionBuilder =
    ReproductiveLifestylesTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<DateTime> date,
      Value<double?> sleepHours,
      Value<int?> exerciseMinutes,
      Value<bool> tobaccoUsed,
      Value<int> alcoholUnits,
      Value<bool> saunaExposed,
      Value<int?> stressLevel,
      Value<bool> illnessOrFever,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$ReproductiveLifestylesTableTableFilterComposer
    extends Composer<_$AppDatabase, $ReproductiveLifestylesTableTable> {
  $$ReproductiveLifestylesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sleepHours => $composableBuilder(
    column: $table.sleepHours,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get exerciseMinutes => $composableBuilder(
    column: $table.exerciseMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tobaccoUsed => $composableBuilder(
    column: $table.tobaccoUsed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get alcoholUnits => $composableBuilder(
    column: $table.alcoholUnits,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get saunaExposed => $composableBuilder(
    column: $table.saunaExposed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stressLevel => $composableBuilder(
    column: $table.stressLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get illnessOrFever => $composableBuilder(
    column: $table.illnessOrFever,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ReproductiveLifestylesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ReproductiveLifestylesTableTable> {
  $$ReproductiveLifestylesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sleepHours => $composableBuilder(
    column: $table.sleepHours,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get exerciseMinutes => $composableBuilder(
    column: $table.exerciseMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tobaccoUsed => $composableBuilder(
    column: $table.tobaccoUsed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get alcoholUnits => $composableBuilder(
    column: $table.alcoholUnits,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get saunaExposed => $composableBuilder(
    column: $table.saunaExposed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stressLevel => $composableBuilder(
    column: $table.stressLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get illnessOrFever => $composableBuilder(
    column: $table.illnessOrFever,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReproductiveLifestylesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReproductiveLifestylesTableTable> {
  $$ReproductiveLifestylesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get sleepHours => $composableBuilder(
    column: $table.sleepHours,
    builder: (column) => column,
  );

  GeneratedColumn<int> get exerciseMinutes => $composableBuilder(
    column: $table.exerciseMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get tobaccoUsed => $composableBuilder(
    column: $table.tobaccoUsed,
    builder: (column) => column,
  );

  GeneratedColumn<int> get alcoholUnits => $composableBuilder(
    column: $table.alcoholUnits,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get saunaExposed => $composableBuilder(
    column: $table.saunaExposed,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stressLevel => $composableBuilder(
    column: $table.stressLevel,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get illnessOrFever => $composableBuilder(
    column: $table.illnessOrFever,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$ReproductiveLifestylesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReproductiveLifestylesTableTable,
          ReproductiveLifestylesTableData,
          $$ReproductiveLifestylesTableTableFilterComposer,
          $$ReproductiveLifestylesTableTableOrderingComposer,
          $$ReproductiveLifestylesTableTableAnnotationComposer,
          $$ReproductiveLifestylesTableTableCreateCompanionBuilder,
          $$ReproductiveLifestylesTableTableUpdateCompanionBuilder,
          (
            ReproductiveLifestylesTableData,
            BaseReferences<
              _$AppDatabase,
              $ReproductiveLifestylesTableTable,
              ReproductiveLifestylesTableData
            >,
          ),
          ReproductiveLifestylesTableData,
          PrefetchHooks Function()
        > {
  $$ReproductiveLifestylesTableTableTableManager(
    _$AppDatabase db,
    $ReproductiveLifestylesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ReproductiveLifestylesTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$ReproductiveLifestylesTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$ReproductiveLifestylesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<double?> sleepHours = const Value.absent(),
                Value<int?> exerciseMinutes = const Value.absent(),
                Value<bool> tobaccoUsed = const Value.absent(),
                Value<int> alcoholUnits = const Value.absent(),
                Value<bool> saunaExposed = const Value.absent(),
                Value<int?> stressLevel = const Value.absent(),
                Value<bool> illnessOrFever = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ReproductiveLifestylesTableCompanion(
                id: id,
                userId: userId,
                date: date,
                sleepHours: sleepHours,
                exerciseMinutes: exerciseMinutes,
                tobaccoUsed: tobaccoUsed,
                alcoholUnits: alcoholUnits,
                saunaExposed: saunaExposed,
                stressLevel: stressLevel,
                illnessOrFever: illnessOrFever,
                notes: notes,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required DateTime date,
                Value<double?> sleepHours = const Value.absent(),
                Value<int?> exerciseMinutes = const Value.absent(),
                Value<bool> tobaccoUsed = const Value.absent(),
                Value<int> alcoholUnits = const Value.absent(),
                Value<bool> saunaExposed = const Value.absent(),
                Value<int?> stressLevel = const Value.absent(),
                Value<bool> illnessOrFever = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ReproductiveLifestylesTableCompanion.insert(
                id: id,
                userId: userId,
                date: date,
                sleepHours: sleepHours,
                exerciseMinutes: exerciseMinutes,
                tobaccoUsed: tobaccoUsed,
                alcoholUnits: alcoholUnits,
                saunaExposed: saunaExposed,
                stressLevel: stressLevel,
                illnessOrFever: illnessOrFever,
                notes: notes,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ReproductiveLifestylesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReproductiveLifestylesTableTable,
      ReproductiveLifestylesTableData,
      $$ReproductiveLifestylesTableTableFilterComposer,
      $$ReproductiveLifestylesTableTableOrderingComposer,
      $$ReproductiveLifestylesTableTableAnnotationComposer,
      $$ReproductiveLifestylesTableTableCreateCompanionBuilder,
      $$ReproductiveLifestylesTableTableUpdateCompanionBuilder,
      (
        ReproductiveLifestylesTableData,
        BaseReferences<
          _$AppDatabase,
          $ReproductiveLifestylesTableTable,
          ReproductiveLifestylesTableData
        >,
      ),
      ReproductiveLifestylesTableData,
      PrefetchHooks Function()
    >;
typedef $$FemaleCycleTableTableCreateCompanionBuilder =
    FemaleCycleTableCompanion Function({
      required String id,
      required String userId,
      required DateTime periodStartDate,
      Value<DateTime?> periodEndDate,
      Value<int> cycleLengthDays,
      Value<int> periodLengthDays,
      Value<String?> symptoms,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$FemaleCycleTableTableUpdateCompanionBuilder =
    FemaleCycleTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<DateTime> periodStartDate,
      Value<DateTime?> periodEndDate,
      Value<int> cycleLengthDays,
      Value<int> periodLengthDays,
      Value<String?> symptoms,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$FemaleCycleTableTableFilterComposer
    extends Composer<_$AppDatabase, $FemaleCycleTableTable> {
  $$FemaleCycleTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get periodStartDate => $composableBuilder(
    column: $table.periodStartDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get periodEndDate => $composableBuilder(
    column: $table.periodEndDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cycleLengthDays => $composableBuilder(
    column: $table.cycleLengthDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get periodLengthDays => $composableBuilder(
    column: $table.periodLengthDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symptoms => $composableBuilder(
    column: $table.symptoms,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FemaleCycleTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FemaleCycleTableTable> {
  $$FemaleCycleTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get periodStartDate => $composableBuilder(
    column: $table.periodStartDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get periodEndDate => $composableBuilder(
    column: $table.periodEndDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cycleLengthDays => $composableBuilder(
    column: $table.cycleLengthDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get periodLengthDays => $composableBuilder(
    column: $table.periodLengthDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symptoms => $composableBuilder(
    column: $table.symptoms,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FemaleCycleTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FemaleCycleTableTable> {
  $$FemaleCycleTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get periodStartDate => $composableBuilder(
    column: $table.periodStartDate,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get periodEndDate => $composableBuilder(
    column: $table.periodEndDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cycleLengthDays => $composableBuilder(
    column: $table.cycleLengthDays,
    builder: (column) => column,
  );

  GeneratedColumn<int> get periodLengthDays => $composableBuilder(
    column: $table.periodLengthDays,
    builder: (column) => column,
  );

  GeneratedColumn<String> get symptoms =>
      $composableBuilder(column: $table.symptoms, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$FemaleCycleTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FemaleCycleTableTable,
          FemaleCycleTableData,
          $$FemaleCycleTableTableFilterComposer,
          $$FemaleCycleTableTableOrderingComposer,
          $$FemaleCycleTableTableAnnotationComposer,
          $$FemaleCycleTableTableCreateCompanionBuilder,
          $$FemaleCycleTableTableUpdateCompanionBuilder,
          (
            FemaleCycleTableData,
            BaseReferences<
              _$AppDatabase,
              $FemaleCycleTableTable,
              FemaleCycleTableData
            >,
          ),
          FemaleCycleTableData,
          PrefetchHooks Function()
        > {
  $$FemaleCycleTableTableTableManager(
    _$AppDatabase db,
    $FemaleCycleTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$FemaleCycleTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$FemaleCycleTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$FemaleCycleTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<DateTime> periodStartDate = const Value.absent(),
                Value<DateTime?> periodEndDate = const Value.absent(),
                Value<int> cycleLengthDays = const Value.absent(),
                Value<int> periodLengthDays = const Value.absent(),
                Value<String?> symptoms = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FemaleCycleTableCompanion(
                id: id,
                userId: userId,
                periodStartDate: periodStartDate,
                periodEndDate: periodEndDate,
                cycleLengthDays: cycleLengthDays,
                periodLengthDays: periodLengthDays,
                symptoms: symptoms,
                notes: notes,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required DateTime periodStartDate,
                Value<DateTime?> periodEndDate = const Value.absent(),
                Value<int> cycleLengthDays = const Value.absent(),
                Value<int> periodLengthDays = const Value.absent(),
                Value<String?> symptoms = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FemaleCycleTableCompanion.insert(
                id: id,
                userId: userId,
                periodStartDate: periodStartDate,
                periodEndDate: periodEndDate,
                cycleLengthDays: cycleLengthDays,
                periodLengthDays: periodLengthDays,
                symptoms: symptoms,
                notes: notes,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FemaleCycleTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FemaleCycleTableTable,
      FemaleCycleTableData,
      $$FemaleCycleTableTableFilterComposer,
      $$FemaleCycleTableTableOrderingComposer,
      $$FemaleCycleTableTableAnnotationComposer,
      $$FemaleCycleTableTableCreateCompanionBuilder,
      $$FemaleCycleTableTableUpdateCompanionBuilder,
      (
        FemaleCycleTableData,
        BaseReferences<
          _$AppDatabase,
          $FemaleCycleTableTable,
          FemaleCycleTableData
        >,
      ),
      FemaleCycleTableData,
      PrefetchHooks Function()
    >;
typedef $$MedicationsTableTableCreateCompanionBuilder =
    MedicationsTableCompanion Function({
      required String id,
      required String userId,
      required String name,
      required double dosage,
      required String unit,
      required String frequency,
      required DateTime startDate,
      Value<DateTime?> endDate,
      Value<String?> instructions,
      Value<bool> isReminderActive,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$MedicationsTableTableUpdateCompanionBuilder =
    MedicationsTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> name,
      Value<double> dosage,
      Value<String> unit,
      Value<String> frequency,
      Value<DateTime> startDate,
      Value<DateTime?> endDate,
      Value<String?> instructions,
      Value<bool> isReminderActive,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$MedicationsTableTableFilterComposer
    extends Composer<_$AppDatabase, $MedicationsTableTable> {
  $$MedicationsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dosage => $composableBuilder(
    column: $table.dosage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get frequency => $composableBuilder(
    column: $table.frequency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instructions => $composableBuilder(
    column: $table.instructions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isReminderActive => $composableBuilder(
    column: $table.isReminderActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MedicationsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MedicationsTableTable> {
  $$MedicationsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dosage => $composableBuilder(
    column: $table.dosage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get frequency => $composableBuilder(
    column: $table.frequency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instructions => $composableBuilder(
    column: $table.instructions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isReminderActive => $composableBuilder(
    column: $table.isReminderActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MedicationsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MedicationsTableTable> {
  $$MedicationsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get dosage =>
      $composableBuilder(column: $table.dosage, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get frequency =>
      $composableBuilder(column: $table.frequency, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<String> get instructions => $composableBuilder(
    column: $table.instructions,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isReminderActive => $composableBuilder(
    column: $table.isReminderActive,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$MedicationsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MedicationsTableTable,
          MedicationsTableData,
          $$MedicationsTableTableFilterComposer,
          $$MedicationsTableTableOrderingComposer,
          $$MedicationsTableTableAnnotationComposer,
          $$MedicationsTableTableCreateCompanionBuilder,
          $$MedicationsTableTableUpdateCompanionBuilder,
          (
            MedicationsTableData,
            BaseReferences<
              _$AppDatabase,
              $MedicationsTableTable,
              MedicationsTableData
            >,
          ),
          MedicationsTableData,
          PrefetchHooks Function()
        > {
  $$MedicationsTableTableTableManager(
    _$AppDatabase db,
    $MedicationsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$MedicationsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$MedicationsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$MedicationsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> dosage = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<String> frequency = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime?> endDate = const Value.absent(),
                Value<String?> instructions = const Value.absent(),
                Value<bool> isReminderActive = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MedicationsTableCompanion(
                id: id,
                userId: userId,
                name: name,
                dosage: dosage,
                unit: unit,
                frequency: frequency,
                startDate: startDate,
                endDate: endDate,
                instructions: instructions,
                isReminderActive: isReminderActive,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String name,
                required double dosage,
                required String unit,
                required String frequency,
                required DateTime startDate,
                Value<DateTime?> endDate = const Value.absent(),
                Value<String?> instructions = const Value.absent(),
                Value<bool> isReminderActive = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MedicationsTableCompanion.insert(
                id: id,
                userId: userId,
                name: name,
                dosage: dosage,
                unit: unit,
                frequency: frequency,
                startDate: startDate,
                endDate: endDate,
                instructions: instructions,
                isReminderActive: isReminderActive,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MedicationsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MedicationsTableTable,
      MedicationsTableData,
      $$MedicationsTableTableFilterComposer,
      $$MedicationsTableTableOrderingComposer,
      $$MedicationsTableTableAnnotationComposer,
      $$MedicationsTableTableCreateCompanionBuilder,
      $$MedicationsTableTableUpdateCompanionBuilder,
      (
        MedicationsTableData,
        BaseReferences<
          _$AppDatabase,
          $MedicationsTableTable,
          MedicationsTableData
        >,
      ),
      MedicationsTableData,
      PrefetchHooks Function()
    >;
typedef $$GoalsTableTableCreateCompanionBuilder =
    GoalsTableCompanion Function({
      required String id,
      required String userId,
      required String category,
      required double targetValue,
      required String unit,
      required DateTime startDate,
      Value<DateTime?> targetDate,
      Value<double> currentProgress,
      Value<bool> isCompleted,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$GoalsTableTableUpdateCompanionBuilder =
    GoalsTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> category,
      Value<double> targetValue,
      Value<String> unit,
      Value<DateTime> startDate,
      Value<DateTime?> targetDate,
      Value<double> currentProgress,
      Value<bool> isCompleted,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$GoalsTableTableFilterComposer
    extends Composer<_$AppDatabase, $GoalsTableTable> {
  $$GoalsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get targetDate => $composableBuilder(
    column: $table.targetDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get currentProgress => $composableBuilder(
    column: $table.currentProgress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCompleted => $composableBuilder(
    column: $table.isCompleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GoalsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalsTableTable> {
  $$GoalsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get targetDate => $composableBuilder(
    column: $table.targetDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get currentProgress => $composableBuilder(
    column: $table.currentProgress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCompleted => $composableBuilder(
    column: $table.isCompleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GoalsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalsTableTable> {
  $$GoalsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get targetDate => $composableBuilder(
    column: $table.targetDate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get currentProgress => $composableBuilder(
    column: $table.currentProgress,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isCompleted => $composableBuilder(
    column: $table.isCompleted,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$GoalsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalsTableTable,
          GoalsTableData,
          $$GoalsTableTableFilterComposer,
          $$GoalsTableTableOrderingComposer,
          $$GoalsTableTableAnnotationComposer,
          $$GoalsTableTableCreateCompanionBuilder,
          $$GoalsTableTableUpdateCompanionBuilder,
          (
            GoalsTableData,
            BaseReferences<_$AppDatabase, $GoalsTableTable, GoalsTableData>,
          ),
          GoalsTableData,
          PrefetchHooks Function()
        > {
  $$GoalsTableTableTableManager(_$AppDatabase db, $GoalsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$GoalsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$GoalsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$GoalsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<double> targetValue = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime?> targetDate = const Value.absent(),
                Value<double> currentProgress = const Value.absent(),
                Value<bool> isCompleted = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalsTableCompanion(
                id: id,
                userId: userId,
                category: category,
                targetValue: targetValue,
                unit: unit,
                startDate: startDate,
                targetDate: targetDate,
                currentProgress: currentProgress,
                isCompleted: isCompleted,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String category,
                required double targetValue,
                required String unit,
                required DateTime startDate,
                Value<DateTime?> targetDate = const Value.absent(),
                Value<double> currentProgress = const Value.absent(),
                Value<bool> isCompleted = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalsTableCompanion.insert(
                id: id,
                userId: userId,
                category: category,
                targetValue: targetValue,
                unit: unit,
                startDate: startDate,
                targetDate: targetDate,
                currentProgress: currentProgress,
                isCompleted: isCompleted,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GoalsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalsTableTable,
      GoalsTableData,
      $$GoalsTableTableFilterComposer,
      $$GoalsTableTableOrderingComposer,
      $$GoalsTableTableAnnotationComposer,
      $$GoalsTableTableCreateCompanionBuilder,
      $$GoalsTableTableUpdateCompanionBuilder,
      (
        GoalsTableData,
        BaseReferences<_$AppDatabase, $GoalsTableTable, GoalsTableData>,
      ),
      GoalsTableData,
      PrefetchHooks Function()
    >;
typedef $$RemindersTableTableCreateCompanionBuilder =
    RemindersTableCompanion Function({
      required String id,
      required String userId,
      required String title,
      required String body,
      required DateTime scheduledTime,
      Value<String> recurringType,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$RemindersTableTableUpdateCompanionBuilder =
    RemindersTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> title,
      Value<String> body,
      Value<DateTime> scheduledTime,
      Value<String> recurringType,
      Value<bool> isActive,
      Value<int> rowid,
    });

class $$RemindersTableTableFilterComposer
    extends Composer<_$AppDatabase, $RemindersTableTable> {
  $$RemindersTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get scheduledTime => $composableBuilder(
    column: $table.scheduledTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recurringType => $composableBuilder(
    column: $table.recurringType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RemindersTableTableOrderingComposer
    extends Composer<_$AppDatabase, $RemindersTableTable> {
  $$RemindersTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get scheduledTime => $composableBuilder(
    column: $table.scheduledTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recurringType => $composableBuilder(
    column: $table.recurringType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RemindersTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $RemindersTableTable> {
  $$RemindersTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<DateTime> get scheduledTime => $composableBuilder(
    column: $table.scheduledTime,
    builder: (column) => column,
  );

  GeneratedColumn<String> get recurringType => $composableBuilder(
    column: $table.recurringType,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$RemindersTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RemindersTableTable,
          RemindersTableData,
          $$RemindersTableTableFilterComposer,
          $$RemindersTableTableOrderingComposer,
          $$RemindersTableTableAnnotationComposer,
          $$RemindersTableTableCreateCompanionBuilder,
          $$RemindersTableTableUpdateCompanionBuilder,
          (
            RemindersTableData,
            BaseReferences<
              _$AppDatabase,
              $RemindersTableTable,
              RemindersTableData
            >,
          ),
          RemindersTableData,
          PrefetchHooks Function()
        > {
  $$RemindersTableTableTableManager(
    _$AppDatabase db,
    $RemindersTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$RemindersTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$RemindersTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$RemindersTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<DateTime> scheduledTime = const Value.absent(),
                Value<String> recurringType = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RemindersTableCompanion(
                id: id,
                userId: userId,
                title: title,
                body: body,
                scheduledTime: scheduledTime,
                recurringType: recurringType,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String title,
                required String body,
                required DateTime scheduledTime,
                Value<String> recurringType = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RemindersTableCompanion.insert(
                id: id,
                userId: userId,
                title: title,
                body: body,
                scheduledTime: scheduledTime,
                recurringType: recurringType,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RemindersTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RemindersTableTable,
      RemindersTableData,
      $$RemindersTableTableFilterComposer,
      $$RemindersTableTableOrderingComposer,
      $$RemindersTableTableAnnotationComposer,
      $$RemindersTableTableCreateCompanionBuilder,
      $$RemindersTableTableUpdateCompanionBuilder,
      (
        RemindersTableData,
        BaseReferences<_$AppDatabase, $RemindersTableTable, RemindersTableData>,
      ),
      RemindersTableData,
      PrefetchHooks Function()
    >;
typedef $$MedicalRecordsTableTableCreateCompanionBuilder =
    MedicalRecordsTableCompanion Function({
      required String id,
      required String userId,
      required String title,
      required String category,
      required DateTime recordDate,
      Value<String?> provider,
      Value<String?> fileUri,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$MedicalRecordsTableTableUpdateCompanionBuilder =
    MedicalRecordsTableCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> title,
      Value<String> category,
      Value<DateTime> recordDate,
      Value<String?> provider,
      Value<String?> fileUri,
      Value<String?> notes,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$MedicalRecordsTableTableFilterComposer
    extends Composer<_$AppDatabase, $MedicalRecordsTableTable> {
  $$MedicalRecordsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get recordDate => $composableBuilder(
    column: $table.recordDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileUri => $composableBuilder(
    column: $table.fileUri,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MedicalRecordsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MedicalRecordsTableTable> {
  $$MedicalRecordsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get recordDate => $composableBuilder(
    column: $table.recordDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileUri => $composableBuilder(
    column: $table.fileUri,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MedicalRecordsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MedicalRecordsTableTable> {
  $$MedicalRecordsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<DateTime> get recordDate => $composableBuilder(
    column: $table.recordDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get provider =>
      $composableBuilder(column: $table.provider, builder: (column) => column);

  GeneratedColumn<String> get fileUri =>
      $composableBuilder(column: $table.fileUri, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$MedicalRecordsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MedicalRecordsTableTable,
          MedicalRecordsTableData,
          $$MedicalRecordsTableTableFilterComposer,
          $$MedicalRecordsTableTableOrderingComposer,
          $$MedicalRecordsTableTableAnnotationComposer,
          $$MedicalRecordsTableTableCreateCompanionBuilder,
          $$MedicalRecordsTableTableUpdateCompanionBuilder,
          (
            MedicalRecordsTableData,
            BaseReferences<
              _$AppDatabase,
              $MedicalRecordsTableTable,
              MedicalRecordsTableData
            >,
          ),
          MedicalRecordsTableData,
          PrefetchHooks Function()
        > {
  $$MedicalRecordsTableTableTableManager(
    _$AppDatabase db,
    $MedicalRecordsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$MedicalRecordsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$MedicalRecordsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$MedicalRecordsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<DateTime> recordDate = const Value.absent(),
                Value<String?> provider = const Value.absent(),
                Value<String?> fileUri = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MedicalRecordsTableCompanion(
                id: id,
                userId: userId,
                title: title,
                category: category,
                recordDate: recordDate,
                provider: provider,
                fileUri: fileUri,
                notes: notes,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String title,
                required String category,
                required DateTime recordDate,
                Value<String?> provider = const Value.absent(),
                Value<String?> fileUri = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MedicalRecordsTableCompanion.insert(
                id: id,
                userId: userId,
                title: title,
                category: category,
                recordDate: recordDate,
                provider: provider,
                fileUri: fileUri,
                notes: notes,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MedicalRecordsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MedicalRecordsTableTable,
      MedicalRecordsTableData,
      $$MedicalRecordsTableTableFilterComposer,
      $$MedicalRecordsTableTableOrderingComposer,
      $$MedicalRecordsTableTableAnnotationComposer,
      $$MedicalRecordsTableTableCreateCompanionBuilder,
      $$MedicalRecordsTableTableUpdateCompanionBuilder,
      (
        MedicalRecordsTableData,
        BaseReferences<
          _$AppDatabase,
          $MedicalRecordsTableTable,
          MedicalRecordsTableData
        >,
      ),
      MedicalRecordsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableTableManager get usersTable =>
      $$UsersTableTableTableManager(_db, _db.usersTable);
  $$HealthMeasurementsTableTableTableManager get healthMeasurementsTable =>
      $$HealthMeasurementsTableTableTableManager(
        _db,
        _db.healthMeasurementsTable,
      );
  $$SemenAnalysisTableTableTableManager get semenAnalysisTable =>
      $$SemenAnalysisTableTableTableManager(_db, _db.semenAnalysisTable);
  $$HormonesTableTableTableManager get hormonesTable =>
      $$HormonesTableTableTableManager(_db, _db.hormonesTable);
  $$ReproductiveLifestylesTableTableTableManager
  get reproductiveLifestylesTable =>
      $$ReproductiveLifestylesTableTableTableManager(
        _db,
        _db.reproductiveLifestylesTable,
      );
  $$FemaleCycleTableTableTableManager get femaleCycleTable =>
      $$FemaleCycleTableTableTableManager(_db, _db.femaleCycleTable);
  $$MedicationsTableTableTableManager get medicationsTable =>
      $$MedicationsTableTableTableManager(_db, _db.medicationsTable);
  $$GoalsTableTableTableManager get goalsTable =>
      $$GoalsTableTableTableManager(_db, _db.goalsTable);
  $$RemindersTableTableTableManager get remindersTable =>
      $$RemindersTableTableTableManager(_db, _db.remindersTable);
  $$MedicalRecordsTableTableTableManager get medicalRecordsTable =>
      $$MedicalRecordsTableTableTableManager(_db, _db.medicalRecordsTable);
}
