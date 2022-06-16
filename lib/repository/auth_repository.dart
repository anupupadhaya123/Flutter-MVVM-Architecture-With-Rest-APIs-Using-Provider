
import 'package:flutter_application/data/network/base_api_services.dart';
import 'package:flutter_application/data/network/network_api_services.dart';

import '../resources/components/app_url.dart';

class AuthRepository {

final BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi (dynamic data)async {
    
    try{

      dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
      return response; 

    }catch(e){
      throw e;
    }
  }


  Future<dynamic> signUpApi (dynamic data)async {
    
    try{

      dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerApiEndPoint, data);
      return response; 

    }catch(e){
      throw e;
    }
  }

}