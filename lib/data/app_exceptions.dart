class AppException implements Exception {
  // ignore: prefer_typing_uninitialized_variables
  final _message;
  // ignore: prefer_typing_uninitialized_variables
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message ])
      : super(message, 'Error During Communication');
}


class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message, 'Invalid Request');
}


class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
      : super(message, 'Unauthorized Request');
}


class InvalidInputException extends AppException {
  InvalidInputException([String? message])
      : super(message, 'Invalid Input');
}

