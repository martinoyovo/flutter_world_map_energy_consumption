class Region {

  Region({this.name, this.data});

  Region.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v as Map<String, dynamic>));
      });
    }
  }
  String? name;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  Data(
      {this.year,
        this.population,
        this.biofuelElecPerCapita,
        this.biofuelElectricity,
        this.biofuelShareElec,
        this.carbonIntensityElec,
        this.coalElecPerCapita,
        this.coalElectricity,
        this.coalShareElec,
        this.electricityDemand,
        this.electricityGeneration,
        this.fossilElecPerCapita,
        this.fossilElectricity,
        this.fossilShareElec,
        this.gasElecPerCapita,
        this.gasElectricity,
        this.gasShareElec,
        this.greenhouseGasEmissions,
        this.hydroElecPerCapita,
        this.hydroElectricity,
        this.hydroShareElec,
        this.lowCarbonElecPerCapita,
        this.lowCarbonElectricity,
        this.lowCarbonShareElec,
        this.netElecImports,
        this.netElecImportsShareDemand,
        this.nuclearElecPerCapita,
        this.nuclearElectricity,
        this.nuclearShareElec,
        this.oilElecPerCapita,
        this.oilElectricity,
        this.oilShareElec,
        this.otherRenewableElectricity,
        this.otherRenewableExcBiofuelElectricity,
        this.otherRenewablesElecPerCapita,
        this.otherRenewablesElecPerCapitaExcBiofuel,
        this.otherRenewablesShareElec,
        this.otherRenewablesShareElecExcBiofuel,
        this.perCapitaElectricity,
        this.renewablesElecPerCapita,
        this.renewablesElectricity,
        this.renewablesShareElec,
        this.solarElecPerCapita,
        this.solarElectricity,
        this.solarShareElec,
        this.windElecPerCapita,
        this.windElectricity,
        this.windShareElec});

  Data.fromJson(Map<String, dynamic> json) {
    year = json['year']as double? ?? 0;
    population = json['population']as double? ?? 0;
    biofuelElecPerCapita = json['biofuel_elec_per_capita'] as double? ?? 0;
    biofuelElectricity = json['biofuel_electricity']  as double? ?? 0;
    biofuelShareElec = json['biofuel_share_elec']  as double? ?? 0;
    carbonIntensityElec = json['carbon_intensity_elec'] as double? ?? 0;
    coalElecPerCapita = json['coal_elec_per_capita']  as double? ?? 0;
    coalElectricity = json['coal_electricity'] as double? ?? 0;
    coalShareElec = json['coal_share_elec'] as double? ?? 0;
    electricityDemand = json['electricity_demand'] as double? ?? 0;
    electricityGeneration = json['electricity_generation'] as double? ?? 0;
    fossilElecPerCapita = json['fossil_elec_per_capita'] as double? ?? 0;
    fossilElectricity = json['fossil_electricity'] as double? ?? 0;
    fossilShareElec = json['fossil_share_elec'] as double? ?? 0;
    gasElecPerCapita = json['gas_elec_per_capita'] as double? ?? 0;
    gasElectricity = json['gas_electricity'] as double? ?? 0;
    gasShareElec = json['gas_share_elec'] as double? ?? 0;
    greenhouseGasEmissions = json['greenhouse_gas_emissions'] as double? ?? 0;
    hydroElecPerCapita = json['hydro_elec_per_capita'] as double? ?? 0;
    hydroElectricity = json['hydro_electricity'] as double? ?? 0;
    hydroShareElec = json['hydro_share_elec'] as double? ?? 0;
    lowCarbonElecPerCapita = json['low_carbon_elec_per_capita'] as double? ?? 0;
    lowCarbonElectricity = json['low_carbon_electricity'] as double? ?? 0;
    lowCarbonShareElec = json['low_carbon_share_elec'] as double? ?? 0;
    netElecImports = json['net_elec_imports'] as double? ?? 0;
    netElecImportsShareDemand = json['net_elec_imports_share_demand'] as double? ?? 0;
    nuclearElecPerCapita = json['nuclear_elec_per_capita'] as double? ?? 0;
    nuclearElectricity = json['nuclear_electricity'] as double? ?? 0;
    nuclearShareElec = json['nuclear_share_elec'] as double? ?? 0;
    oilElecPerCapita = json['oil_elec_per_capita'] as double? ?? 0;
    oilElectricity = json['oil_electricity'] as double? ?? 0;
    oilShareElec = json['oil_share_elec'] as double? ?? 0;
    otherRenewableElectricity = json['other_renewable_electricity'] as double? ?? 0;
    otherRenewableExcBiofuelElectricity =
    json['other_renewable_exc_biofuel_electricity'] as double? ?? 0;
    otherRenewablesElecPerCapita =
    json['other_renewables_elec_per_capita'] as double? ?? 0;
    otherRenewablesElecPerCapitaExcBiofuel =
    json['other_renewables_elec_per_capita_exc_biofuel'] as double? ?? 0;
    otherRenewablesShareElec = json['other_renewables_share_elec'] as double? ?? 0;
    otherRenewablesShareElecExcBiofuel =
    json['other_renewables_share_elec_exc_biofuel'] as double? ?? 0;
    perCapitaElectricity = json['per_capita_electricity'] as double? ?? 0;
    renewablesElecPerCapita = json['renewables_elec_per_capita'] as double? ?? 0;
    renewablesElectricity = json['renewables_electricity'] as double? ?? 0;
    renewablesShareElec = json['renewables_share_elec'] as double? ?? 0;
    solarElecPerCapita = json['solar_elec_per_capita'] as double? ?? 0;
    solarElectricity = json['solar_electricity'] as double? ?? 0;
    solarShareElec = json['solar_share_elec'] as double? ?? 0;
    windElecPerCapita = json['wind_elec_per_capita'] as double? ?? 0;
    windElectricity = json['wind_electricity'] as double? ?? 0;
    windShareElec = json['wind_share_elec'] as double? ?? 0;
  }

  double? year;
  double? population;
  double? biofuelElecPerCapita;
  double? biofuelElectricity;
  double? biofuelShareElec;
  double? carbonIntensityElec;
  double? coalElecPerCapita;
  double? coalElectricity;
  double? coalShareElec;
  double? electricityDemand;
  double? electricityGeneration;
  double? fossilElecPerCapita;
  double? fossilElectricity;
  double? fossilShareElec;
  double? gasElecPerCapita;
  double? gasElectricity;
  double? gasShareElec;
  double? greenhouseGasEmissions;
  double? hydroElecPerCapita;
  double? hydroElectricity;
  double? hydroShareElec;
  double? lowCarbonElecPerCapita;
  double? lowCarbonElectricity;
  double? lowCarbonShareElec;
  double? netElecImports;
  double? netElecImportsShareDemand;
  double? nuclearElecPerCapita;
  double? nuclearElectricity;
  double? nuclearShareElec;
  double? oilElecPerCapita;
  double? oilElectricity;
  double? oilShareElec;
  double? otherRenewableElectricity;
  double? otherRenewableExcBiofuelElectricity;
  double? otherRenewablesElecPerCapita;
  double? otherRenewablesElecPerCapitaExcBiofuel;
  double? otherRenewablesShareElec;
  double? otherRenewablesShareElecExcBiofuel;
  double? perCapitaElectricity;
  double? renewablesElecPerCapita;
  double? renewablesElectricity;
  double? renewablesShareElec;
  double? solarElecPerCapita;
  double? solarElectricity;
  double? solarShareElec;
  double? windElecPerCapita;
  double? windElectricity;
  double? windShareElec;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['year'] = year;
    data['population'] = population;
    data['biofuel_elec_per_capita'] = biofuelElecPerCapita;
    data['biofuel_electricity'] = biofuelElectricity;
    data['biofuel_share_elec'] = biofuelShareElec;
    data['carbon_intensity_elec'] = carbonIntensityElec;
    data['coal_elec_per_capita'] = coalElecPerCapita;
    data['coal_electricity'] = coalElectricity;
    data['coal_share_elec'] = coalShareElec;
    data['electricity_demand'] = electricityDemand;
    data['electricity_generation'] = electricityGeneration;
    data['fossil_elec_per_capita'] = fossilElecPerCapita;
    data['fossil_electricity'] = fossilElectricity;
    data['fossil_share_elec'] = fossilShareElec;
    data['gas_elec_per_capita'] = gasElecPerCapita;
    data['gas_electricity'] = gasElectricity;
    data['gas_share_elec'] = gasShareElec;
    data['greenhouse_gas_emissions'] = greenhouseGasEmissions;
    data['hydro_elec_per_capita'] = hydroElecPerCapita;
    data['hydro_electricity'] = hydroElectricity;
    data['hydro_share_elec'] = hydroShareElec;
    data['low_carbon_elec_per_capita'] = lowCarbonElecPerCapita;
    data['low_carbon_electricity'] = lowCarbonElectricity;
    data['low_carbon_share_elec'] = lowCarbonShareElec;
    data['net_elec_imports'] = netElecImports;
    data['net_elec_imports_share_demand'] = netElecImportsShareDemand;
    data['nuclear_elec_per_capita'] = nuclearElecPerCapita;
    data['nuclear_electricity'] = nuclearElectricity;
    data['nuclear_share_elec'] = nuclearShareElec;
    data['oil_elec_per_capita'] = oilElecPerCapita;
    data['oil_electricity'] = oilElectricity;
    data['oil_share_elec'] = oilShareElec;
    data['other_renewable_electricity'] = otherRenewableElectricity;
    data['other_renewable_exc_biofuel_electricity'] =
        otherRenewableExcBiofuelElectricity;
    data['other_renewables_elec_per_capita'] =
        otherRenewablesElecPerCapita;
    data['other_renewables_elec_per_capita_exc_biofuel'] =
        otherRenewablesElecPerCapitaExcBiofuel;
    data['other_renewables_share_elec'] = otherRenewablesShareElec;
    data['other_renewables_share_elec_exc_biofuel'] =
        otherRenewablesShareElecExcBiofuel;
    data['per_capita_electricity'] = perCapitaElectricity;
    data['renewables_elec_per_capita'] = renewablesElecPerCapita;
    data['renewables_electricity'] = renewablesElectricity;
    data['renewables_share_elec'] = renewablesShareElec;
    data['solar_elec_per_capita'] = solarElecPerCapita;
    data['solar_electricity'] = solarElectricity;
    data['solar_share_elec'] = solarShareElec;
    data['wind_elec_per_capita'] = windElecPerCapita;
    data['wind_electricity'] = windElectricity;
    data['wind_share_elec'] = windShareElec;
    return data;
  }
}
