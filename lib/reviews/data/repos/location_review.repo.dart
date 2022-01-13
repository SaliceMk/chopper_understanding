

import 'package:reviews_trial/core/data/models/error_response.dart';
import 'package:reviews_trial/core/error/error_response.exception.dart';
import 'package:reviews_trial/reviews/data/models/reviews/reviews.model.dart';
import 'package:reviews_trial/services/chopper_services/api.service.dart';

class LocationReviewRepo{

  LocationReviewRepo({required this.apiService});

  final APIService apiService;

  Future<ReviewsResponseModel> getReviews() async{
    try{
        final r=await apiService.fetchReviews();

        if(!r.isSuccessful){
          final error=r.error as Map<String,dynamic>;
          final e=ErrorResponse.fromJson(error);

          throw ErrorResponseException(
            statusCode: e.error.status,
            message: e.error.message,
          );
        }
        return r.body!;
    } catch(e){
      rethrow;
    }
  } 
}