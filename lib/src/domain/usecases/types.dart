import 'package:dartz/dartz.dart';

abstract class FutureUseCase<FailureType, ReturnType, ParamsType> {
  const FutureUseCase();

  Future<Either<FailureType, ReturnType>> call(ParamsType params);
}

abstract class StreamUseCase<FailureType, ReturnType, ParamsType> {
  const StreamUseCase();

  Stream<Either<FailureType, ReturnType>> call(ParamsType params);
}
