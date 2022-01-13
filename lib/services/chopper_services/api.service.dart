import 'package:chopper/chopper.dart';
import 'package:reviews_trial/reviews/data/models/reviews/reviews.model.dart';

part 'api.service.chopper.dart';

@ChopperApi()
abstract class APIService extends ChopperService{

  static APIService create({ChopperClient? client})=> _$APIService(client);

  @Get(path: '/reviews')
  Future<Response<ReviewsResponseModel>> fetchReviews({
      @Query("populate") String getAllField="*",
      @Query("populate") String getImage="image",
  });
}