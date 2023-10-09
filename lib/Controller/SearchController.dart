import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SearchController extends GetxController {
  RxInt select=0.obs;
  RxList<String> historyList = <String>[
    'Sports',
    'Art Exhibition',
    'Art',
'Festival',
    'Jakarta',
    'Party',
  ].obs;
  RxList<String> historydown = <String>[
    'Festival',
    'Jakarta',
    'Party',
  ].obs;
  RxList<String> filterList = <String>[
    'Paid',
    'Free',
  ].obs;




}
