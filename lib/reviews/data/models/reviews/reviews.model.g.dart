// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewsResponseModel _$ReviewsResponseModelFromJson(
        Map<String, dynamic> json) =>
    ReviewsResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReviewsResponseModelToJson(
        ReviewsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      id: json['id'] as int,
      attributes:
          ReviewAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

ReviewAttributes _$ReviewAttributesFromJson(Map<String, dynamic> json) =>
    ReviewAttributes(
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      image: ReviewImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewAttributesToJson(ReviewAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'publishedAt': instance.publishedAt.toIso8601String(),
      'image': instance.image.toJson(),
    };

ReviewImage _$ReviewImageFromJson(Map<String, dynamic> json) => ReviewImage(
      data: ImageData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewImageToJson(ReviewImage instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      id: json['id'] as int,
      attributes:
          ImageAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

ImageAttributes _$ImageAttributesFromJson(Map<String, dynamic> json) =>
    ImageAttributes(
      alternativeText: json['alternativeText'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      size: (json['size'] as num).toDouble(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$ImageAttributesToJson(ImageAttributes instance) =>
    <String, dynamic>{
      'alternativeText': instance.alternativeText,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'url': instance.url,
    };
