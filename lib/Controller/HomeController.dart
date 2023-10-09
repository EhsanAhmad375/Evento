import 'package:get/get.dart';
import 'package:event_booking/Model/HomeModel.dart';
import 'package:event_booking/View/Pages/Home/Home.dart';

class HomeController extends GetxController{
  RxList<HomeModel> trendingList=<HomeModel>[
    HomeModel(title: 'KPOP Award Indonesia',image: 'assets/home/kpop.png',loc: 'Jakarta',date: 'Dec 20',amount: '120',country: 'Indonesia'),
    HomeModel(title: 'Color Festival',image: 'assets/home/colorf.png',loc: 'Lahore',date: 'Dec 31',amount: 'FREE',country: 'Pakistan')
  ].obs;
  RxList<HomeModel> bestForYou=<HomeModel>[
    HomeModel(title: 'Artex | Visual Design Exhibitio',image: 'assets/home/artx.png',loc: 'Jakarta Expo Center',date: 'Dec 22-31|11am-5pm',amount: '5',ticketsType: 'Regular'),
    HomeModel(title: 'Classic Vespa Festival 2021-Bali',image: 'assets/home/classix.png',loc: 'I Wavan Dipta Statium',date: 'Dec 20-30',amount: 'FREE',ticketsType: 'VIP'),
    HomeModel(title: 'Artex | Visual Design Exhibitio',image: 'assets/home/artx.png',loc: 'Jakarta Expo Center',date: 'Dec 22-31|11am-5pm',amount: '5',ticketsType: 'Special'),
  ].obs;
  RxSet<int> favorite=<int>{}.obs;
  void isFavoriteState(int index) {
    if (favorite.contains(index)) {
      favorite.remove(index);
    } else {
      favorite.add(index);
    }
  }

  bool isFavorite(int index) {
    return favorite.contains(index);
  } 


  RxList<String> messageList=<String>[].obs;

  @override
  void update([List<Object>? ids, bool condition = true]) {
    
    messageList;
    super.update(ids, condition);
    
  }

}