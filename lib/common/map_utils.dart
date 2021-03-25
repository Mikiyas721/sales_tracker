class MapUtils {
  static Map<String, String> flatMap(Map<String, dynamic> map) {
    final Map<String, String> flat = {};

    map.keys.forEach((key) {
      final value = map[key];
      if (value is Map) {
        final flatten = flatMap(value);
        flatten.keys.forEach((subKey) {
          flat['$key.$subKey'] = flatten[subKey];
        });
      } else if (value is List) {
        final Map<String, dynamic> listMap = {};
        int index = 0;
        value.forEach((element) {
          listMap[index.toString()] = element;
          index++;
        });
        final flatten = flatMap(listMap);
        flatten.keys.forEach((subKey) {
          flat['$key.$subKey'] = flatten[subKey];
        });
      } else
        flat[key] = value;
    });
    return flat;
  }
  
  static String toQueryUrl(Map<String, dynamic> map){
    final str=map.keys.where((key) => map[key]!=null).map((key) => "$key=${map[key]}").join("&");
    return str.replaceAll(RegExp(r'\+'), '%2B')
    .replaceAll(' ', '%20');
  }
}
