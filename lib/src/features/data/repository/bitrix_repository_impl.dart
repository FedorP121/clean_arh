import 'package:clean_arh/src/core/error_journal/error_journal.dart';
import 'package:clean_arh/src/features/data/data_sourse/bitrix_data_sourse.dart';
import 'package:clean_arh/src/features/domain/entities/tovars_bitrix.dart';

import 'package:clean_arh/src/features/domain/repository/tovars_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserDataSources userDataSources;

  UserRepositoryImpl(this.userDataSources);

  @override
  Future<Either<Failure, TovarsBitrix>> postTovarsBitrix() async {
    return await _postTovarsBitrix();
  }

  Future<Either<Failure, TovarsBitrix>> _postTovarsBitrix() async {
    try {
      final userModel = await userDataSources.postTovarsBitrix();
      return Right(userModel);
    } on Failure catch (e) {
      throw Left(ServerError(error: e));
    }
  }
}
