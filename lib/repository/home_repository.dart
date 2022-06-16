import '../data/network/base_api_services.dart';
import '../data/network/network_api_services.dart';import '../model/movies_model.dart';

import '../resources/components/app_url.dart';

class HomeRepository {

  final BaseApiServices _apiServices = NetworkApiService();


  Future<MovieListModel> fetchMoviesList ()async {

    try{

      dynamic response = await _apiServices.getGetPostApiResponse(AppUrl.moviesListEndPoint);
      return response = MovieListModel.fromJson(response);

    }catch(e){
      throw e;
    }
  }

}