import 'package:clean_arh/src/core/error_journal/error_journal.dart';
import 'package:clean_arh/src/features/domain/entities/tovars_bitrix.dart';

import 'package:dartz/dartz.dart';

// описали метод getUser()
// этот репозиторий нужен для того что бы в последущим имплементироваться в слой дата

abstract interface class UserRepository {
  Future<Either<Failure, TovarsBitrix>> postTovarsBitrix();
}
