import 'package:collection/collection.dart';

enum Meses {
  Ene,
  Feb,
  Mar,
  Abr,
  May,
  Jun,
  Jul,
  Ago,
  Sep,
  Oct,
  Nov,
  Dic,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Meses):
      return Meses.values.deserialize(value) as T?;
    default:
      return null;
  }
}
