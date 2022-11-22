
import 'dart:convert';

import 'package:codewars2/models/region.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_maps/maps.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  final List<Region> _world_data = [];

  late MapShapeSource dataSource;

  Future<void> readJson() async {
    final response = await rootBundle.loadString('assets/world_data.json');
    final data = await json.decode(response) as Map;

    data.entries.forEach((MapEntry<dynamic, dynamic> m) {
      final data = m.value['data'] as List;
      final recentData = data.where(
        (e) => e['year'] as double >= 2017,
      );

      if(m.key.toString() != '') {
        final mappedData = Region.fromJson({
          'name': m.key.toString(),
          'data': recentData
        });



        setState(() {
          _world_data.add(mappedData);
        });
      }
    });

    setState(() {
      dataSource = MapShapeSource.asset(
        'assets/world_map.json',
        shapeDataField: 'name',
        dataCount: _world_data.length,
        primaryValueMapper: (int index) {
          return _world_data[index].name!;
        },
        shapeColorValueMapper: (int index) => data[index].count,
        shapeColorMappers: [
          MapColorMapper(
            from: 0,
            to: 100,
            color: Colors.red,
            minOpacity: 0.2,
            maxOpacity: 0.4,
          ),
          MapColorMapper(
            from: 101,
            to: 300,
            color: Colors.green,
            minOpacity: 0.4,
            maxOpacity: 0.6,
          ),
        ],
        //shapeColorValueMapper: (int index) => Color(int.parse(_world_data[index].name!))
      );
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SfMaps(
        layers: <MapLayer>[
          MapShapeLayer(
            source: dataSource,
          ),
        ],
      ),
    );
  }
}
