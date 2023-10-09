import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Controller/HomeController.dart';
import '../../../Controller/CheckOutController.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/SearchController.dart';
import 'package:event_booking/View/Pages/Favorite/favorite.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:event_booking/Controller/favoriteController.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SearchResult extends StatelessWidget {
  dynamic data;
  SearchResult({super.key, required this.data});
  RangeValues rangeValues = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    final RangeLabels labels =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.white,
            AppColors.backPink,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            AppbarCustom(
              media: media,
              title: '\"${data['search']}\"',
              isSufix: true,
              sufix: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        _showBottomSheet(context, media);
                      },
                      child: Image.asset('assets/home/nearby.png')),
                  SizedBox(
                    width: media.width * 0.02,
                  ),
                  Image.asset('assets/home/menu.png'),
                ],
              ),
            ),
            Container(
              height: media.height * 0.80,
              width: media.height,
              child: GetBuilder<HomeController>(
                init: HomeController(),
                builder: (homeController) {
                  return ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    itemCount: homeController.bestForYou.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteName.searchResultMapView,
                              arguments: {
                                "image": homeController.bestForYou[index].image
                                    .toString(),
                                "title": homeController.bestForYou[index].title
                                    .toString(),
                                "loc": homeController.bestForYou[index].loc
                                    .toString(),
                                "date": homeController.bestForYou[index].date
                                    .toString(),
                                "country": homeController
                                    .bestForYou[index].country
                                    .toString(),
                                "event": homeController.bestForYou[index].event
                                    .toString(),
                                "amount": homeController
                                    .bestForYou[index].amount
                                    .toString(),
                                "search": data['search'].toString(),
                              });
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: media.height * 0.2,
                          width: media.width * 0.8,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: media.height * 0.14,
                                width: media.width * 0.25,
                                decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        '${homeController.bestForYou[index].image}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                    Icons
                                                        .wallet_giftcard_outlined,
                                                    color: AppColors.blue,
                                                    size: 18),
                                                Text(
                                                  '${homeController.bestForYou[index].date}',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Obx(
                                            () => GestureDetector(
                                                onTap: () {
                                                  homeController
                                                      .isFavoriteState(index);
                                                },
                                                child: homeController
                                                        .isFavorite(index)
                                                    ? Icon(
                                                        Icons.favorite,
                                                        color:
                                                            AppColors.favorite,
                                                      )
                                                    : Icon(
                                                        Icons.favorite_border,
                                                      )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: media.height * 0.015,
                                      ),
                                      Text(
                                        '${homeController.bestForYou[index].title}',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: media.height * 0.015,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${homeController.bestForYou[index].loc}',
                                            style: TextStyle(
                                                color: AppColors.grey),
                                          ),
                                          Text(
                                            homeController.bestForYou[index]
                                                        .amount !=
                                                    'FREE'
                                                ? '\$${homeController.bestForYou[index].amount}'
                                                : 'FREE',
                                            style: TextStyle(
                                                color: AppColors.blue),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  String _selectedOption = 'Free';

  void _showBottomSheet(BuildContext context, Size media) {
    showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: media.height*0.02,),
                Center(
                  child: Text(
                    'Filter',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(height: 16.0),
                GetBuilder<SearchController>(
                  init: SearchController(),
                  builder: (searchController) {
                    return Container(
                      height: media.height * 0.1,
                      width: media.width,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: searchController.filterList.length,
                        controller: PageController(
                          viewportFraction: 0.35,
                        ),
                        onPageChanged: (index) {
                          searchController.select.value = index;
                        },
                        itemBuilder: (context, index) {
                          return Obx(
                            () => RadioListTile(
                              value: index,
                              groupValue: searchController.select.value,
                              onChanged: (val) {
                                searchController.select.value = index;
                              },
                              title: Text(
                                '${searchController.filterList[index]}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                RangeSlider(
                    divisions: 8,
                    values: rangeValues,
                    onChanged: (value) {
                      value = rangeValues;
                    }),
                Text(
                  'Catagory',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Container(
                  height: media.height * 0.1,
                  width: media.width,
                  child: GetBuilder<FavoriteController>(
                      init: FavoriteController(),
                      builder: (favoriteController) {
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: favoriteController.favoritesList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: media.width * 0.35,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.backPink,
                                  border: Border.all(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          '${favoriteController.favoritesList[index].image}'),
                                      SizedBox(
                                        width: media.width * 0.02,
                                      ),
                                      Text(
                                          '${favoriteController.favoritesList[index].name}')
                                    ],
                                  ),
                                ),
                              );
                            });
                      }),
                ),
                Text(
                  'Date',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  children: [
                    DatePicker(
                      media: media,
                    ),
                    SizedBox(
                      width: media.width * 0.02,
                    ),
                    DatePicker(
                      media: media,
                    ),
                  ],
                ),
                Text(
                  'Location',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                TextFeildCustom(
                  hint: 'City',
                  sufixIcon: Icons.arrow_drop_down,
                  prefix: false,
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                RoundButtonCustom(
                  title: 'Apply Filter',
                ),
                                SizedBox(
                  height: media.height * 0.02,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DatePicker extends StatefulWidget {
  Size media;
  DatePicker({Key? key, required this.media}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  List<DateTime> _dates = [
    DateTime(1999, 10, 14),
    DateTime.now(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: widget.media.height * 0.07,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_dates.isNotEmpty
                  ? _formatDate(_dates[0])
                  : 'Select a date'), // Display the selected date here
              GestureDetector(
                onTap: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: _dates.isNotEmpty ? _dates[0] : DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );

                  if (selectedDate != null) {
                    setState(() {
                      _dates = [selectedDate];
                    });
                  }
                },
                child: Icon(Icons.calendar_month),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
