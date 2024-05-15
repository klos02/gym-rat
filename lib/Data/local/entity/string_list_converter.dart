
import 'package:drift/drift.dart';

class StringListConverter extends TypeConverter<List<dynamic>, String> {
    const StringListConverter();

    @override
    List<String> fromSql(String? fromDb) {
      if (fromDb == null || fromDb.isEmpty) {
        return [];
      }
      return fromDb.split(';');
    }

    @override
    String toSql(List<dynamic>? value) {
      if (value == null || value.isEmpty) {
        return '';
      }
      return value.join(';');
    }
}