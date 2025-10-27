abstract class AppException implements Exception {
  final String message;
  const AppException([this.message = 'An unknown error occurred']);
}

class ServerException extends AppException {
  const ServerException([super.message = 'Server error occurred']);
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'Network error occurred']);
}
