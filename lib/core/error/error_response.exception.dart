import 'dart:html';

class ErrorResponseException implements Exception{
  ErrorResponseException({this.statusCode, required this.message});

  final int? statusCode;
  final String message;

  @override
  String toString()=> message;
}