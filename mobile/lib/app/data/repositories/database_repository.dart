import 'package:drift/drift.dart';
import '../local/app_database.dart';

class DatabaseRepository {
  final AppDatabase db;

  DatabaseRepository({required this.db});

  // --- Users & Profile ---
  Future<UsersTableData?> getUser(String userId) async {
    return (db.select(db.usersTable)..where((t) => t.id.equals(userId))).getSingleOrNull();
  }

  Future<void> upsertUser(UsersTableCompanion user) async {
    await db.into(db.usersTable).insertOnConflictUpdate(user);
  }

  // --- Health Measurements ---
  Future<void> addMeasurement(HealthMeasurementsTableCompanion measurement) async {
    await db.into(db.healthMeasurementsTable).insertOnConflictUpdate(measurement);
  }

  Stream<List<HealthMeasurementsTableData>> watchMeasurementsForUser(String userId, {String? type, DateTime? startDate, DateTime? endDate}) {
    final query = db.select(db.healthMeasurementsTable)..where((t) => t.userId.equals(userId) & t.isDeleted.equals(false));
    if (type != null) {
      query.where((t) => t.type.equals(type));
    }
    if (startDate != null) {
      query.where((t) => t.timestamp.isBiggerOrEqualValue(startDate));
    }
    if (endDate != null) {
      query.where((t) => t.timestamp.isSmallerOrEqualValue(endDate));
    }
    query.orderBy([(t) => OrderingTerm(expression: t.timestamp, mode: OrderingMode.desc)]);
    return query.watch();
  }

  Future<List<HealthMeasurementsTableData>> getMeasurementsForUser(String userId, {String? type, DateTime? startDate, DateTime? endDate}) async {
    final query = db.select(db.healthMeasurementsTable)..where((t) => t.userId.equals(userId) & t.isDeleted.equals(false));
    if (type != null) {
      query.where((t) => t.type.equals(type));
    }
    if (startDate != null) {
      query.where((t) => t.timestamp.isBiggerOrEqualValue(startDate));
    }
    if (endDate != null) {
      query.where((t) => t.timestamp.isSmallerOrEqualValue(endDate));
    }
    query.orderBy([(t) => OrderingTerm(expression: t.timestamp, mode: OrderingMode.desc)]);
    return query.get();
  }

  // --- Semen Analysis ---
  Future<void> addSemenAnalysis(SemenAnalysisTableCompanion record) async {
    await db.into(db.semenAnalysisTable).insertOnConflictUpdate(record);
  }

  Stream<List<SemenAnalysisTableData>> watchSemenAnalysis(String userId) {
    final query = db.select(db.semenAnalysisTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.collectionDate, mode: OrderingMode.desc)]);
    return query.watch();
  }

  Future<List<SemenAnalysisTableData>> getSemenAnalysis(String userId) async {
    final query = db.select(db.semenAnalysisTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.collectionDate, mode: OrderingMode.desc)]);
    return query.get();
  }

  // --- Hormones ---
  Future<void> addHormone(HormonesTableCompanion record) async {
    await db.into(db.hormonesTable).insertOnConflictUpdate(record);
  }

  Stream<List<HormonesTableData>> watchHormones(String userId) {
    final query = db.select(db.hormonesTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.collectionDate, mode: OrderingMode.desc)]);
    return query.watch();
  }

  Future<List<HormonesTableData>> getHormones(String userId) async {
    final query = db.select(db.hormonesTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.collectionDate, mode: OrderingMode.desc)]);
    return query.get();
  }

  // --- Reproductive Lifestyle ---
  Future<void> addReproductiveLifestyle(ReproductiveLifestylesTableCompanion record) async {
    await db.into(db.reproductiveLifestylesTable).insertOnConflictUpdate(record);
  }

  Stream<List<ReproductiveLifestylesTableData>> watchReproductiveLifestyles(String userId) {
    final query = db.select(db.reproductiveLifestylesTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.date, mode: OrderingMode.desc)]);
    return query.watch();
  }

  Future<List<ReproductiveLifestylesTableData>> getReproductiveLifestyles(String userId) async {
    final query = db.select(db.reproductiveLifestylesTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.date, mode: OrderingMode.desc)]);
    return query.get();
  }

  // --- Female Cycle ---
  Future<void> addFemaleCycle(FemaleCycleTableCompanion record) async {
    await db.into(db.femaleCycleTable).insertOnConflictUpdate(record);
  }

  Stream<List<FemaleCycleTableData>> watchFemaleCycle(String userId) {
    final query = db.select(db.femaleCycleTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.periodStartDate, mode: OrderingMode.desc)]);
    return query.watch();
  }

  // --- Medications ---
  Future<void> addMedication(MedicationsTableCompanion record) async {
    await db.into(db.medicationsTable).insertOnConflictUpdate(record);
  }

  Stream<List<MedicationsTableData>> watchMedications(String userId) {
    final query = db.select(db.medicationsTable)..where((t) => t.userId.equals(userId));
    return query.watch();
  }

  Future<List<MedicationsTableData>> getMedications(String userId) async {
    final query = db.select(db.medicationsTable)..where((t) => t.userId.equals(userId));
    return query.get();
  }

  // --- Goals ---
  Future<void> addGoal(GoalsTableCompanion goal) async {
    await db.into(db.goalsTable).insertOnConflictUpdate(goal);
  }

  Stream<List<GoalsTableData>> watchGoals(String userId) {
    return (db.select(db.goalsTable)..where((t) => t.userId.equals(userId))).watch();
  }

  // --- Reminders ---
  Future<void> addReminder(RemindersTableCompanion reminder) async {
    await db.into(db.remindersTable).insertOnConflictUpdate(reminder);
  }

  Stream<List<RemindersTableData>> watchReminders(String userId) {
    return (db.select(db.remindersTable)..where((t) => t.userId.equals(userId))).watch();
  }

  // --- Medical Records ---
  Future<void> addMedicalRecord(MedicalRecordsTableCompanion record) async {
    await db.into(db.medicalRecordsTable).insertOnConflictUpdate(record);
  }

  Stream<List<MedicalRecordsTableData>> watchMedicalRecords(String userId) {
    final query = db.select(db.medicalRecordsTable)..where((t) => t.userId.equals(userId));
    query.orderBy([(t) => OrderingTerm(expression: t.recordDate, mode: OrderingMode.desc)]);
    return query.watch();
  }

  // --- Deletion (Soft delete for measurements, hard delete for medical records) ---
  Future<void> deleteMeasurement(String id) async {
    await (db.update(db.healthMeasurementsTable)..where((t) => t.id.equals(id)))
        .write(const HealthMeasurementsTableCompanion(isDeleted: Value(true), syncStatus: Value('pending')));
  }

  Future<void> clearAllUserData(String userId) async {
    await (db.delete(db.healthMeasurementsTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.semenAnalysisTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.hormonesTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.reproductiveLifestylesTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.femaleCycleTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.medicationsTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.goalsTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.remindersTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.medicalRecordsTable)..where((t) => t.userId.equals(userId))).go();
    await (db.delete(db.usersTable)..where((t) => t.id.equals(userId))).go();
  }
}
