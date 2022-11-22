import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppProvider extends ChangeNotifier {

  final List<Map<String, dynamic>> _world_data = [];
  List<Map<String, dynamic>> get world_data => _world_data;

  String? loadingText;
  String? errorText;

  bool get isLoading => loadingText != null;
  bool get hasError => errorText != null;


  Future<void> readJson() async {
    final response = await rootBundle.loadString('assets/world_data.json');
    final data = await json.decode(response) as Map;

    data.entries.forEach((MapEntry<dynamic, dynamic> m) {
      final data = m.value['data'] as List;
      final recentData = data.where(
            (e) => e['year'] as double >= 2017,
      );

      final mappedData = {
        'region': m.key.toString(),
        'data': recentData
      };

      _world_data.add(mappedData);
      notifyListeners();

    });
  }
}
