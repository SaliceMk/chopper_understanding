

import 'package:json_annotation/json_annotation.dart';


part 'error_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorResponse{
  ErrorResponse({required this.error});

  final StrapiError error;

  factory ErrorResponse.fromJson(Map<String,dynamic> json)=>_$ErrorResponseFromJson(json);
  Map<String, dynamic> toJson()=>_$ErrorResponseToJson(this);
}


@JsonSerializable()
class StrapiError{
  StrapiError({required this.status, required this.message});

    final int status;
    final String message;
  factory StrapiError.fromJson(Map<String, dynamic>json)=> _$StrapiErrorFromJson(json);
  Map<String,dynamic> toJson()=>_$StrapiErrorToJson(this);
    
}