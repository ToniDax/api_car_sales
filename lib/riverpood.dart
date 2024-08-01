

import 'package:api_car_hometask/src/feature/main/view_model/vm/main_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainVM = ChangeNotifierProvider((ref){
  return MainVm();
});