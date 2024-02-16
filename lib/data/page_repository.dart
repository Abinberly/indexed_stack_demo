abstract class Repository {
  List<String> fetchData();
}

class PageRepository implements Repository {
  @override
  List<String> fetchData() {
    return ['Page 1', 'Page 2', 'Page 3'];
  }
}
