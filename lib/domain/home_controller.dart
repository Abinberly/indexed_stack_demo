import 'package:get/get.dart';

import '../data/page_repository.dart';

class HomeController extends GetxController{
  final _selectedIndex = 0.obs;
  final _pages = <String>[].obs ;
  int get selectedIndex => _selectedIndex.value;
  List<String>get pages => _pages.toList();
 
  set selectedIndex(int value) => _selectedIndex.value = value;

  void fetchData(Repository repository) {
    _pages.assignAll(repository.fetchData());
  }
}