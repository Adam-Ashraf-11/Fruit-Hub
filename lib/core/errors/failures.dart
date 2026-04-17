abstract class Failures {
  final String message;
  const Failures(this.message);
}

//! Server Failures
class ServerFailure extends Failures {
  const ServerFailure(super.message);
}