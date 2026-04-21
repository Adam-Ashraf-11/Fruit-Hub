import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/exeptions.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/services/database_service.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/core/utils/backend_endpoints.dart';
import 'package:e_commerce_app/feature/auth/data/models/user_model.dart';
import 'package:e_commerce_app/feature/auth/domain/entities/user_entitiy.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImp({
    required this.firebaseAuthService,
    required this.databaseService,
  });

  //! deletUser
  Future<void> deletUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  //! createUserWithEmailAndPassword
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (user != null) {
        var userEntity = UserEntity(email: email, uId: user.uid, name: name);
        await addUserData(user: userEntity);
        return right(userEntity);
      } else {
        return left(ServerFailure('user is null'));
      }
    } on CustomExeptions catch (e) {
      await deletUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deletUser(user);

      log('Exception in  AuthRepoImp : ${e.toString()}');
      return left(ServerFailure(e.toString()));
    }
  }

  //! signInWithEmailAndPassword
  @override
  Future<Either<Failures, UserEntity>> signinWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = await getUserData(uId: user!.uid);
      return right(userEntity);
    } on CustomExeptions catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in  AuthRepoImp : ${e.toString()}');
      return left(ServerFailure(e.toString()));
    }
  }

  //! signInWithGoogle
  @override
  Future<Either<Failures, UserEntity>> signinWithGoogle() async {
    User? user;
    try {
      var user = await firebaseAuthService.signInWithGoogle();

      if (user != null) {
        var userEntity = UserModel.fromFirebaseUser(user);
        var isUserExist = await databaseService.checkIfDataExist(
          path: BackendEndpoints.isUserExist,
          documentId: user.uid,
        );
        if (isUserExist) {
          await getUserData(uId: user.uid);
        } else {
          await addUserData(user: userEntity);
        }
        return right(userEntity);
      } else {
        await deletUser(user);
        return left(ServerFailure('حدث خطاء في تسجيل الدخول '));
      }
    } on CustomExeptions catch (e) {
      await deletUser(user);
      return left(ServerFailure(e.message));
    }
  }

  //! signInWithFacebook
  @override
  Future<Either<Failures, UserEntity>> signinWithFacebook() async {
    User? user;
    try {
      var user = await firebaseAuthService.signInWithFacebook();

      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } catch (e) {
      log('Exception in  AuthRepoImp : ${e.toString()}');
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<dynamic> addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendEndpoints.userDate,
      data: user.toMap(),
      documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var data = await databaseService.getData(
      path: BackendEndpoints.getUserData,
      documentId: uId,
    );
    return UserModel.fromJson(data);
  }
}
