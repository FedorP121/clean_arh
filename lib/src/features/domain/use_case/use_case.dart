import 'package:clean_arh/src/features/domain/entities/tovars_bitrix.dart';
import 'package:dartz/dartz.dart';

import 'package:clean_arh/src/core/error_journal/error_journal.dart';
import 'package:clean_arh/src/core/use_case/use_case.dart';

import 'package:clean_arh/src/features/domain/repository/tovars_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUser implements UseCase<TovarsBitrix, NoParams> {
  final UserRepository userRepository;
  GetUser({
    required this.userRepository,
  });
  @override
  Future<Either<Failure, TovarsBitrix>> call(NoParams params) async {
    return await userRepository.postTovarsBitrix();
  }
}
