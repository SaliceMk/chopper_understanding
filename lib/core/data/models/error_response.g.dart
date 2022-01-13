// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      error: StrapiError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

StrapiError _$StrapiErrorFromJson(Map<String, dynamic> json) => StrapiError(
      status: json['status'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$StrapiErrorToJson(StrapiError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
