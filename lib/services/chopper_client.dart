import 'package:chopper/chopper.dart';
import 'package:reviews_trial/reviews/data/models/reviews/reviews.model.dart';
import 'package:reviews_trial/services/helper/generic_json_converter.dart';

import 'chopper_services/api.service.dart';

final chopper= ChopperClient(
  baseUrl: "https://strapi-tip5b.ondigitalocean.app/api",
  services: [
     // Create and pass an instance of the generated service to the client
      APIService.create()
  ],
  converter: GenericJsonConvertor({
      ReviewsResponseModel: (json)=> ReviewsResponseModel.fromJson(json),
  }),
  errorConverter: const JsonConverter(),
  interceptors: [HttpLoggingInterceptor()
  ]

);