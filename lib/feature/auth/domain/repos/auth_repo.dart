import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/feature/auth/domain/entities/user_entitiy.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntitiy>> createUserWithEmailAndPassword(
    String email,
    String password,
  );
}
