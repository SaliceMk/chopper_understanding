import 'package:json_annotation/json_annotation.dart';

part 'reviews.model.g.dart';


@JsonSerializable(explicitToJson: true)
class ReviewsResponseModel {
    ReviewsResponseModel({
        required this.data,
    });

    final List<Review> data;
  
      factory ReviewsResponseModel.fromJson(Map<String, dynamic> json) => _$ReviewsResponseModelFromJson(json);

      Map<String, dynamic> toJson() => _$ReviewsResponseModelToJson(this);

}

@JsonSerializable(explicitToJson: true)
class Review {
    Review({
        required this.id,
        required this.attributes,
    });

    final int id;
    final ReviewAttributes attributes;

    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
    Map<String, dynamic> toJson() => _$ReviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReviewAttributes {
    ReviewAttributes({
        required this.title,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.image,
        
    });

    final String title;
    final String description;
    final DateTime createdAt;
    final DateTime updatedAt;
    final DateTime publishedAt;
    final ReviewImage image;
   

    factory ReviewAttributes.fromJson(Map<String, dynamic> json) => _$ReviewAttributesFromJson(json);
    Map<String, dynamic> toJson() => _$ReviewAttributesToJson(this);

}





@JsonSerializable(explicitToJson: true)
class ReviewImage {
    ReviewImage({required this.data,});

    final ImageData data;
    factory ReviewImage.fromJson(Map<String, dynamic> json) => _$ReviewImageFromJson(json);
    Map<String, dynamic> toJson() => _$ReviewImageToJson(this);
}


@JsonSerializable(explicitToJson: true)
class ImageData {
    ImageData({
        required this.id,
        required this.attributes,
    });

    final int id;
    final ImageAttributes attributes;

    factory ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);
    Map<String, dynamic> toJson() => _$ImageDataToJson(this);

}

@JsonSerializable(explicitToJson: true)
class ImageAttributes {
    ImageAttributes({
        
        required this.alternativeText,
        required this.width,
        required this.height,
        required this.size,
        required this.url,
        
    });

   
    final String alternativeText;
    final int width;
    final int height;
    final double size;
    final String url;

    factory ImageAttributes.fromJson(Map<String, dynamic> json) => _$ImageAttributesFromJson(json);
    Map<String, dynamic> toJson() => _$ImageAttributesToJson(this);
}

