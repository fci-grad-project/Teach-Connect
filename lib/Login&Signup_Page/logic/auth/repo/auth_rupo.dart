import 'package:dartz/dartz.dart';
import 'package:graduation_project/Login&Signup_Page/logic/auth/entity/user_entity.dart';
import 'package:graduation_project/Login&Signup_Page/logic/error/failler.dart';

abstract class AuthRepo {
  Future<Either<Failler, UserEntity>> CreateUserWithEmailAndPassword(
      String email, String password, String name, String role, String id);

  Future<Either<Failler, UserEntity>> signInWithEmailAndPassword(
      String email, String password);
  Future<Either<Failler, UserEntity>> signInWithGoogle();
  Future<Either<Failler, UserEntity>> signInWithFacebook();
}
