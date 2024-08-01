

import 'package:api_car_hometask/riverpood.dart';
import 'package:api_car_hometask/src/core/api/api_contants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/api/api_dart.dart';
import '../entity/get_all_image_model.dart';

final mainFetchData = FutureProvider((ref)async{
  final getResult = ref.read(mainVM);
  return getResult.getData();
}
);
final class MainRepo{
  Future<List<GetAllImageModel>?>getAllImages({
    required int limit
}) async{
    String? result = await Api.GET(ApiConstants.apiGetAllImages, ApiConstants.paramsGetAllCars(limit: limit));
   if(result != null){
     List<GetAllImageModel>getAllImageModel = getAllImageModelFromJson( result) as List<GetAllImageModel> ;
     return getAllImageModel;

   }else{
     return null;
   }

  }

}