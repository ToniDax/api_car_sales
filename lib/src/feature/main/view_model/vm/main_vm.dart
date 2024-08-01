import 'package:api_car_hometask/src/feature/main/view_model/data/repositoty/main_repo.dart';
import 'package:flutter/cupertino.dart';
import '../data/entity/get_all_image_model.dart';
class MainVm with ChangeNotifier{
  List<GetAllImageModel> allCars = [];
  ScrollController scrollController = ScrollController();
  int limit = 0;
  bool isLoading = false;

  MainVm(){
    scrollController.addListener(getScrollEnd);
  }

  PageController controller = PageController(
      viewportFraction: 2
  );

  TextEditingController searchController = TextEditingController();


  void getScrollEnd() async{
    if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
      isLoading = true;
      notifyListeners();
      await getData();
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getData() async {
    List<GetAllImageModel> newImages = await MainRepo().getAllImages(limit: limit)?? [];
    allCars.addAll(newImages);
    limit++;
  }

  @override
  void dispose(){
    scrollController.removeListener(getScrollEnd);
    scrollController.dispose();
    super.dispose();
  }
}