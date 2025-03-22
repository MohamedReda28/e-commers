abstract class Failur {
  final String message;

  Failur(this.message);
}

class ServerFailure extends Failur {
  ServerFailure(super.message);
}
