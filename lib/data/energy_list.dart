import 'dart:ui';

import 'package:syncfusion_flutter_maps/maps.dart';

final List<String> energyLisst = ['Fossil Fuels', 'Coil', 'Oil', 'Gas', 'Low-carbon', 'Nuclear', ''];

final List<Map<String, dynamic>> energyList = [
  {
    'asset': '',
    'name': 'Fossil Fuels',
    'title': 'Electricity generation from fossil fuels, 2021',
    'description': 'Electricity generation from coal, oil and gas sources combined.',
    'shapeColorMappers': <MapColorMapper>[
      const MapColorMapper(
        from: 0,
        to: 50,
        color: Color(0xFFFFFFD4),
        minOpacity: 0.2,
        maxOpacity: 1,
      ),
      const MapColorMapper(
        from: 50,
        to: 100,
        color: Color(0xFFFEE392),
        minOpacity: 0.2,
        maxOpacity: 1,
      ),
      const MapColorMapper(
        from: 100,
        to: 200,
        color: Color(0xFFFEC44F),
        minOpacity: 0.2,
        maxOpacity: 1,
      ),
      const MapColorMapper(
        from: 200,
        to: 400,
        color: Color(0xFFFE9928),
        minOpacity: 0.2,
        maxOpacity: 1,
      ),
      const MapColorMapper(
        from: 400,
        to: 600,
        color: Color(0xFFEB7013),
        minOpacity: 0.2,
        maxOpacity: 1,
      ),
      const MapColorMapper(
        from: 400,
        to: 600,
        color: Color(0xFFEB7013),
        minOpacity: 0.2,
        maxOpacity: 1,
      ),
    ]
  },
  {
    'asset': '',
    'name': 'Coil',
    'title': 'Electricity generation from coal',
    'description': ''
  },
  {
    'asset': '',
    'name': 'Oil',
    'title': 'Electricity generation from oil',
    'description': ''
  },
  {
    'asset': '',
    'name': 'Gas',
    'title': 'Electricity generation from gas',
    'description': ''
  },
  {
    'asset': '',
    'name': 'Low-carbon',
    'title': 'Electricity generation from low-carbon sources',
    'description': 'Low-carbon electricity is the sum of electricity generation from nuclear and renewable sources. Renewable sources include hydropower, solar, wind, geothermal, bioenergy, wave and tidal.'
  },
  {
    'asset': '',
    'name': 'Nuclear',
    'title': 'Nuclear power generation',
    'description': ''
  },
  {
    'asset': '',
    'name': 'Renewables',
    'title': 'Electricity generation from renewables',
    'description': 'Renewable sources include hydropower, solar, wind, geothermal, bioenergy, wave and tidal.'
  },
  {
    'asset': '',
    'name': 'Hydropower',
    'title': 'Hydropower generation',
    'description': 'Annual hydropower generation is measured in terawatt-hours (TWh).'
  },
  {
    'name': 'Solar',
    'title': 'Solar power generation',
    'description': 'Electricity generation from solar, measured in terawatt-hours (TWh) per year.'
  },
  {
    'name': 'Solar',
    'title': 'Wind power generation',
    'description': 'Annual electricity generation from wind is measured in terawatt-hours (TWh) per year. This includes both onshore and offshore wind sources.'
  },
];
