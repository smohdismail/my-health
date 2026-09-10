import 'package:drift/drift.dart';

// Universal Health Measurement Types
enum MeasurementType {
  weight,
  height,
  bmi,
  waist,
  bodyFatPct,
  heartRate,
  restingHeartRate,
  bloodPressureSystolic,
  bloodPressureDiastolic,
  pulse,
  bloodGlucose,
  spo2,
  bodyTemperature,
  steps,
  distanceKm,
  activeCalories,
  exerciseDurationMinutes,
  sleepMinutes,
  waterMl,
  mood,
  stress,
  energy,
}

class UsersTable extends Table {
  TextColumn get id => text()();
  TextColumn get email => text()();
  TextColumn get name => text().nullable()();
  TextColumn get biologicalSex => text().withDefault(const Constant('male'))(); // 'male', 'female', 'other'
  DateTimeColumn get dateOfBirth => dateTime().nullable()();
  RealColumn get heightCm => real().nullable()();
  RealColumn get weightKg => real().nullable()();
  TextColumn get activityLevel => text().withDefault(const Constant('moderate'))();
  TextColumn get preferredUnits => text().withDefault(const Constant('metric'))(); // 'metric', 'imperial'
  TextColumn get timezone => text().withDefault(const Constant('UTC'))();
  BoolColumn get isBiometricEnabled => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class HealthMeasurementsTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get type => text()(); // Stores MeasurementType enum name
  RealColumn get value => real()();
  TextColumn get unit => text()();
  DateTimeColumn get timestamp => dateTime()();
  TextColumn get source => text().withDefault(const Constant('Manual'))(); // 'Manual', 'Health Connect', 'Lab', 'Device'
  TextColumn get sourceId => text().nullable()();
  TextColumn get notes => text().nullable()();
  RealColumn get originalValue => real().nullable()();
  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))(); // 'pending', 'synced'
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class SemenAnalysisTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  DateTimeColumn get collectionDate => dateTime()();
  DateTimeColumn get analysisDate => dateTime()();
  RealColumn get volumeMl => real().nullable()();
  RealColumn get concentrationMPerMl => real().nullable()();
  RealColumn get totalCountM => real().nullable()();
  RealColumn get progressiveMotilityPct => real().nullable()();
  RealColumn get nonProgressiveMotilityPct => real().nullable()();
  RealColumn get immotilePct => real().nullable()();
  RealColumn get totalMotilityPct => real().nullable()();
  RealColumn get morphologyPct => real().nullable()();
  RealColumn get vitalityPct => real().nullable()();
  RealColumn get ph => real().nullable()();
  TextColumn get liquefaction => text().nullable()();
  RealColumn get roundCells => real().nullable()();
  TextColumn get labName => text().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class HormonesTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get testName => text()(); // e.g. 'Testosterone', 'FSH', 'LH', 'Prolactin', 'Estradiol', 'SHBG', 'TSH'
  RealColumn get resultValue => real()();
  TextColumn get unit => text()();
  RealColumn get refRangeLow => real().nullable()();
  RealColumn get refRangeHigh => real().nullable()();
  DateTimeColumn get collectionDate => dateTime()();
  TextColumn get labName => text().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class ReproductiveLifestylesTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  DateTimeColumn get date => dateTime()();
  RealColumn get sleepHours => real().nullable()();
  IntColumn get exerciseMinutes => integer().nullable()();
  BoolColumn get tobaccoUsed => boolean().withDefault(const Constant(false))();
  IntColumn get alcoholUnits => integer().withDefault(const Constant(0))();
  BoolColumn get saunaExposed => boolean().withDefault(const Constant(false))();
  IntColumn get stressLevel => integer().nullable()(); // 1 - 10
  BoolColumn get illnessOrFever => boolean().withDefault(const Constant(false))();
  TextColumn get notes => text().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();

  @override
  Set<Column> get primaryKey => {id};
}

class FemaleCycleTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  DateTimeColumn get periodStartDate => dateTime()();
  DateTimeColumn get periodEndDate => dateTime().nullable()();
  IntColumn get cycleLengthDays => integer().withDefault(const Constant(28))();
  IntColumn get periodLengthDays => integer().withDefault(const Constant(5))();
  TextColumn get symptoms => text().nullable()(); // JSON string or comma-separated
  TextColumn get notes => text().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();

  @override
  Set<Column> get primaryKey => {id};
}

class MedicationsTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get name => text()();
  RealColumn get dosage => real()();
  TextColumn get unit => text()();
  TextColumn get frequency => text()(); // e.g. 'Daily', 'Twice daily'
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime().nullable()();
  TextColumn get instructions => text().nullable()();
  BoolColumn get isReminderActive => boolean().withDefault(const Constant(true))();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();

  @override
  Set<Column> get primaryKey => {id};
}

class GoalsTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get category => text()(); // e.g. 'Steps', 'Sleep', 'Water', 'Weight'
  RealColumn get targetValue => real()();
  TextColumn get unit => text()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get targetDate => dateTime().nullable()();
  RealColumn get currentProgress => real().withDefault(const Constant(0.0))();
  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();

  @override
  Set<Column> get primaryKey => {id};
}

class RemindersTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get title => text()();
  TextColumn get body => text()();
  DateTimeColumn get scheduledTime => dateTime()();
  TextColumn get recurringType => text().withDefault(const Constant('once'))(); // 'once', 'daily', 'weekly'
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}

class MedicalRecordsTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get title => text()();
  TextColumn get category => text()(); // 'Lab Result', 'Vaccination', 'Doctor Note', 'Diagnosis'
  DateTimeColumn get recordDate => dateTime()();
  TextColumn get provider => text().nullable()();
  TextColumn get fileUri => text().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();

  @override
  Set<Column> get primaryKey => {id};
}
