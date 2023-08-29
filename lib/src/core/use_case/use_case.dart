import 'package:clean_arh/src/core/error_journal/error_journal.dart';
import 'package:dartz/dartz.dart';

// тип Type - передаем клас который мы должны будем получить
// Params - передаем значение которое будет передано в аргументы
// если нет параметров, то в дженерике указывать NoParams
abstract interface class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
