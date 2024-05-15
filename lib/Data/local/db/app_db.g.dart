// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $ExerciseTable extends Exercise
    with TableInfo<$ExerciseTable, ExerciseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _forceMeta = const VerificationMeta('force');
  @override
  late final GeneratedColumn<String> force = GeneratedColumn<String>(
      'force', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
      'level', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mechanicMeta =
      const VerificationMeta('mechanic');
  @override
  late final GeneratedColumn<String> mechanic = GeneratedColumn<String>(
      'mechanic', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _equipmentMeta =
      const VerificationMeta('equipment');
  @override
  late final GeneratedColumn<String> equipment = GeneratedColumn<String>(
      'equipment', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _primaryMusclesMeta =
      const VerificationMeta('primaryMuscles');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String>
      primaryMuscles = GeneratedColumn<String>(
              'primaryMuscles', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>(
              $ExerciseTable.$converterprimaryMuscles);
  static const VerificationMeta _secondaryMusclesMeta =
      const VerificationMeta('secondaryMuscles');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String>
      secondaryMuscles = GeneratedColumn<String>(
              'secondaryMuscles', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>(
              $ExerciseTable.$convertersecondaryMuscles);
  static const VerificationMeta _instructionsMeta =
      const VerificationMeta('instructions');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String>
      instructions = GeneratedColumn<String>('instructions', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>($ExerciseTable.$converterinstructions);
  static const VerificationMeta _imagesMeta = const VerificationMeta('images');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> images =
      GeneratedColumn<String>('images', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>($ExerciseTable.$converterimages);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        name,
        force,
        level,
        mechanic,
        equipment,
        primaryMuscles,
        secondaryMuscles,
        instructions,
        images,
        category,
        id
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise';
  @override
  VerificationContext validateIntegrity(Insertable<ExerciseData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('force')) {
      context.handle(
          _forceMeta, force.isAcceptableOrUnknown(data['force']!, _forceMeta));
    } else if (isInserting) {
      context.missing(_forceMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('mechanic')) {
      context.handle(_mechanicMeta,
          mechanic.isAcceptableOrUnknown(data['mechanic']!, _mechanicMeta));
    }
    if (data.containsKey('equipment')) {
      context.handle(_equipmentMeta,
          equipment.isAcceptableOrUnknown(data['equipment']!, _equipmentMeta));
    }
    context.handle(_primaryMusclesMeta, const VerificationResult.success());
    context.handle(_secondaryMusclesMeta, const VerificationResult.success());
    context.handle(_instructionsMeta, const VerificationResult.success());
    context.handle(_imagesMeta, const VerificationResult.success());
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ExerciseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseData(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      force: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}force'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}level'])!,
      mechanic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mechanic']),
      equipment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}equipment']),
      primaryMuscles: $ExerciseTable.$converterprimaryMuscles.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}primaryMuscles'])!),
      secondaryMuscles: $ExerciseTable.$convertersecondaryMuscles.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}secondaryMuscles'])!),
      instructions: $ExerciseTable.$converterinstructions.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}instructions'])!),
      images: $ExerciseTable.$converterimages.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}images'])!),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $ExerciseTable createAlias(String alias) {
    return $ExerciseTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converterprimaryMuscles =
      const StringListConverter();
  static TypeConverter<List<dynamic>, String> $convertersecondaryMuscles =
      const StringListConverter();
  static TypeConverter<List<dynamic>, String> $converterinstructions =
      const StringListConverter();
  static TypeConverter<List<dynamic>, String> $converterimages =
      const StringListConverter();
}

class ExerciseData extends DataClass implements Insertable<ExerciseData> {
  final String name;
  final String force;
  final String level;
  final String? mechanic;
  final String? equipment;
  final List<dynamic> primaryMuscles;
  final List<dynamic> secondaryMuscles;
  final List<dynamic> instructions;
  final List<dynamic> images;
  final String category;
  final String id;
  const ExerciseData(
      {required this.name,
      required this.force,
      required this.level,
      this.mechanic,
      this.equipment,
      required this.primaryMuscles,
      required this.secondaryMuscles,
      required this.instructions,
      required this.images,
      required this.category,
      required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['force'] = Variable<String>(force);
    map['level'] = Variable<String>(level);
    if (!nullToAbsent || mechanic != null) {
      map['mechanic'] = Variable<String>(mechanic);
    }
    if (!nullToAbsent || equipment != null) {
      map['equipment'] = Variable<String>(equipment);
    }
    {
      map['primaryMuscles'] = Variable<String>(
          $ExerciseTable.$converterprimaryMuscles.toSql(primaryMuscles));
    }
    {
      map['secondaryMuscles'] = Variable<String>(
          $ExerciseTable.$convertersecondaryMuscles.toSql(secondaryMuscles));
    }
    {
      map['instructions'] = Variable<String>(
          $ExerciseTable.$converterinstructions.toSql(instructions));
    }
    {
      map['images'] =
          Variable<String>($ExerciseTable.$converterimages.toSql(images));
    }
    map['category'] = Variable<String>(category);
    map['id'] = Variable<String>(id);
    return map;
  }

  ExerciseCompanion toCompanion(bool nullToAbsent) {
    return ExerciseCompanion(
      name: Value(name),
      force: Value(force),
      level: Value(level),
      mechanic: mechanic == null && nullToAbsent
          ? const Value.absent()
          : Value(mechanic),
      equipment: equipment == null && nullToAbsent
          ? const Value.absent()
          : Value(equipment),
      primaryMuscles: Value(primaryMuscles),
      secondaryMuscles: Value(secondaryMuscles),
      instructions: Value(instructions),
      images: Value(images),
      category: Value(category),
      id: Value(id),
    );
  }

  factory ExerciseData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseData(
      name: serializer.fromJson<String>(json['name']),
      force: serializer.fromJson<String>(json['force']),
      level: serializer.fromJson<String>(json['level']),
      mechanic: serializer.fromJson<String?>(json['mechanic']),
      equipment: serializer.fromJson<String?>(json['equipment']),
      primaryMuscles:
          serializer.fromJson<List<dynamic>>(json['primaryMuscles']),
      secondaryMuscles:
          serializer.fromJson<List<dynamic>>(json['secondaryMuscles']),
      instructions: serializer.fromJson<List<dynamic>>(json['instructions']),
      images: serializer.fromJson<List<dynamic>>(json['images']),
      category: serializer.fromJson<String>(json['category']),
      id: serializer.fromJson<String>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'force': serializer.toJson<String>(force),
      'level': serializer.toJson<String>(level),
      'mechanic': serializer.toJson<String?>(mechanic),
      'equipment': serializer.toJson<String?>(equipment),
      'primaryMuscles': serializer.toJson<List<dynamic>>(primaryMuscles),
      'secondaryMuscles': serializer.toJson<List<dynamic>>(secondaryMuscles),
      'instructions': serializer.toJson<List<dynamic>>(instructions),
      'images': serializer.toJson<List<dynamic>>(images),
      'category': serializer.toJson<String>(category),
      'id': serializer.toJson<String>(id),
    };
  }

  ExerciseData copyWith(
          {String? name,
          String? force,
          String? level,
          Value<String?> mechanic = const Value.absent(),
          Value<String?> equipment = const Value.absent(),
          List<dynamic>? primaryMuscles,
          List<dynamic>? secondaryMuscles,
          List<dynamic>? instructions,
          List<dynamic>? images,
          String? category,
          String? id}) =>
      ExerciseData(
        name: name ?? this.name,
        force: force ?? this.force,
        level: level ?? this.level,
        mechanic: mechanic.present ? mechanic.value : this.mechanic,
        equipment: equipment.present ? equipment.value : this.equipment,
        primaryMuscles: primaryMuscles ?? this.primaryMuscles,
        secondaryMuscles: secondaryMuscles ?? this.secondaryMuscles,
        instructions: instructions ?? this.instructions,
        images: images ?? this.images,
        category: category ?? this.category,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseData(')
          ..write('name: $name, ')
          ..write('force: $force, ')
          ..write('level: $level, ')
          ..write('mechanic: $mechanic, ')
          ..write('equipment: $equipment, ')
          ..write('primaryMuscles: $primaryMuscles, ')
          ..write('secondaryMuscles: $secondaryMuscles, ')
          ..write('instructions: $instructions, ')
          ..write('images: $images, ')
          ..write('category: $category, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, force, level, mechanic, equipment,
      primaryMuscles, secondaryMuscles, instructions, images, category, id);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseData &&
          other.name == this.name &&
          other.force == this.force &&
          other.level == this.level &&
          other.mechanic == this.mechanic &&
          other.equipment == this.equipment &&
          other.primaryMuscles == this.primaryMuscles &&
          other.secondaryMuscles == this.secondaryMuscles &&
          other.instructions == this.instructions &&
          other.images == this.images &&
          other.category == this.category &&
          other.id == this.id);
}

class ExerciseCompanion extends UpdateCompanion<ExerciseData> {
  final Value<String> name;
  final Value<String> force;
  final Value<String> level;
  final Value<String?> mechanic;
  final Value<String?> equipment;
  final Value<List<dynamic>> primaryMuscles;
  final Value<List<dynamic>> secondaryMuscles;
  final Value<List<dynamic>> instructions;
  final Value<List<dynamic>> images;
  final Value<String> category;
  final Value<String> id;
  final Value<int> rowid;
  const ExerciseCompanion({
    this.name = const Value.absent(),
    this.force = const Value.absent(),
    this.level = const Value.absent(),
    this.mechanic = const Value.absent(),
    this.equipment = const Value.absent(),
    this.primaryMuscles = const Value.absent(),
    this.secondaryMuscles = const Value.absent(),
    this.instructions = const Value.absent(),
    this.images = const Value.absent(),
    this.category = const Value.absent(),
    this.id = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExerciseCompanion.insert({
    required String name,
    required String force,
    required String level,
    this.mechanic = const Value.absent(),
    this.equipment = const Value.absent(),
    required List<dynamic> primaryMuscles,
    required List<dynamic> secondaryMuscles,
    required List<dynamic> instructions,
    required List<dynamic> images,
    required String category,
    required String id,
    this.rowid = const Value.absent(),
  })  : name = Value(name),
        force = Value(force),
        level = Value(level),
        primaryMuscles = Value(primaryMuscles),
        secondaryMuscles = Value(secondaryMuscles),
        instructions = Value(instructions),
        images = Value(images),
        category = Value(category),
        id = Value(id);
  static Insertable<ExerciseData> custom({
    Expression<String>? name,
    Expression<String>? force,
    Expression<String>? level,
    Expression<String>? mechanic,
    Expression<String>? equipment,
    Expression<String>? primaryMuscles,
    Expression<String>? secondaryMuscles,
    Expression<String>? instructions,
    Expression<String>? images,
    Expression<String>? category,
    Expression<String>? id,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (force != null) 'force': force,
      if (level != null) 'level': level,
      if (mechanic != null) 'mechanic': mechanic,
      if (equipment != null) 'equipment': equipment,
      if (primaryMuscles != null) 'primaryMuscles': primaryMuscles,
      if (secondaryMuscles != null) 'secondaryMuscles': secondaryMuscles,
      if (instructions != null) 'instructions': instructions,
      if (images != null) 'images': images,
      if (category != null) 'category': category,
      if (id != null) 'id': id,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExerciseCompanion copyWith(
      {Value<String>? name,
      Value<String>? force,
      Value<String>? level,
      Value<String?>? mechanic,
      Value<String?>? equipment,
      Value<List<dynamic>>? primaryMuscles,
      Value<List<dynamic>>? secondaryMuscles,
      Value<List<dynamic>>? instructions,
      Value<List<dynamic>>? images,
      Value<String>? category,
      Value<String>? id,
      Value<int>? rowid}) {
    return ExerciseCompanion(
      name: name ?? this.name,
      force: force ?? this.force,
      level: level ?? this.level,
      mechanic: mechanic ?? this.mechanic,
      equipment: equipment ?? this.equipment,
      primaryMuscles: primaryMuscles ?? this.primaryMuscles,
      secondaryMuscles: secondaryMuscles ?? this.secondaryMuscles,
      instructions: instructions ?? this.instructions,
      images: images ?? this.images,
      category: category ?? this.category,
      id: id ?? this.id,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (force.present) {
      map['force'] = Variable<String>(force.value);
    }
    if (level.present) {
      map['level'] = Variable<String>(level.value);
    }
    if (mechanic.present) {
      map['mechanic'] = Variable<String>(mechanic.value);
    }
    if (equipment.present) {
      map['equipment'] = Variable<String>(equipment.value);
    }
    if (primaryMuscles.present) {
      map['primaryMuscles'] = Variable<String>(
          $ExerciseTable.$converterprimaryMuscles.toSql(primaryMuscles.value));
    }
    if (secondaryMuscles.present) {
      map['secondaryMuscles'] = Variable<String>($ExerciseTable
          .$convertersecondaryMuscles
          .toSql(secondaryMuscles.value));
    }
    if (instructions.present) {
      map['instructions'] = Variable<String>(
          $ExerciseTable.$converterinstructions.toSql(instructions.value));
    }
    if (images.present) {
      map['images'] =
          Variable<String>($ExerciseTable.$converterimages.toSql(images.value));
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseCompanion(')
          ..write('name: $name, ')
          ..write('force: $force, ')
          ..write('level: $level, ')
          ..write('mechanic: $mechanic, ')
          ..write('equipment: $equipment, ')
          ..write('primaryMuscles: $primaryMuscles, ')
          ..write('secondaryMuscles: $secondaryMuscles, ')
          ..write('instructions: $instructions, ')
          ..write('images: $images, ')
          ..write('category: $category, ')
          ..write('id: $id, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WorkoutPlanTable extends WorkoutPlan
    with TableInfo<$WorkoutPlanTable, WorkoutPlanData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutPlanTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _exercisesMeta =
      const VerificationMeta('exercises');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> exercises =
      GeneratedColumn<String>('exercises', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>($WorkoutPlanTable.$converterexercises);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  @override
  List<GeneratedColumn> get $columns => [name, exercises, id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout_plan';
  @override
  VerificationContext validateIntegrity(Insertable<WorkoutPlanData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_exercisesMeta, const VerificationResult.success());
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutPlanData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutPlanData(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      exercises: $WorkoutPlanTable.$converterexercises.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}exercises'])!),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $WorkoutPlanTable createAlias(String alias) {
    return $WorkoutPlanTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converterexercises =
      const StringListConverter();
}

class WorkoutPlanData extends DataClass implements Insertable<WorkoutPlanData> {
  final String name;
  final List<dynamic> exercises;
  final int id;
  const WorkoutPlanData(
      {required this.name, required this.exercises, required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    {
      map['exercises'] = Variable<String>(
          $WorkoutPlanTable.$converterexercises.toSql(exercises));
    }
    map['id'] = Variable<int>(id);
    return map;
  }

  WorkoutPlanCompanion toCompanion(bool nullToAbsent) {
    return WorkoutPlanCompanion(
      name: Value(name),
      exercises: Value(exercises),
      id: Value(id),
    );
  }

  factory WorkoutPlanData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutPlanData(
      name: serializer.fromJson<String>(json['name']),
      exercises: serializer.fromJson<List<dynamic>>(json['exercises']),
      id: serializer.fromJson<int>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'exercises': serializer.toJson<List<dynamic>>(exercises),
      'id': serializer.toJson<int>(id),
    };
  }

  WorkoutPlanData copyWith({String? name, List<dynamic>? exercises, int? id}) =>
      WorkoutPlanData(
        name: name ?? this.name,
        exercises: exercises ?? this.exercises,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('WorkoutPlanData(')
          ..write('name: $name, ')
          ..write('exercises: $exercises, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, exercises, id);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutPlanData &&
          other.name == this.name &&
          other.exercises == this.exercises &&
          other.id == this.id);
}

class WorkoutPlanCompanion extends UpdateCompanion<WorkoutPlanData> {
  final Value<String> name;
  final Value<List<dynamic>> exercises;
  final Value<int> id;
  const WorkoutPlanCompanion({
    this.name = const Value.absent(),
    this.exercises = const Value.absent(),
    this.id = const Value.absent(),
  });
  WorkoutPlanCompanion.insert({
    required String name,
    required List<dynamic> exercises,
    this.id = const Value.absent(),
  })  : name = Value(name),
        exercises = Value(exercises);
  static Insertable<WorkoutPlanData> custom({
    Expression<String>? name,
    Expression<String>? exercises,
    Expression<int>? id,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (exercises != null) 'exercises': exercises,
      if (id != null) 'id': id,
    });
  }

  WorkoutPlanCompanion copyWith(
      {Value<String>? name, Value<List<dynamic>>? exercises, Value<int>? id}) {
    return WorkoutPlanCompanion(
      name: name ?? this.name,
      exercises: exercises ?? this.exercises,
      id: id ?? this.id,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (exercises.present) {
      map['exercises'] = Variable<String>(
          $WorkoutPlanTable.$converterexercises.toSql(exercises.value));
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutPlanCompanion(')
          ..write('name: $name, ')
          ..write('exercises: $exercises, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $SpecificWorkoutTable extends SpecificWorkout
    with TableInfo<$SpecificWorkoutTable, SpecificWorkoutData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpecificWorkoutTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _exercisesMeta =
      const VerificationMeta('exercises');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> exercises =
      GeneratedColumn<String>('primaryMuscles', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<dynamic>>(
              $SpecificWorkoutTable.$converterexercises);
  @override
  List<GeneratedColumn> get $columns => [name, date, exercises];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'specific_workout';
  @override
  VerificationContext validateIntegrity(
      Insertable<SpecificWorkoutData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    context.handle(_exercisesMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SpecificWorkoutData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpecificWorkoutData(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      exercises: $SpecificWorkoutTable.$converterexercises.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}primaryMuscles'])!),
    );
  }

  @override
  $SpecificWorkoutTable createAlias(String alias) {
    return $SpecificWorkoutTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converterexercises =
      const StringListConverter();
}

class SpecificWorkoutData extends DataClass
    implements Insertable<SpecificWorkoutData> {
  final String name;
  final DateTime date;
  final List<dynamic> exercises;
  const SpecificWorkoutData(
      {required this.name, required this.date, required this.exercises});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['date'] = Variable<DateTime>(date);
    {
      map['primaryMuscles'] = Variable<String>(
          $SpecificWorkoutTable.$converterexercises.toSql(exercises));
    }
    return map;
  }

  SpecificWorkoutCompanion toCompanion(bool nullToAbsent) {
    return SpecificWorkoutCompanion(
      name: Value(name),
      date: Value(date),
      exercises: Value(exercises),
    );
  }

  factory SpecificWorkoutData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpecificWorkoutData(
      name: serializer.fromJson<String>(json['name']),
      date: serializer.fromJson<DateTime>(json['date']),
      exercises: serializer.fromJson<List<dynamic>>(json['exercises']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'date': serializer.toJson<DateTime>(date),
      'exercises': serializer.toJson<List<dynamic>>(exercises),
    };
  }

  SpecificWorkoutData copyWith(
          {String? name, DateTime? date, List<dynamic>? exercises}) =>
      SpecificWorkoutData(
        name: name ?? this.name,
        date: date ?? this.date,
        exercises: exercises ?? this.exercises,
      );
  @override
  String toString() {
    return (StringBuffer('SpecificWorkoutData(')
          ..write('name: $name, ')
          ..write('date: $date, ')
          ..write('exercises: $exercises')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, date, exercises);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpecificWorkoutData &&
          other.name == this.name &&
          other.date == this.date &&
          other.exercises == this.exercises);
}

class SpecificWorkoutCompanion extends UpdateCompanion<SpecificWorkoutData> {
  final Value<String> name;
  final Value<DateTime> date;
  final Value<List<dynamic>> exercises;
  final Value<int> rowid;
  const SpecificWorkoutCompanion({
    this.name = const Value.absent(),
    this.date = const Value.absent(),
    this.exercises = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpecificWorkoutCompanion.insert({
    required String name,
    required DateTime date,
    required List<dynamic> exercises,
    this.rowid = const Value.absent(),
  })  : name = Value(name),
        date = Value(date),
        exercises = Value(exercises);
  static Insertable<SpecificWorkoutData> custom({
    Expression<String>? name,
    Expression<DateTime>? date,
    Expression<String>? exercises,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (date != null) 'date': date,
      if (exercises != null) 'primaryMuscles': exercises,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpecificWorkoutCompanion copyWith(
      {Value<String>? name,
      Value<DateTime>? date,
      Value<List<dynamic>>? exercises,
      Value<int>? rowid}) {
    return SpecificWorkoutCompanion(
      name: name ?? this.name,
      date: date ?? this.date,
      exercises: exercises ?? this.exercises,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (exercises.present) {
      map['primaryMuscles'] = Variable<String>(
          $SpecificWorkoutTable.$converterexercises.toSql(exercises.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpecificWorkoutCompanion(')
          ..write('name: $name, ')
          ..write('date: $date, ')
          ..write('exercises: $exercises, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExerciseDetailsTable extends ExerciseDetails
    with TableInfo<$ExerciseDetailsTable, ExerciseDetail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _setsMeta = const VerificationMeta('sets');
  @override
  late final GeneratedColumn<int> sets = GeneratedColumn<int>(
      'sets', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _repsMeta = const VerificationMeta('reps');
  @override
  late final GeneratedColumn<int> reps = GeneratedColumn<int>(
      'reps', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isDropsetMeta =
      const VerificationMeta('isDropset');
  @override
  late final GeneratedColumn<bool> isDropset = GeneratedColumn<bool>(
      'isDropset', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isDropset" IN (0, 1))'));
  static const VerificationMeta _isToFailureMeta =
      const VerificationMeta('isToFailure');
  @override
  late final GeneratedColumn<bool> isToFailure = GeneratedColumn<bool>(
      'isToFailure', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("isToFailure" IN (0, 1))'));
  static const VerificationMeta _planIdMeta = const VerificationMeta('planId');
  @override
  late final GeneratedColumn<String> planId = GeneratedColumn<String>(
      'planId', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [name, sets, reps, isDropset, isToFailure, planId, id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise_details';
  @override
  VerificationContext validateIntegrity(Insertable<ExerciseDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sets')) {
      context.handle(
          _setsMeta, sets.isAcceptableOrUnknown(data['sets']!, _setsMeta));
    } else if (isInserting) {
      context.missing(_setsMeta);
    }
    if (data.containsKey('reps')) {
      context.handle(
          _repsMeta, reps.isAcceptableOrUnknown(data['reps']!, _repsMeta));
    } else if (isInserting) {
      context.missing(_repsMeta);
    }
    if (data.containsKey('isDropset')) {
      context.handle(_isDropsetMeta,
          isDropset.isAcceptableOrUnknown(data['isDropset']!, _isDropsetMeta));
    } else if (isInserting) {
      context.missing(_isDropsetMeta);
    }
    if (data.containsKey('isToFailure')) {
      context.handle(
          _isToFailureMeta,
          isToFailure.isAcceptableOrUnknown(
              data['isToFailure']!, _isToFailureMeta));
    } else if (isInserting) {
      context.missing(_isToFailureMeta);
    }
    if (data.containsKey('planId')) {
      context.handle(_planIdMeta,
          planId.isAcceptableOrUnknown(data['planId']!, _planIdMeta));
    } else if (isInserting) {
      context.missing(_planIdMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ExerciseDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseDetail(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      sets: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sets'])!,
      reps: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}reps'])!,
      isDropset: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isDropset'])!,
      isToFailure: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isToFailure'])!,
      planId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}planId'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $ExerciseDetailsTable createAlias(String alias) {
    return $ExerciseDetailsTable(attachedDatabase, alias);
  }
}

class ExerciseDetail extends DataClass implements Insertable<ExerciseDetail> {
  final String name;
  final int sets;
  final int reps;
  final bool isDropset;
  final bool isToFailure;
  final String planId;
  final String id;
  const ExerciseDetail(
      {required this.name,
      required this.sets,
      required this.reps,
      required this.isDropset,
      required this.isToFailure,
      required this.planId,
      required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['sets'] = Variable<int>(sets);
    map['reps'] = Variable<int>(reps);
    map['isDropset'] = Variable<bool>(isDropset);
    map['isToFailure'] = Variable<bool>(isToFailure);
    map['planId'] = Variable<String>(planId);
    map['id'] = Variable<String>(id);
    return map;
  }

  ExerciseDetailsCompanion toCompanion(bool nullToAbsent) {
    return ExerciseDetailsCompanion(
      name: Value(name),
      sets: Value(sets),
      reps: Value(reps),
      isDropset: Value(isDropset),
      isToFailure: Value(isToFailure),
      planId: Value(planId),
      id: Value(id),
    );
  }

  factory ExerciseDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseDetail(
      name: serializer.fromJson<String>(json['name']),
      sets: serializer.fromJson<int>(json['sets']),
      reps: serializer.fromJson<int>(json['reps']),
      isDropset: serializer.fromJson<bool>(json['isDropset']),
      isToFailure: serializer.fromJson<bool>(json['isToFailure']),
      planId: serializer.fromJson<String>(json['planId']),
      id: serializer.fromJson<String>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'sets': serializer.toJson<int>(sets),
      'reps': serializer.toJson<int>(reps),
      'isDropset': serializer.toJson<bool>(isDropset),
      'isToFailure': serializer.toJson<bool>(isToFailure),
      'planId': serializer.toJson<String>(planId),
      'id': serializer.toJson<String>(id),
    };
  }

  ExerciseDetail copyWith(
          {String? name,
          int? sets,
          int? reps,
          bool? isDropset,
          bool? isToFailure,
          String? planId,
          String? id}) =>
      ExerciseDetail(
        name: name ?? this.name,
        sets: sets ?? this.sets,
        reps: reps ?? this.reps,
        isDropset: isDropset ?? this.isDropset,
        isToFailure: isToFailure ?? this.isToFailure,
        planId: planId ?? this.planId,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseDetail(')
          ..write('name: $name, ')
          ..write('sets: $sets, ')
          ..write('reps: $reps, ')
          ..write('isDropset: $isDropset, ')
          ..write('isToFailure: $isToFailure, ')
          ..write('planId: $planId, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(name, sets, reps, isDropset, isToFailure, planId, id);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseDetail &&
          other.name == this.name &&
          other.sets == this.sets &&
          other.reps == this.reps &&
          other.isDropset == this.isDropset &&
          other.isToFailure == this.isToFailure &&
          other.planId == this.planId &&
          other.id == this.id);
}

class ExerciseDetailsCompanion extends UpdateCompanion<ExerciseDetail> {
  final Value<String> name;
  final Value<int> sets;
  final Value<int> reps;
  final Value<bool> isDropset;
  final Value<bool> isToFailure;
  final Value<String> planId;
  final Value<String> id;
  final Value<int> rowid;
  const ExerciseDetailsCompanion({
    this.name = const Value.absent(),
    this.sets = const Value.absent(),
    this.reps = const Value.absent(),
    this.isDropset = const Value.absent(),
    this.isToFailure = const Value.absent(),
    this.planId = const Value.absent(),
    this.id = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExerciseDetailsCompanion.insert({
    required String name,
    required int sets,
    required int reps,
    required bool isDropset,
    required bool isToFailure,
    required String planId,
    required String id,
    this.rowid = const Value.absent(),
  })  : name = Value(name),
        sets = Value(sets),
        reps = Value(reps),
        isDropset = Value(isDropset),
        isToFailure = Value(isToFailure),
        planId = Value(planId),
        id = Value(id);
  static Insertable<ExerciseDetail> custom({
    Expression<String>? name,
    Expression<int>? sets,
    Expression<int>? reps,
    Expression<bool>? isDropset,
    Expression<bool>? isToFailure,
    Expression<String>? planId,
    Expression<String>? id,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (sets != null) 'sets': sets,
      if (reps != null) 'reps': reps,
      if (isDropset != null) 'isDropset': isDropset,
      if (isToFailure != null) 'isToFailure': isToFailure,
      if (planId != null) 'planId': planId,
      if (id != null) 'id': id,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExerciseDetailsCompanion copyWith(
      {Value<String>? name,
      Value<int>? sets,
      Value<int>? reps,
      Value<bool>? isDropset,
      Value<bool>? isToFailure,
      Value<String>? planId,
      Value<String>? id,
      Value<int>? rowid}) {
    return ExerciseDetailsCompanion(
      name: name ?? this.name,
      sets: sets ?? this.sets,
      reps: reps ?? this.reps,
      isDropset: isDropset ?? this.isDropset,
      isToFailure: isToFailure ?? this.isToFailure,
      planId: planId ?? this.planId,
      id: id ?? this.id,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sets.present) {
      map['sets'] = Variable<int>(sets.value);
    }
    if (reps.present) {
      map['reps'] = Variable<int>(reps.value);
    }
    if (isDropset.present) {
      map['isDropset'] = Variable<bool>(isDropset.value);
    }
    if (isToFailure.present) {
      map['isToFailure'] = Variable<bool>(isToFailure.value);
    }
    if (planId.present) {
      map['planId'] = Variable<String>(planId.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseDetailsCompanion(')
          ..write('name: $name, ')
          ..write('sets: $sets, ')
          ..write('reps: $reps, ')
          ..write('isDropset: $isDropset, ')
          ..write('isToFailure: $isToFailure, ')
          ..write('planId: $planId, ')
          ..write('id: $id, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  _$AppDbManager get managers => _$AppDbManager(this);
  late final $ExerciseTable exercise = $ExerciseTable(this);
  late final $WorkoutPlanTable workoutPlan = $WorkoutPlanTable(this);
  late final $SpecificWorkoutTable specificWorkout =
      $SpecificWorkoutTable(this);
  late final $ExerciseDetailsTable exerciseDetails =
      $ExerciseDetailsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [exercise, workoutPlan, specificWorkout, exerciseDetails];
}

typedef $$ExerciseTableInsertCompanionBuilder = ExerciseCompanion Function({
  required String name,
  required String force,
  required String level,
  Value<String?> mechanic,
  Value<String?> equipment,
  required List<dynamic> primaryMuscles,
  required List<dynamic> secondaryMuscles,
  required List<dynamic> instructions,
  required List<dynamic> images,
  required String category,
  required String id,
  Value<int> rowid,
});
typedef $$ExerciseTableUpdateCompanionBuilder = ExerciseCompanion Function({
  Value<String> name,
  Value<String> force,
  Value<String> level,
  Value<String?> mechanic,
  Value<String?> equipment,
  Value<List<dynamic>> primaryMuscles,
  Value<List<dynamic>> secondaryMuscles,
  Value<List<dynamic>> instructions,
  Value<List<dynamic>> images,
  Value<String> category,
  Value<String> id,
  Value<int> rowid,
});

class $$ExerciseTableTableManager extends RootTableManager<
    _$AppDb,
    $ExerciseTable,
    ExerciseData,
    $$ExerciseTableFilterComposer,
    $$ExerciseTableOrderingComposer,
    $$ExerciseTableProcessedTableManager,
    $$ExerciseTableInsertCompanionBuilder,
    $$ExerciseTableUpdateCompanionBuilder> {
  $$ExerciseTableTableManager(_$AppDb db, $ExerciseTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ExerciseTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ExerciseTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$ExerciseTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> name = const Value.absent(),
            Value<String> force = const Value.absent(),
            Value<String> level = const Value.absent(),
            Value<String?> mechanic = const Value.absent(),
            Value<String?> equipment = const Value.absent(),
            Value<List<dynamic>> primaryMuscles = const Value.absent(),
            Value<List<dynamic>> secondaryMuscles = const Value.absent(),
            Value<List<dynamic>> instructions = const Value.absent(),
            Value<List<dynamic>> images = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ExerciseCompanion(
            name: name,
            force: force,
            level: level,
            mechanic: mechanic,
            equipment: equipment,
            primaryMuscles: primaryMuscles,
            secondaryMuscles: secondaryMuscles,
            instructions: instructions,
            images: images,
            category: category,
            id: id,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String name,
            required String force,
            required String level,
            Value<String?> mechanic = const Value.absent(),
            Value<String?> equipment = const Value.absent(),
            required List<dynamic> primaryMuscles,
            required List<dynamic> secondaryMuscles,
            required List<dynamic> instructions,
            required List<dynamic> images,
            required String category,
            required String id,
            Value<int> rowid = const Value.absent(),
          }) =>
              ExerciseCompanion.insert(
            name: name,
            force: force,
            level: level,
            mechanic: mechanic,
            equipment: equipment,
            primaryMuscles: primaryMuscles,
            secondaryMuscles: secondaryMuscles,
            instructions: instructions,
            images: images,
            category: category,
            id: id,
            rowid: rowid,
          ),
        ));
}

class $$ExerciseTableProcessedTableManager extends ProcessedTableManager<
    _$AppDb,
    $ExerciseTable,
    ExerciseData,
    $$ExerciseTableFilterComposer,
    $$ExerciseTableOrderingComposer,
    $$ExerciseTableProcessedTableManager,
    $$ExerciseTableInsertCompanionBuilder,
    $$ExerciseTableUpdateCompanionBuilder> {
  $$ExerciseTableProcessedTableManager(super.$state);
}

class $$ExerciseTableFilterComposer
    extends FilterComposer<_$AppDb, $ExerciseTable> {
  $$ExerciseTableFilterComposer(super.$state);
  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get force => $state.composableBuilder(
      column: $state.table.force,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get level => $state.composableBuilder(
      column: $state.table.level,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get mechanic => $state.composableBuilder(
      column: $state.table.mechanic,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get equipment => $state.composableBuilder(
      column: $state.table.equipment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get primaryMuscles => $state.composableBuilder(
          column: $state.table.primaryMuscles,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get secondaryMuscles => $state.composableBuilder(
          column: $state.table.secondaryMuscles,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get instructions => $state.composableBuilder(
          column: $state.table.instructions,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get images => $state.composableBuilder(
          column: $state.table.images,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ExerciseTableOrderingComposer
    extends OrderingComposer<_$AppDb, $ExerciseTable> {
  $$ExerciseTableOrderingComposer(super.$state);
  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get force => $state.composableBuilder(
      column: $state.table.force,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get level => $state.composableBuilder(
      column: $state.table.level,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get mechanic => $state.composableBuilder(
      column: $state.table.mechanic,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get equipment => $state.composableBuilder(
      column: $state.table.equipment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get primaryMuscles => $state.composableBuilder(
      column: $state.table.primaryMuscles,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get secondaryMuscles => $state.composableBuilder(
      column: $state.table.secondaryMuscles,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get instructions => $state.composableBuilder(
      column: $state.table.instructions,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get images => $state.composableBuilder(
      column: $state.table.images,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$WorkoutPlanTableInsertCompanionBuilder = WorkoutPlanCompanion
    Function({
  required String name,
  required List<dynamic> exercises,
  Value<int> id,
});
typedef $$WorkoutPlanTableUpdateCompanionBuilder = WorkoutPlanCompanion
    Function({
  Value<String> name,
  Value<List<dynamic>> exercises,
  Value<int> id,
});

class $$WorkoutPlanTableTableManager extends RootTableManager<
    _$AppDb,
    $WorkoutPlanTable,
    WorkoutPlanData,
    $$WorkoutPlanTableFilterComposer,
    $$WorkoutPlanTableOrderingComposer,
    $$WorkoutPlanTableProcessedTableManager,
    $$WorkoutPlanTableInsertCompanionBuilder,
    $$WorkoutPlanTableUpdateCompanionBuilder> {
  $$WorkoutPlanTableTableManager(_$AppDb db, $WorkoutPlanTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$WorkoutPlanTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$WorkoutPlanTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$WorkoutPlanTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> name = const Value.absent(),
            Value<List<dynamic>> exercises = const Value.absent(),
            Value<int> id = const Value.absent(),
          }) =>
              WorkoutPlanCompanion(
            name: name,
            exercises: exercises,
            id: id,
          ),
          getInsertCompanionBuilder: ({
            required String name,
            required List<dynamic> exercises,
            Value<int> id = const Value.absent(),
          }) =>
              WorkoutPlanCompanion.insert(
            name: name,
            exercises: exercises,
            id: id,
          ),
        ));
}

class $$WorkoutPlanTableProcessedTableManager extends ProcessedTableManager<
    _$AppDb,
    $WorkoutPlanTable,
    WorkoutPlanData,
    $$WorkoutPlanTableFilterComposer,
    $$WorkoutPlanTableOrderingComposer,
    $$WorkoutPlanTableProcessedTableManager,
    $$WorkoutPlanTableInsertCompanionBuilder,
    $$WorkoutPlanTableUpdateCompanionBuilder> {
  $$WorkoutPlanTableProcessedTableManager(super.$state);
}

class $$WorkoutPlanTableFilterComposer
    extends FilterComposer<_$AppDb, $WorkoutPlanTable> {
  $$WorkoutPlanTableFilterComposer(super.$state);
  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get exercises => $state.composableBuilder(
          column: $state.table.exercises,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$WorkoutPlanTableOrderingComposer
    extends OrderingComposer<_$AppDb, $WorkoutPlanTable> {
  $$WorkoutPlanTableOrderingComposer(super.$state);
  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get exercises => $state.composableBuilder(
      column: $state.table.exercises,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SpecificWorkoutTableInsertCompanionBuilder = SpecificWorkoutCompanion
    Function({
  required String name,
  required DateTime date,
  required List<dynamic> exercises,
  Value<int> rowid,
});
typedef $$SpecificWorkoutTableUpdateCompanionBuilder = SpecificWorkoutCompanion
    Function({
  Value<String> name,
  Value<DateTime> date,
  Value<List<dynamic>> exercises,
  Value<int> rowid,
});

class $$SpecificWorkoutTableTableManager extends RootTableManager<
    _$AppDb,
    $SpecificWorkoutTable,
    SpecificWorkoutData,
    $$SpecificWorkoutTableFilterComposer,
    $$SpecificWorkoutTableOrderingComposer,
    $$SpecificWorkoutTableProcessedTableManager,
    $$SpecificWorkoutTableInsertCompanionBuilder,
    $$SpecificWorkoutTableUpdateCompanionBuilder> {
  $$SpecificWorkoutTableTableManager(_$AppDb db, $SpecificWorkoutTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SpecificWorkoutTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SpecificWorkoutTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SpecificWorkoutTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> name = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<List<dynamic>> exercises = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SpecificWorkoutCompanion(
            name: name,
            date: date,
            exercises: exercises,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String name,
            required DateTime date,
            required List<dynamic> exercises,
            Value<int> rowid = const Value.absent(),
          }) =>
              SpecificWorkoutCompanion.insert(
            name: name,
            date: date,
            exercises: exercises,
            rowid: rowid,
          ),
        ));
}

class $$SpecificWorkoutTableProcessedTableManager extends ProcessedTableManager<
    _$AppDb,
    $SpecificWorkoutTable,
    SpecificWorkoutData,
    $$SpecificWorkoutTableFilterComposer,
    $$SpecificWorkoutTableOrderingComposer,
    $$SpecificWorkoutTableProcessedTableManager,
    $$SpecificWorkoutTableInsertCompanionBuilder,
    $$SpecificWorkoutTableUpdateCompanionBuilder> {
  $$SpecificWorkoutTableProcessedTableManager(super.$state);
}

class $$SpecificWorkoutTableFilterComposer
    extends FilterComposer<_$AppDb, $SpecificWorkoutTable> {
  $$SpecificWorkoutTableFilterComposer(super.$state);
  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get exercises => $state.composableBuilder(
          column: $state.table.exercises,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$SpecificWorkoutTableOrderingComposer
    extends OrderingComposer<_$AppDb, $SpecificWorkoutTable> {
  $$SpecificWorkoutTableOrderingComposer(super.$state);
  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get exercises => $state.composableBuilder(
      column: $state.table.exercises,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ExerciseDetailsTableInsertCompanionBuilder = ExerciseDetailsCompanion
    Function({
  required String name,
  required int sets,
  required int reps,
  required bool isDropset,
  required bool isToFailure,
  required String planId,
  required String id,
  Value<int> rowid,
});
typedef $$ExerciseDetailsTableUpdateCompanionBuilder = ExerciseDetailsCompanion
    Function({
  Value<String> name,
  Value<int> sets,
  Value<int> reps,
  Value<bool> isDropset,
  Value<bool> isToFailure,
  Value<String> planId,
  Value<String> id,
  Value<int> rowid,
});

class $$ExerciseDetailsTableTableManager extends RootTableManager<
    _$AppDb,
    $ExerciseDetailsTable,
    ExerciseDetail,
    $$ExerciseDetailsTableFilterComposer,
    $$ExerciseDetailsTableOrderingComposer,
    $$ExerciseDetailsTableProcessedTableManager,
    $$ExerciseDetailsTableInsertCompanionBuilder,
    $$ExerciseDetailsTableUpdateCompanionBuilder> {
  $$ExerciseDetailsTableTableManager(_$AppDb db, $ExerciseDetailsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ExerciseDetailsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ExerciseDetailsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$ExerciseDetailsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> name = const Value.absent(),
            Value<int> sets = const Value.absent(),
            Value<int> reps = const Value.absent(),
            Value<bool> isDropset = const Value.absent(),
            Value<bool> isToFailure = const Value.absent(),
            Value<String> planId = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ExerciseDetailsCompanion(
            name: name,
            sets: sets,
            reps: reps,
            isDropset: isDropset,
            isToFailure: isToFailure,
            planId: planId,
            id: id,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String name,
            required int sets,
            required int reps,
            required bool isDropset,
            required bool isToFailure,
            required String planId,
            required String id,
            Value<int> rowid = const Value.absent(),
          }) =>
              ExerciseDetailsCompanion.insert(
            name: name,
            sets: sets,
            reps: reps,
            isDropset: isDropset,
            isToFailure: isToFailure,
            planId: planId,
            id: id,
            rowid: rowid,
          ),
        ));
}

class $$ExerciseDetailsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDb,
    $ExerciseDetailsTable,
    ExerciseDetail,
    $$ExerciseDetailsTableFilterComposer,
    $$ExerciseDetailsTableOrderingComposer,
    $$ExerciseDetailsTableProcessedTableManager,
    $$ExerciseDetailsTableInsertCompanionBuilder,
    $$ExerciseDetailsTableUpdateCompanionBuilder> {
  $$ExerciseDetailsTableProcessedTableManager(super.$state);
}

class $$ExerciseDetailsTableFilterComposer
    extends FilterComposer<_$AppDb, $ExerciseDetailsTable> {
  $$ExerciseDetailsTableFilterComposer(super.$state);
  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sets => $state.composableBuilder(
      column: $state.table.sets,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get reps => $state.composableBuilder(
      column: $state.table.reps,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isDropset => $state.composableBuilder(
      column: $state.table.isDropset,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isToFailure => $state.composableBuilder(
      column: $state.table.isToFailure,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get planId => $state.composableBuilder(
      column: $state.table.planId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ExerciseDetailsTableOrderingComposer
    extends OrderingComposer<_$AppDb, $ExerciseDetailsTable> {
  $$ExerciseDetailsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sets => $state.composableBuilder(
      column: $state.table.sets,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get reps => $state.composableBuilder(
      column: $state.table.reps,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isDropset => $state.composableBuilder(
      column: $state.table.isDropset,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isToFailure => $state.composableBuilder(
      column: $state.table.isToFailure,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get planId => $state.composableBuilder(
      column: $state.table.planId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDbManager {
  final _$AppDb _db;
  _$AppDbManager(this._db);
  $$ExerciseTableTableManager get exercise =>
      $$ExerciseTableTableManager(_db, _db.exercise);
  $$WorkoutPlanTableTableManager get workoutPlan =>
      $$WorkoutPlanTableTableManager(_db, _db.workoutPlan);
  $$SpecificWorkoutTableTableManager get specificWorkout =>
      $$SpecificWorkoutTableTableManager(_db, _db.specificWorkout);
  $$ExerciseDetailsTableTableManager get exerciseDetails =>
      $$ExerciseDetailsTableTableManager(_db, _db.exerciseDetails);
}
