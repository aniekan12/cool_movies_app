import 'package:coolmovies/common/io/logger/logger.dart';

final logger = LoggerFactory.getLogger();

class CoolMoviesException implements Exception {
  final String message;

  CoolMoviesException(this.message) {
    logger.error(message);
  }
  @override
  String toString() => message;
}
