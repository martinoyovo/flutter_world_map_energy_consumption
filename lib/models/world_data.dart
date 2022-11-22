/*
// To parse this JSON data, do
//
//     final worldData = worldDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

WorldData worldDataFromJson(String str) => WorldData.fromJson(json.decode(str));

String worldDataToJson(WorldData data) => json.encode(data.toJson());

class WorldData {
  WorldData({
    @required this.afghanistan,
    @required this.africa,
    @required this.africaBp,
    @required this.africaShift,
    @required this.albania,
    @required this.algeria,
    @required this.americanSamoa,
    @required this.angola,
    @required this.antarctica,
    @required this.antiguaAndBarbuda,
    @required this.argentina,
    @required this.armenia,
    @required this.aruba,
    @required this.asia,
    @required this.asiaOceaniaEia,
    @required this.asiaPacificBp,
    @required this.asiaAndOceaniaShift,
    @required this.australia,
    @required this.australiaAndNewZealandEia,
    @required this.austria,
    @required this.azerbaijan,
    @required this.bahamas,
    @required this.bahrain,
    @required this.bangladesh,
    @required this.barbados,
    @required this.belarus,
    @required this.belgium,
    @required this.belize,
    @required this.benin,
    @required this.bermuda,
    @required this.bhutan,
    @required this.bolivia,
    @required this.bosniaAndHerzegovina,
    @required this.botswana,
    @required this.brazil,
    @required this.britishVirginIslands,
    @required this.brunei,
    @required this.bulgaria,
    @required this.burkinaFaso,
    @required this.burundi,
    @required this.cisBp,
    @required this.cambodia,
    @required this.cameroon,
    @required this.canada,
    @required this.capeVerde,
    @required this.caymanIslands,
    @required this.centralSouthAmericaEia,
    @required this.centralAfricanRepublic,
    @required this.centralAmericaBp,
    @required this.centralAndSouthAmericaShift,
    @required this.chad,
    @required this.chile,
    @required this.china,
    @required this.colombia,
    @required this.comoros,
    @required this.congo,
    @required this.cookIslands,
    @required this.costaRica,
    @required this.coteDIvoire,
    @required this.croatia,
    @required this.cuba,
    @required this.cyprus,
    @required this.czechia,
    @required this.czechoslovakia,
    @required this.democraticRepublicOfCongo,
    @required this.denmark,
    @required this.djibouti,
    @required this.dominica,
    @required this.dominicanRepublic,
    @required this.eu28Shift,
    @required this.eastGermanyEia,
    @required this.easternAfricaBp,
    @required this.ecuador,
    @required this.egypt,
    @required this.elSalvador,
    @required this.equatorialGuinea,
    @required this.eritrea,
    @required this.estonia,
    @required this.eswatini,
    @required this.ethiopia,
    @required this.eurasiaEia,
    @required this.eurasiaShift,
    @required this.europe,
    @required this.europeBp,
    @required this.europeShift,
    @required this.europeanUnion27,
    @required this.europeanUnionEia,
    @required this.faeroeIslands,
    @required this.falklandIslands,
    @required this.fiji,
    @required this.finland,
    @required this.france,
    @required this.frenchGuiana,
    @required this.frenchPolynesia,
    @required this.g20Ember,
    @required this.g7Ember,
    @required this.gabon,
    @required this.gambia,
    @required this.georgia,
    @required this.germany,
    @required this.ghana,
    @required this.gibraltar,
    @required this.greece,
    @required this.greenland,
    @required this.grenada,
    @required this.guadeloupe,
    @required this.guam,
    @required this.guatemala,
    @required this.guinea,
    @required this.guineaBissau,
    @required this.guyana,
    @required this.haiti,
    @required this.hawaiianTradeZoneEia,
    @required this.highIncomeCountries,
    @required this.honduras,
    @required this.hongKong,
    @required this.hungary,
    @required this.ieoAfricaEia,
    @required this.ieoMiddleEastEia,
    @required this.ieoOecdEuropeEia,
    @required this.iceland,
    @required this.indeShift,
    @required this.india,
    @required this.indonesia,
    @required this.iran,
    @required this.iraq,
    @required this.ireland,
    @required this.israel,
    @required this.italy,
    @required this.jamaica,
    @required this.japan,
    @required this.jordan,
    @required this.kazakhstan,
    @required this.kenya,
    @required this.kiribati,
    @required this.kosovo,
    @required this.kuwait,
    @required this.kyrgyzstan,
    @required this.laos,
    @required this.latinAmericaAndCaribbeanEmber,
    @required this.latvia,
    @required this.lebanon,
    @required this.lesotho,
    @required this.liberia,
    @required this.libya,
    @required this.lithuania,
    @required this.lowIncomeCountries,
    @required this.lowerMiddleIncomeCountries,
    @required this.luxembourg,
    @required this.macao,
    @required this.madagascar,
    @required this.malawi,
    @required this.malaysia,
    @required this.maldives,
    @required this.mali,
    @required this.malta,
    @required this.martinique,
    @required this.mauritania,
    @required this.mauritius,
    @required this.mexico,
    @required this.mexicoChileAndOtherOecdAmericasEia,
    @required this.micronesiaCountry,
    @required this.middleAfricaBp,
    @required this.middleEastBp,
    @required this.middleEastEia,
    @required this.middleEastEmber,
    @required this.middleEastShift,
    @required this.moldova,
    @required this.mongolia,
    @required this.montenegro,
    @required this.montserrat,
    @required this.morocco,
    @required this.mozambique,
    @required this.myanmar,
    @required this.namibia,
    @required this.nauru,
    @required this.nepal,
    @required this.netherlands,
    @required this.netherlandsAntilles,
    @required this.newCaledonia,
    @required this.newZealand,
    @required this.nicaragua,
    @required this.niger,
    @required this.nigeria,
    @required this.niue,
    @required this.nonOecdBp,
    @required this.nonOecdEia,
    @required this.nonOpecEia,
    @required this.northAmerica,
    @required this.northAmericaBp,
    @required this.northAmericaShift,
    @required this.northKorea,
    @required this.northMacedonia,
    @required this.northernMarianaIslands,
    @required this.norway,
    @required this.oecdBp,
    @required this.oecdEia,
    @required this.oecdEmber,
    @required this.oecdShift,
    @required this.oecdAsiaAndOceaniaEia,
    @required this.oecdEuropeEia,
    @required this.oecdNorthAmericaEia,
    @required this.opecEia,
    @required this.opecShift,
    @required this.opecAfricaEia,
    @required this.opecSouthAmericaEia,
    @required this.oceania,
    @required this.oman,
    @required this.otherAfricaBp,
    @required this.otherAsiaPacificBp,
    @required this.otherCisBp,
    @required this.otherCaribbeanBp,
    @required this.otherEasternAfricaBp,
    @required this.otherEuropeBp,
    @required this.otherMiddleAfricaBp,
    @required this.otherMiddleEastBp,
    @required this.otherNonOecdAmericaEia,
    @required this.otherNonOecdAsiaEia,
    @required this.otherNonOecdEuropeAndEurasiaEia,
    @required this.otherNorthernAfricaBp,
    @required this.otherSouthAmericaBp,
    @required this.otherSouthAndCentralAmericaBp,
    @required this.otherSouthernAfricaBp,
    @required this.otherWesternAfricaBp,
    @required this.pakistan,
    @required this.palestine,
    @required this.panama,
    @required this.papuaNewGuinea,
    @required this.paraguay,
    @required this.persianGulfEia,
    @required this.persianGulfShift,
    @required this.peru,
    @required this.philippines,
    @required this.poland,
    @required this.portugal,
    @required this.puertoRico,
    @required this.qatar,
    @required this.reunion,
    @required this.romania,
    @required this.russia,
    @required this.rwanda,
    @required this.saintHelena,
    @required this.saintKittsAndNevis,
    @required this.saintLucia,
    @required this.saintPierreAndMiquelon,
    @required this.saintVincentAndTheGrenadines,
    @required this.samoa,
    @required this.saoTomeAndPrincipe,
    @required this.saudiArabia,
    @required this.senegal,
    @required this.serbia,
    @required this.serbiaAndMontenegro,
    @required this.seychelles,
    @required this.sierraLeone,
    @required this.singapore,
    @required this.slovakia,
    @required this.slovenia,
    @required this.solomonIslands,
    @required this.somalia,
    @required this.southAfrica,
    @required this.southAmerica,
    @required this.southKorea,
    @required this.southKoreaAndOtherOecdAsiaEia,
    @required this.southSudan,
    @required this.southAndCentralAmericaBp,
    @required this.spain,
    @required this.sriLanka,
    @required this.sudan,
    @required this.suriname,
    @required this.sweden,
    @required this.switzerland,
    @required this.syria,
    @required this.taiwan,
    @required this.tajikistan,
    @required this.tanzania,
    @required this.thailand,
    @required this.timor,
    @required this.togo,
    @required this.tonga,
    @required this.totalNonOpecBp,
    @required this.totalOpecBp,
    @required this.trinidadAndTobago,
    @required this.tunisia,
    @required this.turkey,
    @required this.turkmenistan,
    @required this.turksAndCaicosIslands,
    @required this.tuvalu,
    @required this.uSPacificIslandsEia,
    @required this.uSPacificIslandsShift,
    @required this.uSTerritoriesEia,
    @required this.uSTerritoriesShift,
    @required this.ussr,
    @required this.uganda,
    @required this.ukraine,
    @required this.unitedArabEmirates,
    @required this.unitedKingdom,
    @required this.unitedStates,
    @required this.unitedStatesVirginIslands,
    @required this.upperMiddleIncomeCountries,
    @required this.uruguay,
    @required this.uzbekistan,
    @required this.vanuatu,
    @required this.venezuela,
    @required this.vietnam,
    @required this.wakeIslandEia,
    @required this.wakeIslandShift,
    @required this.westGermanyEia,
    @required this.westernAfricaBp,
    @required this.westernSahara,
    @required this.world,
    @required this.yemen,
    @required this.yugoslavia,
    @required this.zambia,
    @required this.zimbabwe,
  });

  final Afghanistan afghanistan;
  final Africa africa;
  final Africa africaBp;
  final AfricaShiftClass africaShift;
  final Afghanistan albania;
  final Algeria algeria;
  final Algeria americanSamoa;
  final Afghanistan angola;
  final Antarctica antarctica;
  final Algeria antiguaAndBarbuda;
  final Algeria argentina;
  final Algeria armenia;
  final Algeria aruba;
  final Africa asia;
  final AsiaOceaniaEia asiaOceaniaEia;
  final Africa asiaPacificBp;
  final AfricaShiftClass asiaAndOceaniaShift;
  final Algeria australia;
  final AsiaOceaniaEia australiaAndNewZealandEia;
  final Algeria austria;
  final Algeria azerbaijan;
  final Algeria bahamas;
  final Afghanistan bahrain;
  final Algeria bangladesh;
  final Afghanistan barbados;
  final Algeria belarus;
  final Algeria belgium;
  final Belize belize;
  final Afghanistan benin;
  final Afghanistan bermuda;
  final Afghanistan bhutan;
  final Afghanistan bolivia;
  final Afghanistan bosniaAndHerzegovina;
  final Afghanistan botswana;
  final Algeria brazil;
  final Algeria britishVirginIslands;
  final Afghanistan brunei;
  final Algeria bulgaria;
  final Algeria burkinaFaso;
  final Afghanistan burundi;
  final Africa cisBp;
  final Algeria cambodia;
  final Afghanistan cameroon;
  final Algeria canada;
  final Algeria capeVerde;
  final Algeria caymanIslands;
  final AsiaOceaniaEia centralSouthAmericaEia;
  final Algeria centralAfricanRepublic;
  final Africa centralAmericaBp;
  final AfricaShiftClass centralAndSouthAmericaShift;
  final Afghanistan chad;
  final Algeria chile;
  final Algeria china;
  final Algeria colombia;
  final Algeria comoros;
  final Afghanistan congo;
  final Algeria cookIslands;
  final Algeria costaRica;
  final Afghanistan coteDIvoire;
  final Algeria croatia;
  final Afghanistan cuba;
  final Algeria cyprus;
  final Algeria czechia;
  final Africa czechoslovakia;
  final Afghanistan democraticRepublicOfCongo;
  final Algeria denmark;
  final Algeria djibouti;
  final Algeria dominica;
  final Algeria dominicanRepublic;
  final AfricaShiftClass eu28Shift;
  final AsiaOceaniaEia eastGermanyEia;
  final Africa easternAfricaBp;
  final Algeria ecuador;
  final Algeria egypt;
  final Algeria elSalvador;
  final Afghanistan equatorialGuinea;
  final Algeria eritrea;
  final Algeria estonia;
  final Afghanistan eswatini;
  final Afghanistan ethiopia;
  final AsiaOceaniaEia eurasiaEia;
  final AfricaShiftClass eurasiaShift;
  final Africa europe;
  final Africa europeBp;
  final AfricaShiftClass europeShift;
  final Africa europeanUnion27;
  final AsiaOceaniaEia europeanUnionEia;
  final Algeria faeroeIslands;
  final Algeria falklandIslands;
  final Algeria fiji;
  final Algeria finland;
  final Algeria france;
  final Algeria frenchGuiana;
  final Algeria frenchPolynesia;
  final Africa g20Ember;
  final Africa g7Ember;
  final Afghanistan gabon;
  final Algeria gambia;
  final Afghanistan georgia;
  final Algeria germany;
  final Afghanistan ghana;
  final Afghanistan gibraltar;
  final Algeria greece;
  final Afghanistan greenland;
  final Algeria grenada;
  final Algeria guadeloupe;
  final Algeria guam;
  final Afghanistan guatemala;
  final Algeria guinea;
  final Algeria guineaBissau;
  final Algeria guyana;
  final Algeria haiti;
  final AsiaOceaniaEia hawaiianTradeZoneEia;
  final Africa highIncomeCountries;
  final Algeria honduras;
  final Algeria hongKong;
  final Algeria hungary;
  final AsiaOceaniaEia ieoAfricaEia;
  final AsiaOceaniaEia ieoMiddleEastEia;
  final AsiaOceaniaEia ieoOecdEuropeEia;
  final Algeria iceland;
  final IndeShift indeShift;
  final Algeria india;
  final Algeria indonesia;
  final Algeria iran;
  final Algeria iraq;
  final Algeria ireland;
  final Algeria israel;
  final Algeria italy;
  final Algeria jamaica;
  final Algeria japan;
  final Afghanistan jordan;
  final Algeria kazakhstan;
  final Algeria kenya;
  final Algeria kiribati;
  final Africa kosovo;
  final Algeria kuwait;
  final Afghanistan kyrgyzstan;
  final Afghanistan laos;
  final Africa latinAmericaAndCaribbeanEmber;
  final Algeria latvia;
  final Algeria lebanon;
  final Algeria lesotho;
  final Algeria liberia;
  final Afghanistan libya;
  final Algeria lithuania;
  final LowIncomeCountries lowIncomeCountries;
  final Africa lowerMiddleIncomeCountries;
  final Algeria luxembourg;
  final Algeria macao;
  final Afghanistan madagascar;
  final Afghanistan malawi;
  final Algeria malaysia;
  final Algeria maldives;
  final Algeria mali;
  final Algeria malta;
  final Algeria martinique;
  final Afghanistan mauritania;
  final Algeria mauritius;
  final Algeria mexico;
  final AsiaOceaniaEia mexicoChileAndOtherOecdAmericasEia;
  final MicronesiaCountry micronesiaCountry;
  final Africa middleAfricaBp;
  final Africa middleEastBp;
  final AsiaOceaniaEia middleEastEia;
  final Africa middleEastEmber;
  final AfricaShiftClass middleEastShift;
  final Afghanistan moldova;
  final Afghanistan mongolia;
  final Afghanistan montenegro;
  final Algeria montserrat;
  final Algeria morocco;
  final Afghanistan mozambique;
  final Afghanistan myanmar;
  final Algeria namibia;
  final Algeria nauru;
  final Afghanistan nepal;
  final Algeria netherlands;
  final Algeria netherlandsAntilles;
  final Algeria newCaledonia;
  final Algeria newZealand;
  final Algeria nicaragua;
  final Afghanistan niger;
  final Afghanistan nigeria;
  final Afghanistan niue;
  final Africa nonOecdBp;
  final AsiaOceaniaEia nonOecdEia;
  final AsiaOceaniaEia nonOpecEia;
  final Africa northAmerica;
  final Africa northAmericaBp;
  final AfricaShiftClass northAmericaShift;
  final Afghanistan northKorea;
  final Algeria northMacedonia;
  final Algeria northernMarianaIslands;
  final Algeria norway;
  final Africa oecdBp;
  final AsiaOceaniaEia oecdEia;
  final Africa oecdEmber;
  final AfricaShiftClass oecdShift;
  final AsiaOceaniaEia oecdAsiaAndOceaniaEia;
  final AsiaOceaniaEia oecdEuropeEia;
  final AsiaOceaniaEia oecdNorthAmericaEia;
  final AsiaOceaniaEia opecEia;
  final AfricaShiftClass opecShift;
  final AsiaOceaniaEia opecAfricaEia;
  final AsiaOceaniaEia opecSouthAmericaEia;
  final Africa oceania;
  final Algeria oman;
  final Africa otherAfricaBp;
  final Africa otherAsiaPacificBp;
  final Africa otherCisBp;
  final Africa otherCaribbeanBp;
  final OtherEasternAfricaBp otherEasternAfricaBp;
  final Africa otherEuropeBp;
  final Bp otherMiddleAfricaBp;
  final Africa otherMiddleEastBp;
  final AsiaOceaniaEia otherNonOecdAmericaEia;
  final AsiaOceaniaEia otherNonOecdAsiaEia;
  final AsiaOceaniaEia otherNonOecdEuropeAndEurasiaEia;
  final Africa otherNorthernAfricaBp;
  final Africa otherSouthAmericaBp;
  final Africa otherSouthAndCentralAmericaBp;
  final Africa otherSouthernAfricaBp;
  final OtherWesternAfricaBp otherWesternAfricaBp;
  final Algeria pakistan;
  final Algeria palestine;
  final Algeria panama;
  final Afghanistan papuaNewGuinea;
  final Algeria paraguay;
  final AsiaOceaniaEia persianGulfEia;
  final AfricaShiftClass persianGulfShift;
  final Algeria peru;
  final Algeria philippines;
  final Algeria poland;
  final Algeria portugal;
  final Algeria puertoRico;
  final Algeria qatar;
  final Algeria reunion;
  final Algeria romania;
  final Algeria russia;
  final Algeria rwanda;
  final Afghanistan saintHelena;
  final Algeria saintKittsAndNevis;
  final Algeria saintLucia;
  final Algeria saintPierreAndMiquelon;
  final Algeria saintVincentAndTheGrenadines;
  final Algeria samoa;
  final Algeria saoTomeAndPrincipe;
  final Algeria saudiArabia;
  final Afghanistan senegal;
  final Afghanistan serbia;
  final AsiaOceaniaEia serbiaAndMontenegro;
  final Algeria seychelles;
  final Algeria sierraLeone;
  final Algeria singapore;
  final Algeria slovakia;
  final Algeria slovenia;
  final Algeria solomonIslands;
  final Algeria somalia;
  final Algeria southAfrica;
  final Africa southAmerica;
  final Algeria southKorea;
  final AsiaOceaniaEia southKoreaAndOtherOecdAsiaEia;
  final Belize southSudan;
  final Africa southAndCentralAmericaBp;
  final Algeria spain;
  final Algeria sriLanka;
  final Belize sudan;
  final Belize suriname;
  final Algeria sweden;
  final Algeria switzerland;
  final Afghanistan syria;
  final Algeria taiwan;
  final Afghanistan tajikistan;
  final Afghanistan tanzania;
  final Algeria thailand;
  final Afghanistan timor;
  final Algeria togo;
  final Algeria tonga;
  final Bp totalNonOpecBp;
  final Bp totalOpecBp;
  final Algeria trinidadAndTobago;
  final Afghanistan tunisia;
  final Algeria turkey;
  final Algeria turkmenistan;
  final Algeria turksAndCaicosIslands;
  final MicronesiaCountry tuvalu;
  final AsiaOceaniaEia uSPacificIslandsEia;
  final USPacificIslandsShiftClass uSPacificIslandsShift;
  final AsiaOceaniaEia uSTerritoriesEia;
  final USPacificIslandsShiftClass uSTerritoriesShift;
  final Africa ussr;
  final Algeria uganda;
  final Algeria ukraine;
  final Algeria unitedArabEmirates;
  final Algeria unitedKingdom;
  final Algeria unitedStates;
  final Algeria unitedStatesVirginIslands;
  final Africa upperMiddleIncomeCountries;
  final Algeria uruguay;
  final Algeria uzbekistan;
  final Algeria vanuatu;
  final Algeria venezuela;
  final Algeria vietnam;
  final AsiaOceaniaEia wakeIslandEia;
  final USPacificIslandsShiftClass wakeIslandShift;
  final AsiaOceaniaEia westGermanyEia;
  final Africa westernAfricaBp;
  final Algeria westernSahara;
  final Africa world;
  final Afghanistan yemen;
  final Africa yugoslavia;
  final Afghanistan zambia;
  final Afghanistan zimbabwe;

  WorldData copyWith({
    Afghanistan afghanistan,
    Africa africa,
    Africa africaBp,
    AfricaShiftClass africaShift,
    Afghanistan albania,
    Algeria algeria,
    Algeria americanSamoa,
    Afghanistan angola,
    Antarctica antarctica,
    Algeria antiguaAndBarbuda,
    Algeria argentina,
    Algeria armenia,
    Algeria aruba,
    Africa asia,
    AsiaOceaniaEia asiaOceaniaEia,
    Africa asiaPacificBp,
    AfricaShiftClass asiaAndOceaniaShift,
    Algeria australia,
    AsiaOceaniaEia australiaAndNewZealandEia,
    Algeria austria,
    Algeria azerbaijan,
    Algeria bahamas,
    Afghanistan bahrain,
    Algeria bangladesh,
    Afghanistan barbados,
    Algeria belarus,
    Algeria belgium,
    Belize belize,
    Afghanistan benin,
    Afghanistan bermuda,
    Afghanistan bhutan,
    Afghanistan bolivia,
    Afghanistan bosniaAndHerzegovina,
    Afghanistan botswana,
    Algeria brazil,
    Algeria britishVirginIslands,
    Afghanistan brunei,
    Algeria bulgaria,
    Algeria burkinaFaso,
    Afghanistan burundi,
    Africa cisBp,
    Algeria cambodia,
    Afghanistan cameroon,
    Algeria canada,
    Algeria capeVerde,
    Algeria caymanIslands,
    AsiaOceaniaEia centralSouthAmericaEia,
    Algeria centralAfricanRepublic,
    Africa centralAmericaBp,
    AfricaShiftClass centralAndSouthAmericaShift,
    Afghanistan chad,
    Algeria chile,
    Algeria china,
    Algeria colombia,
    Algeria comoros,
    Afghanistan congo,
    Algeria cookIslands,
    Algeria costaRica,
    Afghanistan coteDIvoire,
    Algeria croatia,
    Afghanistan cuba,
    Algeria cyprus,
    Algeria czechia,
    Africa czechoslovakia,
    Afghanistan democraticRepublicOfCongo,
    Algeria denmark,
    Algeria djibouti,
    Algeria dominica,
    Algeria dominicanRepublic,
    AfricaShiftClass eu28Shift,
    AsiaOceaniaEia eastGermanyEia,
    Africa easternAfricaBp,
    Algeria ecuador,
    Algeria egypt,
    Algeria elSalvador,
    Afghanistan equatorialGuinea,
    Algeria eritrea,
    Algeria estonia,
    Afghanistan eswatini,
    Afghanistan ethiopia,
    AsiaOceaniaEia eurasiaEia,
    AfricaShiftClass eurasiaShift,
    Africa europe,
    Africa europeBp,
    AfricaShiftClass europeShift,
    Africa europeanUnion27,
    AsiaOceaniaEia europeanUnionEia,
    Algeria faeroeIslands,
    Algeria falklandIslands,
    Algeria fiji,
    Algeria finland,
    Algeria france,
    Algeria frenchGuiana,
    Algeria frenchPolynesia,
    Africa g20Ember,
    Africa g7Ember,
    Afghanistan gabon,
    Algeria gambia,
    Afghanistan georgia,
    Algeria germany,
    Afghanistan ghana,
    Afghanistan gibraltar,
    Algeria greece,
    Afghanistan greenland,
    Algeria grenada,
    Algeria guadeloupe,
    Algeria guam,
    Afghanistan guatemala,
    Algeria guinea,
    Algeria guineaBissau,
    Algeria guyana,
    Algeria haiti,
    AsiaOceaniaEia hawaiianTradeZoneEia,
    Africa highIncomeCountries,
    Algeria honduras,
    Algeria hongKong,
    Algeria hungary,
    AsiaOceaniaEia ieoAfricaEia,
    AsiaOceaniaEia ieoMiddleEastEia,
    AsiaOceaniaEia ieoOecdEuropeEia,
    Algeria iceland,
    IndeShift indeShift,
    Algeria india,
    Algeria indonesia,
    Algeria iran,
    Algeria iraq,
    Algeria ireland,
    Algeria israel,
    Algeria italy,
    Algeria jamaica,
    Algeria japan,
    Afghanistan jordan,
    Algeria kazakhstan,
    Algeria kenya,
    Algeria kiribati,
    Africa kosovo,
    Algeria kuwait,
    Afghanistan kyrgyzstan,
    Afghanistan laos,
    Africa latinAmericaAndCaribbeanEmber,
    Algeria latvia,
    Algeria lebanon,
    Algeria lesotho,
    Algeria liberia,
    Afghanistan libya,
    Algeria lithuania,
    LowIncomeCountries lowIncomeCountries,
    Africa lowerMiddleIncomeCountries,
    Algeria luxembourg,
    Algeria macao,
    Afghanistan madagascar,
    Afghanistan malawi,
    Algeria malaysia,
    Algeria maldives,
    Algeria mali,
    Algeria malta,
    Algeria martinique,
    Afghanistan mauritania,
    Algeria mauritius,
    Algeria mexico,
    AsiaOceaniaEia mexicoChileAndOtherOecdAmericasEia,
    MicronesiaCountry micronesiaCountry,
    Africa middleAfricaBp,
    Africa middleEastBp,
    AsiaOceaniaEia middleEastEia,
    Africa middleEastEmber,
    AfricaShiftClass middleEastShift,
    Afghanistan moldova,
    Afghanistan mongolia,
    Afghanistan montenegro,
    Algeria montserrat,
    Algeria morocco,
    Afghanistan mozambique,
    Afghanistan myanmar,
    Algeria namibia,
    Algeria nauru,
    Afghanistan nepal,
    Algeria netherlands,
    Algeria netherlandsAntilles,
    Algeria newCaledonia,
    Algeria newZealand,
    Algeria nicaragua,
    Afghanistan niger,
    Afghanistan nigeria,
    Afghanistan niue,
    Africa nonOecdBp,
    AsiaOceaniaEia nonOecdEia,
    AsiaOceaniaEia nonOpecEia,
    Africa northAmerica,
    Africa northAmericaBp,
    AfricaShiftClass northAmericaShift,
    Afghanistan northKorea,
    Algeria northMacedonia,
    Algeria northernMarianaIslands,
    Algeria norway,
    Africa oecdBp,
    AsiaOceaniaEia oecdEia,
    Africa oecdEmber,
    AfricaShiftClass oecdShift,
    AsiaOceaniaEia oecdAsiaAndOceaniaEia,
    AsiaOceaniaEia oecdEuropeEia,
    AsiaOceaniaEia oecdNorthAmericaEia,
    AsiaOceaniaEia opecEia,
    AfricaShiftClass opecShift,
    AsiaOceaniaEia opecAfricaEia,
    AsiaOceaniaEia opecSouthAmericaEia,
    Africa oceania,
    Algeria oman,
    Africa otherAfricaBp,
    Africa otherAsiaPacificBp,
    Africa otherCisBp,
    Africa otherCaribbeanBp,
    OtherEasternAfricaBp otherEasternAfricaBp,
    Africa otherEuropeBp,
    Bp otherMiddleAfricaBp,
    Africa otherMiddleEastBp,
    AsiaOceaniaEia otherNonOecdAmericaEia,
    AsiaOceaniaEia otherNonOecdAsiaEia,
    AsiaOceaniaEia otherNonOecdEuropeAndEurasiaEia,
    Africa otherNorthernAfricaBp,
    Africa otherSouthAmericaBp,
    Africa otherSouthAndCentralAmericaBp,
    Africa otherSouthernAfricaBp,
    OtherWesternAfricaBp otherWesternAfricaBp,
    Algeria pakistan,
    Algeria palestine,
    Algeria panama,
    Afghanistan papuaNewGuinea,
    Algeria paraguay,
    AsiaOceaniaEia persianGulfEia,
    AfricaShiftClass persianGulfShift,
    Algeria peru,
    Algeria philippines,
    Algeria poland,
    Algeria portugal,
    Algeria puertoRico,
    Algeria qatar,
    Algeria reunion,
    Algeria romania,
    Algeria russia,
    Algeria rwanda,
    Afghanistan saintHelena,
    Algeria saintKittsAndNevis,
    Algeria saintLucia,
    Algeria saintPierreAndMiquelon,
    Algeria saintVincentAndTheGrenadines,
    Algeria samoa,
    Algeria saoTomeAndPrincipe,
    Algeria saudiArabia,
    Afghanistan senegal,
    Afghanistan serbia,
    AsiaOceaniaEia serbiaAndMontenegro,
    Algeria seychelles,
    Algeria sierraLeone,
    Algeria singapore,
    Algeria slovakia,
    Algeria slovenia,
    Algeria solomonIslands,
    Algeria somalia,
    Algeria southAfrica,
    Africa southAmerica,
    Algeria southKorea,
    AsiaOceaniaEia southKoreaAndOtherOecdAsiaEia,
    Belize southSudan,
    Africa southAndCentralAmericaBp,
    Algeria spain,
    Algeria sriLanka,
    Belize sudan,
    Belize suriname,
    Algeria sweden,
    Algeria switzerland,
    Afghanistan syria,
    Algeria taiwan,
    Afghanistan tajikistan,
    Afghanistan tanzania,
    Algeria thailand,
    Afghanistan timor,
    Algeria togo,
    Algeria tonga,
    Bp totalNonOpecBp,
    Bp totalOpecBp,
    Algeria trinidadAndTobago,
    Afghanistan tunisia,
    Algeria turkey,
    Algeria turkmenistan,
    Algeria turksAndCaicosIslands,
    MicronesiaCountry tuvalu,
    AsiaOceaniaEia uSPacificIslandsEia,
    USPacificIslandsShiftClass uSPacificIslandsShift,
    AsiaOceaniaEia uSTerritoriesEia,
    USPacificIslandsShiftClass uSTerritoriesShift,
    Africa ussr,
    Algeria uganda,
    Algeria ukraine,
    Algeria unitedArabEmirates,
    Algeria unitedKingdom,
    Algeria unitedStates,
    Algeria unitedStatesVirginIslands,
    Africa upperMiddleIncomeCountries,
    Algeria uruguay,
    Algeria uzbekistan,
    Algeria vanuatu,
    Algeria venezuela,
    Algeria vietnam,
    AsiaOceaniaEia wakeIslandEia,
    USPacificIslandsShiftClass wakeIslandShift,
    AsiaOceaniaEia westGermanyEia,
    Africa westernAfricaBp,
    Algeria westernSahara,
    Africa world,
    Afghanistan yemen,
    Africa yugoslavia,
    Afghanistan zambia,
    Afghanistan zimbabwe,
  }) =>
      WorldData(
        afghanistan: afghanistan ?? this.afghanistan,
        africa: africa ?? this.africa,
        africaBp: africaBp ?? this.africaBp,
        africaShift: africaShift ?? this.africaShift,
        albania: albania ?? this.albania,
        algeria: algeria ?? this.algeria,
        americanSamoa: americanSamoa ?? this.americanSamoa,
        angola: angola ?? this.angola,
        antarctica: antarctica ?? this.antarctica,
        antiguaAndBarbuda: antiguaAndBarbuda ?? this.antiguaAndBarbuda,
        argentina: argentina ?? this.argentina,
        armenia: armenia ?? this.armenia,
        aruba: aruba ?? this.aruba,
        asia: asia ?? this.asia,
        asiaOceaniaEia: asiaOceaniaEia ?? this.asiaOceaniaEia,
        asiaPacificBp: asiaPacificBp ?? this.asiaPacificBp,
        asiaAndOceaniaShift: asiaAndOceaniaShift ?? this.asiaAndOceaniaShift,
        australia: australia ?? this.australia,
        australiaAndNewZealandEia: australiaAndNewZealandEia ?? this.australiaAndNewZealandEia,
        austria: austria ?? this.austria,
        azerbaijan: azerbaijan ?? this.azerbaijan,
        bahamas: bahamas ?? this.bahamas,
        bahrain: bahrain ?? this.bahrain,
        bangladesh: bangladesh ?? this.bangladesh,
        barbados: barbados ?? this.barbados,
        belarus: belarus ?? this.belarus,
        belgium: belgium ?? this.belgium,
        belize: belize ?? this.belize,
        benin: benin ?? this.benin,
        bermuda: bermuda ?? this.bermuda,
        bhutan: bhutan ?? this.bhutan,
        bolivia: bolivia ?? this.bolivia,
        bosniaAndHerzegovina: bosniaAndHerzegovina ?? this.bosniaAndHerzegovina,
        botswana: botswana ?? this.botswana,
        brazil: brazil ?? this.brazil,
        britishVirginIslands: britishVirginIslands ?? this.britishVirginIslands,
        brunei: brunei ?? this.brunei,
        bulgaria: bulgaria ?? this.bulgaria,
        burkinaFaso: burkinaFaso ?? this.burkinaFaso,
        burundi: burundi ?? this.burundi,
        cisBp: cisBp ?? this.cisBp,
        cambodia: cambodia ?? this.cambodia,
        cameroon: cameroon ?? this.cameroon,
        canada: canada ?? this.canada,
        capeVerde: capeVerde ?? this.capeVerde,
        caymanIslands: caymanIslands ?? this.caymanIslands,
        centralSouthAmericaEia: centralSouthAmericaEia ?? this.centralSouthAmericaEia,
        centralAfricanRepublic: centralAfricanRepublic ?? this.centralAfricanRepublic,
        centralAmericaBp: centralAmericaBp ?? this.centralAmericaBp,
        centralAndSouthAmericaShift: centralAndSouthAmericaShift ?? this.centralAndSouthAmericaShift,
        chad: chad ?? this.chad,
        chile: chile ?? this.chile,
        china: china ?? this.china,
        colombia: colombia ?? this.colombia,
        comoros: comoros ?? this.comoros,
        congo: congo ?? this.congo,
        cookIslands: cookIslands ?? this.cookIslands,
        costaRica: costaRica ?? this.costaRica,
        coteDIvoire: coteDIvoire ?? this.coteDIvoire,
        croatia: croatia ?? this.croatia,
        cuba: cuba ?? this.cuba,
        cyprus: cyprus ?? this.cyprus,
        czechia: czechia ?? this.czechia,
        czechoslovakia: czechoslovakia ?? this.czechoslovakia,
        democraticRepublicOfCongo: democraticRepublicOfCongo ?? this.democraticRepublicOfCongo,
        denmark: denmark ?? this.denmark,
        djibouti: djibouti ?? this.djibouti,
        dominica: dominica ?? this.dominica,
        dominicanRepublic: dominicanRepublic ?? this.dominicanRepublic,
        eu28Shift: eu28Shift ?? this.eu28Shift,
        eastGermanyEia: eastGermanyEia ?? this.eastGermanyEia,
        easternAfricaBp: easternAfricaBp ?? this.easternAfricaBp,
        ecuador: ecuador ?? this.ecuador,
        egypt: egypt ?? this.egypt,
        elSalvador: elSalvador ?? this.elSalvador,
        equatorialGuinea: equatorialGuinea ?? this.equatorialGuinea,
        eritrea: eritrea ?? this.eritrea,
        estonia: estonia ?? this.estonia,
        eswatini: eswatini ?? this.eswatini,
        ethiopia: ethiopia ?? this.ethiopia,
        eurasiaEia: eurasiaEia ?? this.eurasiaEia,
        eurasiaShift: eurasiaShift ?? this.eurasiaShift,
        europe: europe ?? this.europe,
        europeBp: europeBp ?? this.europeBp,
        europeShift: europeShift ?? this.europeShift,
        europeanUnion27: europeanUnion27 ?? this.europeanUnion27,
        europeanUnionEia: europeanUnionEia ?? this.europeanUnionEia,
        faeroeIslands: faeroeIslands ?? this.faeroeIslands,
        falklandIslands: falklandIslands ?? this.falklandIslands,
        fiji: fiji ?? this.fiji,
        finland: finland ?? this.finland,
        france: france ?? this.france,
        frenchGuiana: frenchGuiana ?? this.frenchGuiana,
        frenchPolynesia: frenchPolynesia ?? this.frenchPolynesia,
        g20Ember: g20Ember ?? this.g20Ember,
        g7Ember: g7Ember ?? this.g7Ember,
        gabon: gabon ?? this.gabon,
        gambia: gambia ?? this.gambia,
        georgia: georgia ?? this.georgia,
        germany: germany ?? this.germany,
        ghana: ghana ?? this.ghana,
        gibraltar: gibraltar ?? this.gibraltar,
        greece: greece ?? this.greece,
        greenland: greenland ?? this.greenland,
        grenada: grenada ?? this.grenada,
        guadeloupe: guadeloupe ?? this.guadeloupe,
        guam: guam ?? this.guam,
        guatemala: guatemala ?? this.guatemala,
        guinea: guinea ?? this.guinea,
        guineaBissau: guineaBissau ?? this.guineaBissau,
        guyana: guyana ?? this.guyana,
        haiti: haiti ?? this.haiti,
        hawaiianTradeZoneEia: hawaiianTradeZoneEia ?? this.hawaiianTradeZoneEia,
        highIncomeCountries: highIncomeCountries ?? this.highIncomeCountries,
        honduras: honduras ?? this.honduras,
        hongKong: hongKong ?? this.hongKong,
        hungary: hungary ?? this.hungary,
        ieoAfricaEia: ieoAfricaEia ?? this.ieoAfricaEia,
        ieoMiddleEastEia: ieoMiddleEastEia ?? this.ieoMiddleEastEia,
        ieoOecdEuropeEia: ieoOecdEuropeEia ?? this.ieoOecdEuropeEia,
        iceland: iceland ?? this.iceland,
        indeShift: indeShift ?? this.indeShift,
        india: india ?? this.india,
        indonesia: indonesia ?? this.indonesia,
        iran: iran ?? this.iran,
        iraq: iraq ?? this.iraq,
        ireland: ireland ?? this.ireland,
        israel: israel ?? this.israel,
        italy: italy ?? this.italy,
        jamaica: jamaica ?? this.jamaica,
        japan: japan ?? this.japan,
        jordan: jordan ?? this.jordan,
        kazakhstan: kazakhstan ?? this.kazakhstan,
        kenya: kenya ?? this.kenya,
        kiribati: kiribati ?? this.kiribati,
        kosovo: kosovo ?? this.kosovo,
        kuwait: kuwait ?? this.kuwait,
        kyrgyzstan: kyrgyzstan ?? this.kyrgyzstan,
        laos: laos ?? this.laos,
        latinAmericaAndCaribbeanEmber: latinAmericaAndCaribbeanEmber ?? this.latinAmericaAndCaribbeanEmber,
        latvia: latvia ?? this.latvia,
        lebanon: lebanon ?? this.lebanon,
        lesotho: lesotho ?? this.lesotho,
        liberia: liberia ?? this.liberia,
        libya: libya ?? this.libya,
        lithuania: lithuania ?? this.lithuania,
        lowIncomeCountries: lowIncomeCountries ?? this.lowIncomeCountries,
        lowerMiddleIncomeCountries: lowerMiddleIncomeCountries ?? this.lowerMiddleIncomeCountries,
        luxembourg: luxembourg ?? this.luxembourg,
        macao: macao ?? this.macao,
        madagascar: madagascar ?? this.madagascar,
        malawi: malawi ?? this.malawi,
        malaysia: malaysia ?? this.malaysia,
        maldives: maldives ?? this.maldives,
        mali: mali ?? this.mali,
        malta: malta ?? this.malta,
        martinique: martinique ?? this.martinique,
        mauritania: mauritania ?? this.mauritania,
        mauritius: mauritius ?? this.mauritius,
        mexico: mexico ?? this.mexico,
        mexicoChileAndOtherOecdAmericasEia: mexicoChileAndOtherOecdAmericasEia ?? this.mexicoChileAndOtherOecdAmericasEia,
        micronesiaCountry: micronesiaCountry ?? this.micronesiaCountry,
        middleAfricaBp: middleAfricaBp ?? this.middleAfricaBp,
        middleEastBp: middleEastBp ?? this.middleEastBp,
        middleEastEia: middleEastEia ?? this.middleEastEia,
        middleEastEmber: middleEastEmber ?? this.middleEastEmber,
        middleEastShift: middleEastShift ?? this.middleEastShift,
        moldova: moldova ?? this.moldova,
        mongolia: mongolia ?? this.mongolia,
        montenegro: montenegro ?? this.montenegro,
        montserrat: montserrat ?? this.montserrat,
        morocco: morocco ?? this.morocco,
        mozambique: mozambique ?? this.mozambique,
        myanmar: myanmar ?? this.myanmar,
        namibia: namibia ?? this.namibia,
        nauru: nauru ?? this.nauru,
        nepal: nepal ?? this.nepal,
        netherlands: netherlands ?? this.netherlands,
        netherlandsAntilles: netherlandsAntilles ?? this.netherlandsAntilles,
        newCaledonia: newCaledonia ?? this.newCaledonia,
        newZealand: newZealand ?? this.newZealand,
        nicaragua: nicaragua ?? this.nicaragua,
        niger: niger ?? this.niger,
        nigeria: nigeria ?? this.nigeria,
        niue: niue ?? this.niue,
        nonOecdBp: nonOecdBp ?? this.nonOecdBp,
        nonOecdEia: nonOecdEia ?? this.nonOecdEia,
        nonOpecEia: nonOpecEia ?? this.nonOpecEia,
        northAmerica: northAmerica ?? this.northAmerica,
        northAmericaBp: northAmericaBp ?? this.northAmericaBp,
        northAmericaShift: northAmericaShift ?? this.northAmericaShift,
        northKorea: northKorea ?? this.northKorea,
        northMacedonia: northMacedonia ?? this.northMacedonia,
        northernMarianaIslands: northernMarianaIslands ?? this.northernMarianaIslands,
        norway: norway ?? this.norway,
        oecdBp: oecdBp ?? this.oecdBp,
        oecdEia: oecdEia ?? this.oecdEia,
        oecdEmber: oecdEmber ?? this.oecdEmber,
        oecdShift: oecdShift ?? this.oecdShift,
        oecdAsiaAndOceaniaEia: oecdAsiaAndOceaniaEia ?? this.oecdAsiaAndOceaniaEia,
        oecdEuropeEia: oecdEuropeEia ?? this.oecdEuropeEia,
        oecdNorthAmericaEia: oecdNorthAmericaEia ?? this.oecdNorthAmericaEia,
        opecEia: opecEia ?? this.opecEia,
        opecShift: opecShift ?? this.opecShift,
        opecAfricaEia: opecAfricaEia ?? this.opecAfricaEia,
        opecSouthAmericaEia: opecSouthAmericaEia ?? this.opecSouthAmericaEia,
        oceania: oceania ?? this.oceania,
        oman: oman ?? this.oman,
        otherAfricaBp: otherAfricaBp ?? this.otherAfricaBp,
        otherAsiaPacificBp: otherAsiaPacificBp ?? this.otherAsiaPacificBp,
        otherCisBp: otherCisBp ?? this.otherCisBp,
        otherCaribbeanBp: otherCaribbeanBp ?? this.otherCaribbeanBp,
        otherEasternAfricaBp: otherEasternAfricaBp ?? this.otherEasternAfricaBp,
        otherEuropeBp: otherEuropeBp ?? this.otherEuropeBp,
        otherMiddleAfricaBp: otherMiddleAfricaBp ?? this.otherMiddleAfricaBp,
        otherMiddleEastBp: otherMiddleEastBp ?? this.otherMiddleEastBp,
        otherNonOecdAmericaEia: otherNonOecdAmericaEia ?? this.otherNonOecdAmericaEia,
        otherNonOecdAsiaEia: otherNonOecdAsiaEia ?? this.otherNonOecdAsiaEia,
        otherNonOecdEuropeAndEurasiaEia: otherNonOecdEuropeAndEurasiaEia ?? this.otherNonOecdEuropeAndEurasiaEia,
        otherNorthernAfricaBp: otherNorthernAfricaBp ?? this.otherNorthernAfricaBp,
        otherSouthAmericaBp: otherSouthAmericaBp ?? this.otherSouthAmericaBp,
        otherSouthAndCentralAmericaBp: otherSouthAndCentralAmericaBp ?? this.otherSouthAndCentralAmericaBp,
        otherSouthernAfricaBp: otherSouthernAfricaBp ?? this.otherSouthernAfricaBp,
        otherWesternAfricaBp: otherWesternAfricaBp ?? this.otherWesternAfricaBp,
        pakistan: pakistan ?? this.pakistan,
        palestine: palestine ?? this.palestine,
        panama: panama ?? this.panama,
        papuaNewGuinea: papuaNewGuinea ?? this.papuaNewGuinea,
        paraguay: paraguay ?? this.paraguay,
        persianGulfEia: persianGulfEia ?? this.persianGulfEia,
        persianGulfShift: persianGulfShift ?? this.persianGulfShift,
        peru: peru ?? this.peru,
        philippines: philippines ?? this.philippines,
        poland: poland ?? this.poland,
        portugal: portugal ?? this.portugal,
        puertoRico: puertoRico ?? this.puertoRico,
        qatar: qatar ?? this.qatar,
        reunion: reunion ?? this.reunion,
        romania: romania ?? this.romania,
        russia: russia ?? this.russia,
        rwanda: rwanda ?? this.rwanda,
        saintHelena: saintHelena ?? this.saintHelena,
        saintKittsAndNevis: saintKittsAndNevis ?? this.saintKittsAndNevis,
        saintLucia: saintLucia ?? this.saintLucia,
        saintPierreAndMiquelon: saintPierreAndMiquelon ?? this.saintPierreAndMiquelon,
        saintVincentAndTheGrenadines: saintVincentAndTheGrenadines ?? this.saintVincentAndTheGrenadines,
        samoa: samoa ?? this.samoa,
        saoTomeAndPrincipe: saoTomeAndPrincipe ?? this.saoTomeAndPrincipe,
        saudiArabia: saudiArabia ?? this.saudiArabia,
        senegal: senegal ?? this.senegal,
        serbia: serbia ?? this.serbia,
        serbiaAndMontenegro: serbiaAndMontenegro ?? this.serbiaAndMontenegro,
        seychelles: seychelles ?? this.seychelles,
        sierraLeone: sierraLeone ?? this.sierraLeone,
        singapore: singapore ?? this.singapore,
        slovakia: slovakia ?? this.slovakia,
        slovenia: slovenia ?? this.slovenia,
        solomonIslands: solomonIslands ?? this.solomonIslands,
        somalia: somalia ?? this.somalia,
        southAfrica: southAfrica ?? this.southAfrica,
        southAmerica: southAmerica ?? this.southAmerica,
        southKorea: southKorea ?? this.southKorea,
        southKoreaAndOtherOecdAsiaEia: southKoreaAndOtherOecdAsiaEia ?? this.southKoreaAndOtherOecdAsiaEia,
        southSudan: southSudan ?? this.southSudan,
        southAndCentralAmericaBp: southAndCentralAmericaBp ?? this.southAndCentralAmericaBp,
        spain: spain ?? this.spain,
        sriLanka: sriLanka ?? this.sriLanka,
        sudan: sudan ?? this.sudan,
        suriname: suriname ?? this.suriname,
        sweden: sweden ?? this.sweden,
        switzerland: switzerland ?? this.switzerland,
        syria: syria ?? this.syria,
        taiwan: taiwan ?? this.taiwan,
        tajikistan: tajikistan ?? this.tajikistan,
        tanzania: tanzania ?? this.tanzania,
        thailand: thailand ?? this.thailand,
        timor: timor ?? this.timor,
        togo: togo ?? this.togo,
        tonga: tonga ?? this.tonga,
        totalNonOpecBp: totalNonOpecBp ?? this.totalNonOpecBp,
        totalOpecBp: totalOpecBp ?? this.totalOpecBp,
        trinidadAndTobago: trinidadAndTobago ?? this.trinidadAndTobago,
        tunisia: tunisia ?? this.tunisia,
        turkey: turkey ?? this.turkey,
        turkmenistan: turkmenistan ?? this.turkmenistan,
        turksAndCaicosIslands: turksAndCaicosIslands ?? this.turksAndCaicosIslands,
        tuvalu: tuvalu ?? this.tuvalu,
        uSPacificIslandsEia: uSPacificIslandsEia ?? this.uSPacificIslandsEia,
        uSPacificIslandsShift: uSPacificIslandsShift ?? this.uSPacificIslandsShift,
        uSTerritoriesEia: uSTerritoriesEia ?? this.uSTerritoriesEia,
        uSTerritoriesShift: uSTerritoriesShift ?? this.uSTerritoriesShift,
        ussr: ussr ?? this.ussr,
        uganda: uganda ?? this.uganda,
        ukraine: ukraine ?? this.ukraine,
        unitedArabEmirates: unitedArabEmirates ?? this.unitedArabEmirates,
        unitedKingdom: unitedKingdom ?? this.unitedKingdom,
        unitedStates: unitedStates ?? this.unitedStates,
        unitedStatesVirginIslands: unitedStatesVirginIslands ?? this.unitedStatesVirginIslands,
        upperMiddleIncomeCountries: upperMiddleIncomeCountries ?? this.upperMiddleIncomeCountries,
        uruguay: uruguay ?? this.uruguay,
        uzbekistan: uzbekistan ?? this.uzbekistan,
        vanuatu: vanuatu ?? this.vanuatu,
        venezuela: venezuela ?? this.venezuela,
        vietnam: vietnam ?? this.vietnam,
        wakeIslandEia: wakeIslandEia ?? this.wakeIslandEia,
        wakeIslandShift: wakeIslandShift ?? this.wakeIslandShift,
        westGermanyEia: westGermanyEia ?? this.westGermanyEia,
        westernAfricaBp: westernAfricaBp ?? this.westernAfricaBp,
        westernSahara: westernSahara ?? this.westernSahara,
        world: world ?? this.world,
        yemen: yemen ?? this.yemen,
        yugoslavia: yugoslavia ?? this.yugoslavia,
        zambia: zambia ?? this.zambia,
        zimbabwe: zimbabwe ?? this.zimbabwe,
      );

  factory WorldData.fromJson(Map<String, dynamic> json) => WorldData(
    afghanistan: Afghanistan.fromJson(json["Afghanistan"]),
    africa: Africa.fromJson(json["Africa"]),
    africaBp: Africa.fromJson(json["Africa (BP)"]),
    africaShift: AfricaShiftClass.fromJson(json["Africa (Shift)"]),
    albania: Afghanistan.fromJson(json["Albania"]),
    algeria: Algeria.fromJson(json["Algeria"]),
    americanSamoa: Algeria.fromJson(json["American Samoa"]),
    angola: Afghanistan.fromJson(json["Angola"]),
    antarctica: Antarctica.fromJson(json["Antarctica"]),
    antiguaAndBarbuda: Algeria.fromJson(json["Antigua and Barbuda"]),
    argentina: Algeria.fromJson(json["Argentina"]),
    armenia: Algeria.fromJson(json["Armenia"]),
    aruba: Algeria.fromJson(json["Aruba"]),
    asia: Africa.fromJson(json["Asia"]),
    asiaOceaniaEia: AsiaOceaniaEia.fromJson(json["Asia & Oceania (EIA)"]),
    asiaPacificBp: Africa.fromJson(json["Asia Pacific (BP)"]),
    asiaAndOceaniaShift: AfricaShiftClass.fromJson(json["Asia and Oceania (Shift)"]),
    australia: Algeria.fromJson(json["Australia"]),
    australiaAndNewZealandEia: AsiaOceaniaEia.fromJson(json["Australia and New Zealand (EIA)"]),
    austria: Algeria.fromJson(json["Austria"]),
    azerbaijan: Algeria.fromJson(json["Azerbaijan"]),
    bahamas: Algeria.fromJson(json["Bahamas"]),
    bahrain: Afghanistan.fromJson(json["Bahrain"]),
    bangladesh: Algeria.fromJson(json["Bangladesh"]),
    barbados: Afghanistan.fromJson(json["Barbados"]),
    belarus: Algeria.fromJson(json["Belarus"]),
    belgium: Algeria.fromJson(json["Belgium"]),
    belize: Belize.fromJson(json["Belize"]),
    benin: Afghanistan.fromJson(json["Benin"]),
    bermuda: Afghanistan.fromJson(json["Bermuda"]),
    bhutan: Afghanistan.fromJson(json["Bhutan"]),
    bolivia: Afghanistan.fromJson(json["Bolivia"]),
    bosniaAndHerzegovina: Afghanistan.fromJson(json["Bosnia and Herzegovina"]),
    botswana: Afghanistan.fromJson(json["Botswana"]),
    brazil: Algeria.fromJson(json["Brazil"]),
    britishVirginIslands: Algeria.fromJson(json["British Virgin Islands"]),
    brunei: Afghanistan.fromJson(json["Brunei"]),
    bulgaria: Algeria.fromJson(json["Bulgaria"]),
    burkinaFaso: Algeria.fromJson(json["Burkina Faso"]),
    burundi: Afghanistan.fromJson(json["Burundi"]),
    cisBp: Africa.fromJson(json["CIS (BP)"]),
    cambodia: Algeria.fromJson(json["Cambodia"]),
    cameroon: Afghanistan.fromJson(json["Cameroon"]),
    canada: Algeria.fromJson(json["Canada"]),
    capeVerde: Algeria.fromJson(json["Cape Verde"]),
    caymanIslands: Algeria.fromJson(json["Cayman Islands"]),
    centralSouthAmericaEia: AsiaOceaniaEia.fromJson(json["Central & South America (EIA)"]),
    centralAfricanRepublic: Algeria.fromJson(json["Central African Republic"]),
    centralAmericaBp: Africa.fromJson(json["Central America (BP)"]),
    centralAndSouthAmericaShift: AfricaShiftClass.fromJson(json["Central and South America (Shift)"]),
    chad: Afghanistan.fromJson(json["Chad"]),
    chile: Algeria.fromJson(json["Chile"]),
    china: Algeria.fromJson(json["China"]),
    colombia: Algeria.fromJson(json["Colombia"]),
    comoros: Algeria.fromJson(json["Comoros"]),
    congo: Afghanistan.fromJson(json["Congo"]),
    cookIslands: Algeria.fromJson(json["Cook Islands"]),
    costaRica: Algeria.fromJson(json["Costa Rica"]),
    coteDIvoire: Afghanistan.fromJson(json["Cote d'Ivoire"]),
    croatia: Algeria.fromJson(json["Croatia"]),
    cuba: Afghanistan.fromJson(json["Cuba"]),
    cyprus: Algeria.fromJson(json["Cyprus"]),
    czechia: Algeria.fromJson(json["Czechia"]),
    czechoslovakia: Africa.fromJson(json["Czechoslovakia"]),
    democraticRepublicOfCongo: Afghanistan.fromJson(json["Democratic Republic of Congo"]),
    denmark: Algeria.fromJson(json["Denmark"]),
    djibouti: Algeria.fromJson(json["Djibouti"]),
    dominica: Algeria.fromJson(json["Dominica"]),
    dominicanRepublic: Algeria.fromJson(json["Dominican Republic"]),
    eu28Shift: AfricaShiftClass.fromJson(json["EU28 (Shift)"]),
    eastGermanyEia: AsiaOceaniaEia.fromJson(json["East Germany (EIA)"]),
    easternAfricaBp: Africa.fromJson(json["Eastern Africa (BP)"]),
    ecuador: Algeria.fromJson(json["Ecuador"]),
    egypt: Algeria.fromJson(json["Egypt"]),
    elSalvador: Algeria.fromJson(json["El Salvador"]),
    equatorialGuinea: Afghanistan.fromJson(json["Equatorial Guinea"]),
    eritrea: Algeria.fromJson(json["Eritrea"]),
    estonia: Algeria.fromJson(json["Estonia"]),
    eswatini: Afghanistan.fromJson(json["Eswatini"]),
    ethiopia: Afghanistan.fromJson(json["Ethiopia"]),
    eurasiaEia: AsiaOceaniaEia.fromJson(json["Eurasia (EIA)"]),
    eurasiaShift: AfricaShiftClass.fromJson(json["Eurasia (Shift)"]),
    europe: Africa.fromJson(json["Europe"]),
    europeBp: Africa.fromJson(json["Europe (BP)"]),
    europeShift: AfricaShiftClass.fromJson(json["Europe (Shift)"]),
    europeanUnion27: Africa.fromJson(json["European Union (27)"]),
    europeanUnionEia: AsiaOceaniaEia.fromJson(json["European Union (EIA)"]),
    faeroeIslands: Algeria.fromJson(json["Faeroe Islands"]),
    falklandIslands: Algeria.fromJson(json["Falkland Islands"]),
    fiji: Algeria.fromJson(json["Fiji"]),
    finland: Algeria.fromJson(json["Finland"]),
    france: Algeria.fromJson(json["France"]),
    frenchGuiana: Algeria.fromJson(json["French Guiana"]),
    frenchPolynesia: Algeria.fromJson(json["French Polynesia"]),
    g20Ember: Africa.fromJson(json["G20 (Ember)"]),
    g7Ember: Africa.fromJson(json["G7 (Ember)"]),
    gabon: Afghanistan.fromJson(json["Gabon"]),
    gambia: Algeria.fromJson(json["Gambia"]),
    georgia: Afghanistan.fromJson(json["Georgia"]),
    germany: Algeria.fromJson(json["Germany"]),
    ghana: Afghanistan.fromJson(json["Ghana"]),
    gibraltar: Afghanistan.fromJson(json["Gibraltar"]),
    greece: Algeria.fromJson(json["Greece"]),
    greenland: Afghanistan.fromJson(json["Greenland"]),
    grenada: Algeria.fromJson(json["Grenada"]),
    guadeloupe: Algeria.fromJson(json["Guadeloupe"]),
    guam: Algeria.fromJson(json["Guam"]),
    guatemala: Afghanistan.fromJson(json["Guatemala"]),
    guinea: Algeria.fromJson(json["Guinea"]),
    guineaBissau: Algeria.fromJson(json["Guinea-Bissau"]),
    guyana: Algeria.fromJson(json["Guyana"]),
    haiti: Algeria.fromJson(json["Haiti"]),
    hawaiianTradeZoneEia: AsiaOceaniaEia.fromJson(json["Hawaiian Trade Zone (EIA)"]),
    highIncomeCountries: Africa.fromJson(json["High-income countries"]),
    honduras: Algeria.fromJson(json["Honduras"]),
    hongKong: Algeria.fromJson(json["Hong Kong"]),
    hungary: Algeria.fromJson(json["Hungary"]),
    ieoAfricaEia: AsiaOceaniaEia.fromJson(json["IEO - Africa (EIA)"]),
    ieoMiddleEastEia: AsiaOceaniaEia.fromJson(json["IEO - Middle East (EIA)"]),
    ieoOecdEuropeEia: AsiaOceaniaEia.fromJson(json["IEO OECD - Europe (EIA)"]),
    iceland: Algeria.fromJson(json["Iceland"]),
    indeShift: IndeShift.fromJson(json["Inde (Shift)"]),
    india: Algeria.fromJson(json["India"]),
    indonesia: Algeria.fromJson(json["Indonesia"]),
    iran: Algeria.fromJson(json["Iran"]),
    iraq: Algeria.fromJson(json["Iraq"]),
    ireland: Algeria.fromJson(json["Ireland"]),
    israel: Algeria.fromJson(json["Israel"]),
    italy: Algeria.fromJson(json["Italy"]),
    jamaica: Algeria.fromJson(json["Jamaica"]),
    japan: Algeria.fromJson(json["Japan"]),
    jordan: Afghanistan.fromJson(json["Jordan"]),
    kazakhstan: Algeria.fromJson(json["Kazakhstan"]),
    kenya: Algeria.fromJson(json["Kenya"]),
    kiribati: Algeria.fromJson(json["Kiribati"]),
    kosovo: Africa.fromJson(json["Kosovo"]),
    kuwait: Algeria.fromJson(json["Kuwait"]),
    kyrgyzstan: Afghanistan.fromJson(json["Kyrgyzstan"]),
    laos: Afghanistan.fromJson(json["Laos"]),
    latinAmericaAndCaribbeanEmber: Africa.fromJson(json["Latin America and Caribbean (Ember)"]),
    latvia: Algeria.fromJson(json["Latvia"]),
    lebanon: Algeria.fromJson(json["Lebanon"]),
    lesotho: Algeria.fromJson(json["Lesotho"]),
    liberia: Algeria.fromJson(json["Liberia"]),
    libya: Afghanistan.fromJson(json["Libya"]),
    lithuania: Algeria.fromJson(json["Lithuania"]),
    lowIncomeCountries: LowIncomeCountries.fromJson(json["Low-income countries"]),
    lowerMiddleIncomeCountries: Africa.fromJson(json["Lower-middle-income countries"]),
    luxembourg: Algeria.fromJson(json["Luxembourg"]),
    macao: Algeria.fromJson(json["Macao"]),
    madagascar: Afghanistan.fromJson(json["Madagascar"]),
    malawi: Afghanistan.fromJson(json["Malawi"]),
    malaysia: Algeria.fromJson(json["Malaysia"]),
    maldives: Algeria.fromJson(json["Maldives"]),
    mali: Algeria.fromJson(json["Mali"]),
    malta: Algeria.fromJson(json["Malta"]),
    martinique: Algeria.fromJson(json["Martinique"]),
    mauritania: Afghanistan.fromJson(json["Mauritania"]),
    mauritius: Algeria.fromJson(json["Mauritius"]),
    mexico: Algeria.fromJson(json["Mexico"]),
    mexicoChileAndOtherOecdAmericasEia: AsiaOceaniaEia.fromJson(json["Mexico, Chile, and other OECD Americas (EIA)"]),
    micronesiaCountry: MicronesiaCountry.fromJson(json["Micronesia (country)"]),
    middleAfricaBp: Africa.fromJson(json["Middle Africa (BP)"]),
    middleEastBp: Africa.fromJson(json["Middle East (BP)"]),
    middleEastEia: AsiaOceaniaEia.fromJson(json["Middle East (EIA)"]),
    middleEastEmber: Africa.fromJson(json["Middle East (Ember)"]),
    middleEastShift: AfricaShiftClass.fromJson(json["Middle East (Shift)"]),
    moldova: Afghanistan.fromJson(json["Moldova"]),
    mongolia: Afghanistan.fromJson(json["Mongolia"]),
    montenegro: Afghanistan.fromJson(json["Montenegro"]),
    montserrat: Algeria.fromJson(json["Montserrat"]),
    morocco: Algeria.fromJson(json["Morocco"]),
    mozambique: Afghanistan.fromJson(json["Mozambique"]),
    myanmar: Afghanistan.fromJson(json["Myanmar"]),
    namibia: Algeria.fromJson(json["Namibia"]),
    nauru: Algeria.fromJson(json["Nauru"]),
    nepal: Afghanistan.fromJson(json["Nepal"]),
    netherlands: Algeria.fromJson(json["Netherlands"]),
    netherlandsAntilles: Algeria.fromJson(json["Netherlands Antilles"]),
    newCaledonia: Algeria.fromJson(json["New Caledonia"]),
    newZealand: Algeria.fromJson(json["New Zealand"]),
    nicaragua: Algeria.fromJson(json["Nicaragua"]),
    niger: Afghanistan.fromJson(json["Niger"]),
    nigeria: Afghanistan.fromJson(json["Nigeria"]),
    niue: Afghanistan.fromJson(json["Niue"]),
    nonOecdBp: Africa.fromJson(json["Non-OECD (BP)"]),
    nonOecdEia: AsiaOceaniaEia.fromJson(json["Non-OECD (EIA)"]),
    nonOpecEia: AsiaOceaniaEia.fromJson(json["Non-OPEC (EIA)"]),
    northAmerica: Africa.fromJson(json["North America"]),
    northAmericaBp: Africa.fromJson(json["North America (BP)"]),
    northAmericaShift: AfricaShiftClass.fromJson(json["North America (Shift)"]),
    northKorea: Afghanistan.fromJson(json["North Korea"]),
    northMacedonia: Algeria.fromJson(json["North Macedonia"]),
    northernMarianaIslands: Algeria.fromJson(json["Northern Mariana Islands"]),
    norway: Algeria.fromJson(json["Norway"]),
    oecdBp: Africa.fromJson(json["OECD (BP)"]),
    oecdEia: AsiaOceaniaEia.fromJson(json["OECD (EIA)"]),
    oecdEmber: Africa.fromJson(json["OECD (Ember)"]),
    oecdShift: AfricaShiftClass.fromJson(json["OECD (Shift)"]),
    oecdAsiaAndOceaniaEia: AsiaOceaniaEia.fromJson(json["OECD - Asia And Oceania (EIA)"]),
    oecdEuropeEia: AsiaOceaniaEia.fromJson(json["OECD - Europe (EIA)"]),
    oecdNorthAmericaEia: AsiaOceaniaEia.fromJson(json["OECD - North America (EIA)"]),
    opecEia: AsiaOceaniaEia.fromJson(json["OPEC (EIA)"]),
    opecShift: AfricaShiftClass.fromJson(json["OPEC (Shift)"]),
    opecAfricaEia: AsiaOceaniaEia.fromJson(json["OPEC - Africa (EIA)"]),
    opecSouthAmericaEia: AsiaOceaniaEia.fromJson(json["OPEC - South America (EIA)"]),
    oceania: Africa.fromJson(json["Oceania"]),
    oman: Algeria.fromJson(json["Oman"]),
    otherAfricaBp: Africa.fromJson(json["Other Africa (BP)"]),
    otherAsiaPacificBp: Africa.fromJson(json["Other Asia Pacific (BP)"]),
    otherCisBp: Africa.fromJson(json["Other CIS (BP)"]),
    otherCaribbeanBp: Africa.fromJson(json["Other Caribbean (BP)"]),
    otherEasternAfricaBp: OtherEasternAfricaBp.fromJson(json["Other Eastern Africa (BP)"]),
    otherEuropeBp: Africa.fromJson(json["Other Europe (BP)"]),
    otherMiddleAfricaBp: Bp.fromJson(json["Other Middle Africa (BP)"]),
    otherMiddleEastBp: Africa.fromJson(json["Other Middle East (BP)"]),
    otherNonOecdAmericaEia: AsiaOceaniaEia.fromJson(json["Other Non-OECD - America (EIA)"]),
    otherNonOecdAsiaEia: AsiaOceaniaEia.fromJson(json["Other Non-OECD - Asia (EIA)"]),
    otherNonOecdEuropeAndEurasiaEia: AsiaOceaniaEia.fromJson(json["Other Non-OECD - Europe and Eurasia (EIA)"]),
    otherNorthernAfricaBp: Africa.fromJson(json["Other Northern Africa (BP)"]),
    otherSouthAmericaBp: Africa.fromJson(json["Other South America (BP)"]),
    otherSouthAndCentralAmericaBp: Africa.fromJson(json["Other South and Central America (BP)"]),
    otherSouthernAfricaBp: Africa.fromJson(json["Other Southern Africa (BP)"]),
    otherWesternAfricaBp: OtherWesternAfricaBp.fromJson(json["Other Western Africa (BP)"]),
    pakistan: Algeria.fromJson(json["Pakistan"]),
    palestine: Algeria.fromJson(json["Palestine"]),
    panama: Algeria.fromJson(json["Panama"]),
    papuaNewGuinea: Afghanistan.fromJson(json["Papua New Guinea"]),
    paraguay: Algeria.fromJson(json["Paraguay"]),
    persianGulfEia: AsiaOceaniaEia.fromJson(json["Persian Gulf (EIA)"]),
    persianGulfShift: AfricaShiftClass.fromJson(json["Persian Gulf (Shift)"]),
    peru: Algeria.fromJson(json["Peru"]),
    philippines: Algeria.fromJson(json["Philippines"]),
    poland: Algeria.fromJson(json["Poland"]),
    portugal: Algeria.fromJson(json["Portugal"]),
    puertoRico: Algeria.fromJson(json["Puerto Rico"]),
    qatar: Algeria.fromJson(json["Qatar"]),
    reunion: Algeria.fromJson(json["Reunion"]),
    romania: Algeria.fromJson(json["Romania"]),
    russia: Algeria.fromJson(json["Russia"]),
    rwanda: Algeria.fromJson(json["Rwanda"]),
    saintHelena: Afghanistan.fromJson(json["Saint Helena"]),
    saintKittsAndNevis: Algeria.fromJson(json["Saint Kitts and Nevis"]),
    saintLucia: Algeria.fromJson(json["Saint Lucia"]),
    saintPierreAndMiquelon: Algeria.fromJson(json["Saint Pierre and Miquelon"]),
    saintVincentAndTheGrenadines: Algeria.fromJson(json["Saint Vincent and the Grenadines"]),
    samoa: Algeria.fromJson(json["Samoa"]),
    saoTomeAndPrincipe: Algeria.fromJson(json["Sao Tome and Principe"]),
    saudiArabia: Algeria.fromJson(json["Saudi Arabia"]),
    senegal: Afghanistan.fromJson(json["Senegal"]),
    serbia: Afghanistan.fromJson(json["Serbia"]),
    serbiaAndMontenegro: AsiaOceaniaEia.fromJson(json["Serbia and Montenegro"]),
    seychelles: Algeria.fromJson(json["Seychelles"]),
    sierraLeone: Algeria.fromJson(json["Sierra Leone"]),
    singapore: Algeria.fromJson(json["Singapore"]),
    slovakia: Algeria.fromJson(json["Slovakia"]),
    slovenia: Algeria.fromJson(json["Slovenia"]),
    solomonIslands: Algeria.fromJson(json["Solomon Islands"]),
    somalia: Algeria.fromJson(json["Somalia"]),
    southAfrica: Algeria.fromJson(json["South Africa"]),
    southAmerica: Africa.fromJson(json["South America"]),
    southKorea: Algeria.fromJson(json["South Korea"]),
    southKoreaAndOtherOecdAsiaEia: AsiaOceaniaEia.fromJson(json["South Korea and other OECD Asia (EIA)"]),
    southSudan: Belize.fromJson(json["South Sudan"]),
    southAndCentralAmericaBp: Africa.fromJson(json["South and Central America (BP)"]),
    spain: Algeria.fromJson(json["Spain"]),
    sriLanka: Algeria.fromJson(json["Sri Lanka"]),
    sudan: Belize.fromJson(json["Sudan"]),
    suriname: Belize.fromJson(json["Suriname"]),
    sweden: Algeria.fromJson(json["Sweden"]),
    switzerland: Algeria.fromJson(json["Switzerland"]),
    syria: Afghanistan.fromJson(json["Syria"]),
    taiwan: Algeria.fromJson(json["Taiwan"]),
    tajikistan: Afghanistan.fromJson(json["Tajikistan"]),
    tanzania: Afghanistan.fromJson(json["Tanzania"]),
    thailand: Algeria.fromJson(json["Thailand"]),
    timor: Afghanistan.fromJson(json["Timor"]),
    togo: Algeria.fromJson(json["Togo"]),
    tonga: Algeria.fromJson(json["Tonga"]),
    totalNonOpecBp: Bp.fromJson(json["Total Non-OPEC (BP)"]),
    totalOpecBp: Bp.fromJson(json["Total OPEC (BP)"]),
    trinidadAndTobago: Algeria.fromJson(json["Trinidad and Tobago"]),
    tunisia: Afghanistan.fromJson(json["Tunisia"]),
    turkey: Algeria.fromJson(json["Turkey"]),
    turkmenistan: Algeria.fromJson(json["Turkmenistan"]),
    turksAndCaicosIslands: Algeria.fromJson(json["Turks and Caicos Islands"]),
    tuvalu: MicronesiaCountry.fromJson(json["Tuvalu"]),
    uSPacificIslandsEia: AsiaOceaniaEia.fromJson(json["U.S. Pacific Islands (EIA)"]),
    uSPacificIslandsShift: USPacificIslandsShiftClass.fromJson(json["U.S. Pacific Islands (Shift)"]),
    uSTerritoriesEia: AsiaOceaniaEia.fromJson(json["U.S. Territories (EIA)"]),
    uSTerritoriesShift: USPacificIslandsShiftClass.fromJson(json["U.S. Territories (Shift)"]),
    ussr: Africa.fromJson(json["USSR"]),
    uganda: Algeria.fromJson(json["Uganda"]),
    ukraine: Algeria.fromJson(json["Ukraine"]),
    unitedArabEmirates: Algeria.fromJson(json["United Arab Emirates"]),
    unitedKingdom: Algeria.fromJson(json["United Kingdom"]),
    unitedStates: Algeria.fromJson(json["United States"]),
    unitedStatesVirginIslands: Algeria.fromJson(json["United States Virgin Islands"]),
    upperMiddleIncomeCountries: Africa.fromJson(json["Upper-middle-income countries"]),
    uruguay: Algeria.fromJson(json["Uruguay"]),
    uzbekistan: Algeria.fromJson(json["Uzbekistan"]),
    vanuatu: Algeria.fromJson(json["Vanuatu"]),
    venezuela: Algeria.fromJson(json["Venezuela"]),
    vietnam: Algeria.fromJson(json["Vietnam"]),
    wakeIslandEia: AsiaOceaniaEia.fromJson(json["Wake Island (EIA)"]),
    wakeIslandShift: USPacificIslandsShiftClass.fromJson(json["Wake Island (Shift)"]),
    westGermanyEia: AsiaOceaniaEia.fromJson(json["West Germany (EIA)"]),
    westernAfricaBp: Africa.fromJson(json["Western Africa (BP)"]),
    westernSahara: Algeria.fromJson(json["Western Sahara"]),
    world: Africa.fromJson(json["World"]),
    yemen: Afghanistan.fromJson(json["Yemen"]),
    yugoslavia: Africa.fromJson(json["Yugoslavia"]),
    zambia: Afghanistan.fromJson(json["Zambia"]),
    zimbabwe: Afghanistan.fromJson(json["Zimbabwe"]),
  );

  Map<String, dynamic> toJson() => {
    "Afghanistan": afghanistan.toJson(),
    "Africa": africa.toJson(),
    "Africa (BP)": africaBp.toJson(),
    "Africa (Shift)": africaShift.toJson(),
    "Albania": albania.toJson(),
    "Algeria": algeria.toJson(),
    "American Samoa": americanSamoa.toJson(),
    "Angola": angola.toJson(),
    "Antarctica": antarctica.toJson(),
    "Antigua and Barbuda": antiguaAndBarbuda.toJson(),
    "Argentina": argentina.toJson(),
    "Armenia": armenia.toJson(),
    "Aruba": aruba.toJson(),
    "Asia": asia.toJson(),
    "Asia & Oceania (EIA)": asiaOceaniaEia.toJson(),
    "Asia Pacific (BP)": asiaPacificBp.toJson(),
    "Asia and Oceania (Shift)": asiaAndOceaniaShift.toJson(),
    "Australia": australia.toJson(),
    "Australia and New Zealand (EIA)": australiaAndNewZealandEia.toJson(),
    "Austria": austria.toJson(),
    "Azerbaijan": azerbaijan.toJson(),
    "Bahamas": bahamas.toJson(),
    "Bahrain": bahrain.toJson(),
    "Bangladesh": bangladesh.toJson(),
    "Barbados": barbados.toJson(),
    "Belarus": belarus.toJson(),
    "Belgium": belgium.toJson(),
    "Belize": belize.toJson(),
    "Benin": benin.toJson(),
    "Bermuda": bermuda.toJson(),
    "Bhutan": bhutan.toJson(),
    "Bolivia": bolivia.toJson(),
    "Bosnia and Herzegovina": bosniaAndHerzegovina.toJson(),
    "Botswana": botswana.toJson(),
    "Brazil": brazil.toJson(),
    "British Virgin Islands": britishVirginIslands.toJson(),
    "Brunei": brunei.toJson(),
    "Bulgaria": bulgaria.toJson(),
    "Burkina Faso": burkinaFaso.toJson(),
    "Burundi": burundi.toJson(),
    "CIS (BP)": cisBp.toJson(),
    "Cambodia": cambodia.toJson(),
    "Cameroon": cameroon.toJson(),
    "Canada": canada.toJson(),
    "Cape Verde": capeVerde.toJson(),
    "Cayman Islands": caymanIslands.toJson(),
    "Central & South America (EIA)": centralSouthAmericaEia.toJson(),
    "Central African Republic": centralAfricanRepublic.toJson(),
    "Central America (BP)": centralAmericaBp.toJson(),
    "Central and South America (Shift)": centralAndSouthAmericaShift.toJson(),
    "Chad": chad.toJson(),
    "Chile": chile.toJson(),
    "China": china.toJson(),
    "Colombia": colombia.toJson(),
    "Comoros": comoros.toJson(),
    "Congo": congo.toJson(),
    "Cook Islands": cookIslands.toJson(),
    "Costa Rica": costaRica.toJson(),
    "Cote d'Ivoire": coteDIvoire.toJson(),
    "Croatia": croatia.toJson(),
    "Cuba": cuba.toJson(),
    "Cyprus": cyprus.toJson(),
    "Czechia": czechia.toJson(),
    "Czechoslovakia": czechoslovakia.toJson(),
    "Democratic Republic of Congo": democraticRepublicOfCongo.toJson(),
    "Denmark": denmark.toJson(),
    "Djibouti": djibouti.toJson(),
    "Dominica": dominica.toJson(),
    "Dominican Republic": dominicanRepublic.toJson(),
    "EU28 (Shift)": eu28Shift.toJson(),
    "East Germany (EIA)": eastGermanyEia.toJson(),
    "Eastern Africa (BP)": easternAfricaBp.toJson(),
    "Ecuador": ecuador.toJson(),
    "Egypt": egypt.toJson(),
    "El Salvador": elSalvador.toJson(),
    "Equatorial Guinea": equatorialGuinea.toJson(),
    "Eritrea": eritrea.toJson(),
    "Estonia": estonia.toJson(),
    "Eswatini": eswatini.toJson(),
    "Ethiopia": ethiopia.toJson(),
    "Eurasia (EIA)": eurasiaEia.toJson(),
    "Eurasia (Shift)": eurasiaShift.toJson(),
    "Europe": europe.toJson(),
    "Europe (BP)": europeBp.toJson(),
    "Europe (Shift)": europeShift.toJson(),
    "European Union (27)": europeanUnion27.toJson(),
    "European Union (EIA)": europeanUnionEia.toJson(),
    "Faeroe Islands": faeroeIslands.toJson(),
    "Falkland Islands": falklandIslands.toJson(),
    "Fiji": fiji.toJson(),
    "Finland": finland.toJson(),
    "France": france.toJson(),
    "French Guiana": frenchGuiana.toJson(),
    "French Polynesia": frenchPolynesia.toJson(),
    "G20 (Ember)": g20Ember.toJson(),
    "G7 (Ember)": g7Ember.toJson(),
    "Gabon": gabon.toJson(),
    "Gambia": gambia.toJson(),
    "Georgia": georgia.toJson(),
    "Germany": germany.toJson(),
    "Ghana": ghana.toJson(),
    "Gibraltar": gibraltar.toJson(),
    "Greece": greece.toJson(),
    "Greenland": greenland.toJson(),
    "Grenada": grenada.toJson(),
    "Guadeloupe": guadeloupe.toJson(),
    "Guam": guam.toJson(),
    "Guatemala": guatemala.toJson(),
    "Guinea": guinea.toJson(),
    "Guinea-Bissau": guineaBissau.toJson(),
    "Guyana": guyana.toJson(),
    "Haiti": haiti.toJson(),
    "Hawaiian Trade Zone (EIA)": hawaiianTradeZoneEia.toJson(),
    "High-income countries": highIncomeCountries.toJson(),
    "Honduras": honduras.toJson(),
    "Hong Kong": hongKong.toJson(),
    "Hungary": hungary.toJson(),
    "IEO - Africa (EIA)": ieoAfricaEia.toJson(),
    "IEO - Middle East (EIA)": ieoMiddleEastEia.toJson(),
    "IEO OECD - Europe (EIA)": ieoOecdEuropeEia.toJson(),
    "Iceland": iceland.toJson(),
    "Inde (Shift)": indeShift.toJson(),
    "India": india.toJson(),
    "Indonesia": indonesia.toJson(),
    "Iran": iran.toJson(),
    "Iraq": iraq.toJson(),
    "Ireland": ireland.toJson(),
    "Israel": israel.toJson(),
    "Italy": italy.toJson(),
    "Jamaica": jamaica.toJson(),
    "Japan": japan.toJson(),
    "Jordan": jordan.toJson(),
    "Kazakhstan": kazakhstan.toJson(),
    "Kenya": kenya.toJson(),
    "Kiribati": kiribati.toJson(),
    "Kosovo": kosovo.toJson(),
    "Kuwait": kuwait.toJson(),
    "Kyrgyzstan": kyrgyzstan.toJson(),
    "Laos": laos.toJson(),
    "Latin America and Caribbean (Ember)": latinAmericaAndCaribbeanEmber.toJson(),
    "Latvia": latvia.toJson(),
    "Lebanon": lebanon.toJson(),
    "Lesotho": lesotho.toJson(),
    "Liberia": liberia.toJson(),
    "Libya": libya.toJson(),
    "Lithuania": lithuania.toJson(),
    "Low-income countries": lowIncomeCountries.toJson(),
    "Lower-middle-income countries": lowerMiddleIncomeCountries.toJson(),
    "Luxembourg": luxembourg.toJson(),
    "Macao": macao.toJson(),
    "Madagascar": madagascar.toJson(),
    "Malawi": malawi.toJson(),
    "Malaysia": malaysia.toJson(),
    "Maldives": maldives.toJson(),
    "Mali": mali.toJson(),
    "Malta": malta.toJson(),
    "Martinique": martinique.toJson(),
    "Mauritania": mauritania.toJson(),
    "Mauritius": mauritius.toJson(),
    "Mexico": mexico.toJson(),
    "Mexico, Chile, and other OECD Americas (EIA)": mexicoChileAndOtherOecdAmericasEia.toJson(),
    "Micronesia (country)": micronesiaCountry.toJson(),
    "Middle Africa (BP)": middleAfricaBp.toJson(),
    "Middle East (BP)": middleEastBp.toJson(),
    "Middle East (EIA)": middleEastEia.toJson(),
    "Middle East (Ember)": middleEastEmber.toJson(),
    "Middle East (Shift)": middleEastShift.toJson(),
    "Moldova": moldova.toJson(),
    "Mongolia": mongolia.toJson(),
    "Montenegro": montenegro.toJson(),
    "Montserrat": montserrat.toJson(),
    "Morocco": morocco.toJson(),
    "Mozambique": mozambique.toJson(),
    "Myanmar": myanmar.toJson(),
    "Namibia": namibia.toJson(),
    "Nauru": nauru.toJson(),
    "Nepal": nepal.toJson(),
    "Netherlands": netherlands.toJson(),
    "Netherlands Antilles": netherlandsAntilles.toJson(),
    "New Caledonia": newCaledonia.toJson(),
    "New Zealand": newZealand.toJson(),
    "Nicaragua": nicaragua.toJson(),
    "Niger": niger.toJson(),
    "Nigeria": nigeria.toJson(),
    "Niue": niue.toJson(),
    "Non-OECD (BP)": nonOecdBp.toJson(),
    "Non-OECD (EIA)": nonOecdEia.toJson(),
    "Non-OPEC (EIA)": nonOpecEia.toJson(),
    "North America": northAmerica.toJson(),
    "North America (BP)": northAmericaBp.toJson(),
    "North America (Shift)": northAmericaShift.toJson(),
    "North Korea": northKorea.toJson(),
    "North Macedonia": northMacedonia.toJson(),
    "Northern Mariana Islands": northernMarianaIslands.toJson(),
    "Norway": norway.toJson(),
    "OECD (BP)": oecdBp.toJson(),
    "OECD (EIA)": oecdEia.toJson(),
    "OECD (Ember)": oecdEmber.toJson(),
    "OECD (Shift)": oecdShift.toJson(),
    "OECD - Asia And Oceania (EIA)": oecdAsiaAndOceaniaEia.toJson(),
    "OECD - Europe (EIA)": oecdEuropeEia.toJson(),
    "OECD - North America (EIA)": oecdNorthAmericaEia.toJson(),
    "OPEC (EIA)": opecEia.toJson(),
    "OPEC (Shift)": opecShift.toJson(),
    "OPEC - Africa (EIA)": opecAfricaEia.toJson(),
    "OPEC - South America (EIA)": opecSouthAmericaEia.toJson(),
    "Oceania": oceania.toJson(),
    "Oman": oman.toJson(),
    "Other Africa (BP)": otherAfricaBp.toJson(),
    "Other Asia Pacific (BP)": otherAsiaPacificBp.toJson(),
    "Other CIS (BP)": otherCisBp.toJson(),
    "Other Caribbean (BP)": otherCaribbeanBp.toJson(),
    "Other Eastern Africa (BP)": otherEasternAfricaBp.toJson(),
    "Other Europe (BP)": otherEuropeBp.toJson(),
    "Other Middle Africa (BP)": otherMiddleAfricaBp.toJson(),
    "Other Middle East (BP)": otherMiddleEastBp.toJson(),
    "Other Non-OECD - America (EIA)": otherNonOecdAmericaEia.toJson(),
    "Other Non-OECD - Asia (EIA)": otherNonOecdAsiaEia.toJson(),
    "Other Non-OECD - Europe and Eurasia (EIA)": otherNonOecdEuropeAndEurasiaEia.toJson(),
    "Other Northern Africa (BP)": otherNorthernAfricaBp.toJson(),
    "Other South America (BP)": otherSouthAmericaBp.toJson(),
    "Other South and Central America (BP)": otherSouthAndCentralAmericaBp.toJson(),
    "Other Southern Africa (BP)": otherSouthernAfricaBp.toJson(),
    "Other Western Africa (BP)": otherWesternAfricaBp.toJson(),
    "Pakistan": pakistan.toJson(),
    "Palestine": palestine.toJson(),
    "Panama": panama.toJson(),
    "Papua New Guinea": papuaNewGuinea.toJson(),
    "Paraguay": paraguay.toJson(),
    "Persian Gulf (EIA)": persianGulfEia.toJson(),
    "Persian Gulf (Shift)": persianGulfShift.toJson(),
    "Peru": peru.toJson(),
    "Philippines": philippines.toJson(),
    "Poland": poland.toJson(),
    "Portugal": portugal.toJson(),
    "Puerto Rico": puertoRico.toJson(),
    "Qatar": qatar.toJson(),
    "Reunion": reunion.toJson(),
    "Romania": romania.toJson(),
    "Russia": russia.toJson(),
    "Rwanda": rwanda.toJson(),
    "Saint Helena": saintHelena.toJson(),
    "Saint Kitts and Nevis": saintKittsAndNevis.toJson(),
    "Saint Lucia": saintLucia.toJson(),
    "Saint Pierre and Miquelon": saintPierreAndMiquelon.toJson(),
    "Saint Vincent and the Grenadines": saintVincentAndTheGrenadines.toJson(),
    "Samoa": samoa.toJson(),
    "Sao Tome and Principe": saoTomeAndPrincipe.toJson(),
    "Saudi Arabia": saudiArabia.toJson(),
    "Senegal": senegal.toJson(),
    "Serbia": serbia.toJson(),
    "Serbia and Montenegro": serbiaAndMontenegro.toJson(),
    "Seychelles": seychelles.toJson(),
    "Sierra Leone": sierraLeone.toJson(),
    "Singapore": singapore.toJson(),
    "Slovakia": slovakia.toJson(),
    "Slovenia": slovenia.toJson(),
    "Solomon Islands": solomonIslands.toJson(),
    "Somalia": somalia.toJson(),
    "South Africa": southAfrica.toJson(),
    "South America": southAmerica.toJson(),
    "South Korea": southKorea.toJson(),
    "South Korea and other OECD Asia (EIA)": southKoreaAndOtherOecdAsiaEia.toJson(),
    "South Sudan": southSudan.toJson(),
    "South and Central America (BP)": southAndCentralAmericaBp.toJson(),
    "Spain": spain.toJson(),
    "Sri Lanka": sriLanka.toJson(),
    "Sudan": sudan.toJson(),
    "Suriname": suriname.toJson(),
    "Sweden": sweden.toJson(),
    "Switzerland": switzerland.toJson(),
    "Syria": syria.toJson(),
    "Taiwan": taiwan.toJson(),
    "Tajikistan": tajikistan.toJson(),
    "Tanzania": tanzania.toJson(),
    "Thailand": thailand.toJson(),
    "Timor": timor.toJson(),
    "Togo": togo.toJson(),
    "Tonga": tonga.toJson(),
    "Total Non-OPEC (BP)": totalNonOpecBp.toJson(),
    "Total OPEC (BP)": totalOpecBp.toJson(),
    "Trinidad and Tobago": trinidadAndTobago.toJson(),
    "Tunisia": tunisia.toJson(),
    "Turkey": turkey.toJson(),
    "Turkmenistan": turkmenistan.toJson(),
    "Turks and Caicos Islands": turksAndCaicosIslands.toJson(),
    "Tuvalu": tuvalu.toJson(),
    "U.S. Pacific Islands (EIA)": uSPacificIslandsEia.toJson(),
    "U.S. Pacific Islands (Shift)": uSPacificIslandsShift.toJson(),
    "U.S. Territories (EIA)": uSTerritoriesEia.toJson(),
    "U.S. Territories (Shift)": uSTerritoriesShift.toJson(),
    "USSR": ussr.toJson(),
    "Uganda": uganda.toJson(),
    "Ukraine": ukraine.toJson(),
    "United Arab Emirates": unitedArabEmirates.toJson(),
    "United Kingdom": unitedKingdom.toJson(),
    "United States": unitedStates.toJson(),
    "United States Virgin Islands": unitedStatesVirginIslands.toJson(),
    "Upper-middle-income countries": upperMiddleIncomeCountries.toJson(),
    "Uruguay": uruguay.toJson(),
    "Uzbekistan": uzbekistan.toJson(),
    "Vanuatu": vanuatu.toJson(),
    "Venezuela": venezuela.toJson(),
    "Vietnam": vietnam.toJson(),
    "Wake Island (EIA)": wakeIslandEia.toJson(),
    "Wake Island (Shift)": wakeIslandShift.toJson(),
    "West Germany (EIA)": westGermanyEia.toJson(),
    "Western Africa (BP)": westernAfricaBp.toJson(),
    "Western Sahara": westernSahara.toJson(),
    "World": world.toJson(),
    "Yemen": yemen.toJson(),
    "Yugoslavia": yugoslavia.toJson(),
    "Zambia": zambia.toJson(),
    "Zimbabwe": zimbabwe.toJson(),
  };
}

class Afghanistan {
  Afghanistan({
    @required this.isoCode,
    @required this.data,
  });

  final String isoCode;
  final List<AfghanistanDatum> data;

  Afghanistan copyWith({
    String isoCode,
    List<AfghanistanDatum> data,
  }) =>
      Afghanistan(
        isoCode: isoCode ?? this.isoCode,
        data: data ?? this.data,
      );

  factory Afghanistan.fromJson(Map<String, dynamic> json) => Afghanistan(
    isoCode: json["iso_code"],
    data: List<AfghanistanDatum>.from(json["data"].map((x) => AfghanistanDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "iso_code": isoCode,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class AfghanistanDatum {
  AfghanistanDatum({
    @required this.year,
    @required this.population,
    @required this.coalProdPerCapita,
    @required this.coalProduction,
    @required this.gasProdPerCapita,
    @required this.gasProduction,
    @required this.coalProdChangeTwh,
    @required this.gasProdChangeTwh,
    @required this.gdp,
    @required this.coalProdChangePct,
    @required this.gasProdChangePct,
    @required this.energyPerCapita,
    @required this.energyPerGdp,
    @required this.oilProdPerCapita,
    @required this.oilProduction,
    @required this.primaryEnergyConsumption,
    @required this.energyConsChangePct,
    @required this.energyConsChangeTwh,
    @required this.oilProdChangeTwh,
    @required this.biofuelElecPerCapita,
    @required this.biofuelElectricity,
    @required this.biofuelShareElec,
    @required this.carbonIntensityElec,
    @required this.coalElecPerCapita,
    @required this.coalElectricity,
    @required this.coalShareElec,
    @required this.electricityDemand,
    @required this.electricityGeneration,
    @required this.fossilElecPerCapita,
    @required this.fossilElectricity,
    @required this.fossilShareElec,
    @required this.gasElecPerCapita,
    @required this.gasElectricity,
    @required this.gasShareElec,
    @required this.greenhouseGasEmissions,
    @required this.hydroElecPerCapita,
    @required this.hydroElectricity,
    @required this.hydroShareElec,
    @required this.lowCarbonElecPerCapita,
    @required this.lowCarbonElectricity,
    @required this.lowCarbonShareElec,
    @required this.netElecImports,
    @required this.netElecImportsShareDemand,
    @required this.nuclearElecPerCapita,
    @required this.nuclearElectricity,
    @required this.nuclearShareElec,
    @required this.oilElecPerCapita,
    @required this.oilElectricity,
    @required this.oilShareElec,
    @required this.otherRenewableElectricity,
    @required this.otherRenewableExcBiofuelElectricity,
    @required this.otherRenewablesElecPerCapita,
    @required this.otherRenewablesElecPerCapitaExcBiofuel,
    @required this.otherRenewablesShareElec,
    @required this.otherRenewablesShareElecExcBiofuel,
    @required this.perCapitaElectricity,
    @required this.renewablesElecPerCapita,
    @required this.renewablesElectricity,
    @required this.renewablesShareElec,
    @required this.solarElecPerCapita,
    @required this.solarElectricity,
    @required this.solarShareElec,
    @required this.windElecPerCapita,
    @required this.windElectricity,
    @required this.windShareElec,
    @required this.oilProdChangePct,
  });

  final int year;
  final int population;
  final double coalProdPerCapita;
  final double coalProduction;
  final double gasProdPerCapita;
  final double gasProduction;
  final double coalProdChangeTwh;
  final double gasProdChangeTwh;
  final int gdp;
  final double coalProdChangePct;
  final double gasProdChangePct;
  final double energyPerCapita;
  final double energyPerGdp;
  final double oilProdPerCapita;
  final double oilProduction;
  final double primaryEnergyConsumption;
  final double energyConsChangePct;
  final double energyConsChangeTwh;
  final double oilProdChangeTwh;
  final dynamic biofuelElecPerCapita;
  final dynamic biofuelElectricity;
  final dynamic biofuelShareElec;
  final double carbonIntensityElec;
  final double coalElecPerCapita;
  final double coalElectricity;
  final double coalShareElec;
  final double electricityDemand;
  final double electricityGeneration;
  final double fossilElecPerCapita;
  final double fossilElectricity;
  final double fossilShareElec;
  final double gasElecPerCapita;
  final double gasElectricity;
  final double gasShareElec;
  final double greenhouseGasEmissions;
  final double hydroElecPerCapita;
  final double hydroElectricity;
  final double hydroShareElec;
  final double lowCarbonElecPerCapita;
  final double lowCarbonElectricity;
  final double lowCarbonShareElec;
  final double netElecImports;
  final double netElecImportsShareDemand;
  final dynamic nuclearElecPerCapita;
  final dynamic nuclearElectricity;
  final dynamic nuclearShareElec;
  final double oilElecPerCapita;
  final double oilElectricity;
  final double oilShareElec;
  final dynamic otherRenewableElectricity;
  final dynamic otherRenewableExcBiofuelElectricity;
  final dynamic otherRenewablesElecPerCapita;
  final dynamic otherRenewablesElecPerCapitaExcBiofuel;
  final dynamic otherRenewablesShareElec;
  final dynamic otherRenewablesShareElecExcBiofuel;
  final double perCapitaElectricity;
  final double renewablesElecPerCapita;
  final double renewablesElectricity;
  final double renewablesShareElec;
  final double solarElecPerCapita;
  final double solarElectricity;
  final double solarShareElec;
  final double windElecPerCapita;
  final double windElectricity;
  final double windShareElec;
  final double oilProdChangePct;

  AfghanistanDatum copyWith({
    int year,
    int population,
    double coalProdPerCapita,
    double coalProduction,
    double gasProdPerCapita,
    double gasProduction,
    double coalProdChangeTwh,
    double gasProdChangeTwh,
    int gdp,
    double coalProdChangePct,
    double gasProdChangePct,
    double energyPerCapita,
    double energyPerGdp,
    double oilProdPerCapita,
    double oilProduction,
    double primaryEnergyConsumption,
    double energyConsChangePct,
    double energyConsChangeTwh,
    double oilProdChangeTwh,
    dynamic biofuelElecPerCapita,
    dynamic biofuelElectricity,
    dynamic biofuelShareElec,
    double carbonIntensityElec,
    double coalElecPerCapita,
    double coalElectricity,
    double coalShareElec,
    double electricityDemand,
    double electricityGeneration,
    double fossilElecPerCapita,
    double fossilElectricity,
    double fossilShareElec,
    double gasElecPerCapita,
    double gasElectricity,
    double gasShareElec,
    double greenhouseGasEmissions,
    double hydroElecPerCapita,
    double hydroElectricity,
    double hydroShareElec,
    double lowCarbonElecPerCapita,
    double lowCarbonElectricity,
    double lowCarbonShareElec,
    double netElecImports,
    double netElecImportsShareDemand,
    dynamic nuclearElecPerCapita,
    dynamic nuclearElectricity,
    dynamic nuclearShareElec,
    double oilElecPerCapita,
    double oilElectricity,
    double oilShareElec,
    dynamic otherRenewableElectricity,
    dynamic otherRenewableExcBiofuelElectricity,
    dynamic otherRenewablesElecPerCapita,
    dynamic otherRenewablesElecPerCapitaExcBiofuel,
    dynamic otherRenewablesShareElec,
    dynamic otherRenewablesShareElecExcBiofuel,
    double perCapitaElectricity,
    double renewablesElecPerCapita,
    double renewablesElectricity,
    double renewablesShareElec,
    double solarElecPerCapita,
    double solarElectricity,
    double solarShareElec,
    double windElecPerCapita,
    double windElectricity,
    double windShareElec,
    double oilProdChangePct,
  }) =>
      AfghanistanDatum(
        year: year ?? this.year,
        population: population ?? this.population,
        coalProdPerCapita: coalProdPerCapita ?? this.coalProdPerCapita,
        coalProduction: coalProduction ?? this.coalProduction,
        gasProdPerCapita: gasProdPerCapita ?? this.gasProdPerCapita,
        gasProduction: gasProduction ?? this.gasProduction,
        coalProdChangeTwh: coalProdChangeTwh ?? this.coalProdChangeTwh,
        gasProdChangeTwh: gasProdChangeTwh ?? this.gasProdChangeTwh,
        gdp: gdp ?? this.gdp,
        coalProdChangePct: coalProdChangePct ?? this.coalProdChangePct,
        gasProdChangePct: gasProdChangePct ?? this.gasProdChangePct,
        energyPerCapita: energyPerCapita ?? this.energyPerCapita,
        energyPerGdp: energyPerGdp ?? this.energyPerGdp,
        oilProdPerCapita: oilProdPerCapita ?? this.oilProdPerCapita,
        oilProduction: oilProduction ?? this.oilProduction,
        primaryEnergyConsumption: primaryEnergyConsumption ?? this.primaryEnergyConsumption,
        energyConsChangePct: energyConsChangePct ?? this.energyConsChangePct,
        energyConsChangeTwh: energyConsChangeTwh ?? this.energyConsChangeTwh,
        oilProdChangeTwh: oilProdChangeTwh ?? this.oilProdChangeTwh,
        biofuelElecPerCapita: biofuelElecPerCapita ?? this.biofuelElecPerCapita,
        biofuelElectricity: biofuelElectricity ?? this.biofuelElectricity,
        biofuelShareElec: biofuelShareElec ?? this.biofuelShareElec,
        carbonIntensityElec: carbonIntensityElec ?? this.carbonIntensityElec,
        coalElecPerCapita: coalElecPerCapita ?? this.coalElecPerCapita,
        coalElectricity: coalElectricity ?? this.coalElectricity,
        coalShareElec: coalShareElec ?? this.coalShareElec,
        electricityDemand: electricityDemand ?? this.electricityDemand,
        electricityGeneration: electricityGeneration ?? this.electricityGeneration,
        fossilElecPerCapita: fossilElecPerCapita ?? this.fossilElecPerCapita,
        fossilElectricity: fossilElectricity ?? this.fossilElectricity,
        fossilShareElec: fossilShareElec ?? this.fossilShareElec,
        gasElecPerCapita: gasElecPerCapita ?? this.gasElecPerCapita,
        gasElectricity: gasElectricity ?? this.gasElectricity,
        gasShareElec: gasShareElec ?? this.gasShareElec,
        greenhouseGasEmissions: greenhouseGasEmissions ?? this.greenhouseGasEmissions,
        hydroElecPerCapita: hydroElecPerCapita ?? this.hydroElecPerCapita,
        hydroElectricity: hydroElectricity ?? this.hydroElectricity,
        hydroShareElec: hydroShareElec ?? this.hydroShareElec,
        lowCarbonElecPerCapita: lowCarbonElecPerCapita ?? this.lowCarbonElecPerCapita,
        lowCarbonElectricity: lowCarbonElectricity ?? this.lowCarbonElectricity,
        lowCarbonShareElec: lowCarbonShareElec ?? this.lowCarbonShareElec,
        netElecImports: netElecImports ?? this.netElecImports,
        netElecImportsShareDemand: netElecImportsShareDemand ?? this.netElecImportsShareDemand,
        nuclearElecPerCapita: nuclearElecPerCapita ?? this.nuclearElecPerCapita,
        nuclearElectricity: nuclearElectricity ?? this.nuclearElectricity,
        nuclearShareElec: nuclearShareElec ?? this.nuclearShareElec,
        oilElecPerCapita: oilElecPerCapita ?? this.oilElecPerCapita,
        oilElectricity: oilElectricity ?? this.oilElectricity,
        oilShareElec: oilShareElec ?? this.oilShareElec,
        otherRenewableElectricity: otherRenewableElectricity ?? this.otherRenewableElectricity,
        otherRenewableExcBiofuelElectricity: otherRenewableExcBiofuelElectricity ?? this.otherRenewableExcBiofuelElectricity,
        otherRenewablesElecPerCapita: otherRenewablesElecPerCapita ?? this.otherRenewablesElecPerCapita,
        otherRenewablesElecPerCapitaExcBiofuel: otherRenewablesElecPerCapitaExcBiofuel ?? this.otherRenewablesElecPerCapitaExcBiofuel,
        otherRenewablesShareElec: otherRenewablesShareElec ?? this.otherRenewablesShareElec,
        otherRenewablesShareElecExcBiofuel: otherRenewablesShareElecExcBiofuel ?? this.otherRenewablesShareElecExcBiofuel,
        perCapitaElectricity: perCapitaElectricity ?? this.perCapitaElectricity,
        renewablesElecPerCapita: renewablesElecPerCapita ?? this.renewablesElecPerCapita,
        renewablesElectricity: renewablesElectricity ?? this.renewablesElectricity,
        renewablesShareElec: renewablesShareElec ?? this.renewablesShareElec,
        solarElecPerCapita: solarElecPerCapita ?? this.solarElecPerCapita,
        solarElectricity: solarElectricity ?? this.solarElectricity,
        solarShareElec: solarShareElec ?? this.solarShareElec,
        windElecPerCapita: windElecPerCapita ?? this.windElecPerCapita,
        windElectricity: windElectricity ?? this.windElectricity,
        windShareElec: windShareElec ?? this.windShareElec,
        oilProdChangePct: oilProdChangePct ?? this.oilProdChangePct,
      );

  factory AfghanistanDatum.fromJson(Map<String, dynamic> json) => AfghanistanDatum(
    year: json["year"],
    population: json["population"] == null ? null : json["population"],
    coalProdPerCapita: json["coal_prod_per_capita"] == null ? null : json["coal_prod_per_capita"].toDouble(),
    coalProduction: json["coal_production"] == null ? null : json["coal_production"].toDouble(),
    gasProdPerCapita: json["gas_prod_per_capita"] == null ? null : json["gas_prod_per_capita"].toDouble(),
    gasProduction: json["gas_production"] == null ? null : json["gas_production"].toDouble(),
    coalProdChangeTwh: json["coal_prod_change_twh"] == null ? null : json["coal_prod_change_twh"].toDouble(),
    gasProdChangeTwh: json["gas_prod_change_twh"] == null ? null : json["gas_prod_change_twh"].toDouble(),
    gdp: json["gdp"] == null ? null : json["gdp"],
    coalProdChangePct: json["coal_prod_change_pct"] == null ? null : json["coal_prod_change_pct"].toDouble(),
    gasProdChangePct: json["gas_prod_change_pct"] == null ? null : json["gas_prod_change_pct"].toDouble(),
    energyPerCapita: json["energy_per_capita"] == null ? null : json["energy_per_capita"].toDouble(),
    energyPerGdp: json["energy_per_gdp"] == null ? null : json["energy_per_gdp"].toDouble(),
    oilProdPerCapita: json["oil_prod_per_capita"] == null ? null : json["oil_prod_per_capita"].toDouble(),
    oilProduction: json["oil_production"] == null ? null : json["oil_production"].toDouble(),
    primaryEnergyConsumption: json["primary_energy_consumption"] == null ? null : json["primary_energy_consumption"].toDouble(),
    energyConsChangePct: json["energy_cons_change_pct"] == null ? null : json["energy_cons_change_pct"].toDouble(),
    energyConsChangeTwh: json["energy_cons_change_twh"] == null ? null : json["energy_cons_change_twh"].toDouble(),
    oilProdChangeTwh: json["oil_prod_change_twh"] == null ? null : json["oil_prod_change_twh"].toDouble(),
    biofuelElecPerCapita: json["biofuel_elec_per_capita"],
    biofuelElectricity: json["biofuel_electricity"],
    biofuelShareElec: json["biofuel_share_elec"],
    carbonIntensityElec: json["carbon_intensity_elec"] == null ? null : json["carbon_intensity_elec"].toDouble(),
    coalElecPerCapita: json["coal_elec_per_capita"] == null ? null : json["coal_elec_per_capita"].toDouble(),
    coalElectricity: json["coal_electricity"] == null ? null : json["coal_electricity"].toDouble(),
    coalShareElec: json["coal_share_elec"] == null ? null : json["coal_share_elec"].toDouble(),
    electricityDemand: json["electricity_demand"] == null ? null : json["electricity_demand"].toDouble(),
    electricityGeneration: json["electricity_generation"] == null ? null : json["electricity_generation"].toDouble(),
    fossilElecPerCapita: json["fossil_elec_per_capita"] == null ? null : json["fossil_elec_per_capita"].toDouble(),
    fossilElectricity: json["fossil_electricity"] == null ? null : json["fossil_electricity"].toDouble(),
    fossilShareElec: json["fossil_share_elec"] == null ? null : json["fossil_share_elec"].toDouble(),
    gasElecPerCapita: json["gas_elec_per_capita"] == null ? null : json["gas_elec_per_capita"].toDouble(),
    gasElectricity: json["gas_electricity"] == null ? null : json["gas_electricity"].toDouble(),
    gasShareElec: json["gas_share_elec"] == null ? null : json["gas_share_elec"].toDouble(),
    greenhouseGasEmissions: json["greenhouse_gas_emissions"] == null ? null : json["greenhouse_gas_emissions"].toDouble(),
    hydroElecPerCapita: json["hydro_elec_per_capita"] == null ? null : json["hydro_elec_per_capita"].toDouble(),
    hydroElectricity: json["hydro_electricity"] == null ? null : json["hydro_electricity"].toDouble(),
    hydroShareElec: json["hydro_share_elec"] == null ? null : json["hydro_share_elec"].toDouble(),
    lowCarbonElecPerCapita: json["low_carbon_elec_per_capita"] == null ? null : json["low_carbon_elec_per_capita"].toDouble(),
    lowCarbonElectricity: json["low_carbon_electricity"] == null ? null : json["low_carbon_electricity"].toDouble(),
    lowCarbonShareElec: json["low_carbon_share_elec"] == null ? null : json["low_carbon_share_elec"].toDouble(),
    netElecImports: json["net_elec_imports"] == null ? null : json["net_elec_imports"].toDouble(),
    netElecImportsShareDemand: json["net_elec_imports_share_demand"] == null ? null : json["net_elec_imports_share_demand"].toDouble(),
    nuclearElecPerCapita: json["nuclear_elec_per_capita"],
    nuclearElectricity: json["nuclear_electricity"],
    nuclearShareElec: json["nuclear_share_elec"],
    oilElecPerCapita: json["oil_elec_per_capita"] == null ? null : json["oil_elec_per_capita"].toDouble(),
    oilElectricity: json["oil_electricity"] == null ? null : json["oil_electricity"].toDouble(),
    oilShareElec: json["oil_share_elec"] == null ? null : json["oil_share_elec"].toDouble(),
    otherRenewableElectricity: json["other_renewable_electricity"],
    otherRenewableExcBiofuelElectricity: json["other_renewable_exc_biofuel_electricity"],
    otherRenewablesElecPerCapita: json["other_renewables_elec_per_capita"],
    otherRenewablesElecPerCapitaExcBiofuel: json["other_renewables_elec_per_capita_exc_biofuel"],
    otherRenewablesShareElec: json["other_renewables_share_elec"],
    otherRenewablesShareElecExcBiofuel: json["other_renewables_share_elec_exc_biofuel"],
    perCapitaElectricity: json["per_capita_electricity"] == null ? null : json["per_capita_electricity"].toDouble(),
    renewablesElecPerCapita: json["renewables_elec_per_capita"] == null ? null : json["renewables_elec_per_capita"].toDouble(),
    renewablesElectricity: json["renewables_electricity"] == null ? null : json["renewables_electricity"].toDouble(),
    renewablesShareElec: json["renewables_share_elec"] == null ? null : json["renewables_share_elec"].toDouble(),
    solarElecPerCapita: json["solar_elec_per_capita"] == null ? null : json["solar_elec_per_capita"].toDouble(),
    solarElectricity: json["solar_electricity"] == null ? null : json["solar_electricity"].toDouble(),
    solarShareElec: json["solar_share_elec"] == null ? null : json["solar_share_elec"].toDouble(),
    windElecPerCapita: json["wind_elec_per_capita"] == null ? null : json["wind_elec_per_capita"].toDouble(),
    windElectricity: json["wind_electricity"] == null ? null : json["wind_electricity"].toDouble(),
    windShareElec: json["wind_share_elec"] == null ? null : json["wind_share_elec"].toDouble(),
    oilProdChangePct: json["oil_prod_change_pct"] == null ? null : json["oil_prod_change_pct"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "population": population == null ? null : population,
    "coal_prod_per_capita": coalProdPerCapita == null ? null : coalProdPerCapita,
    "coal_production": coalProduction == null ? null : coalProduction,
    "gas_prod_per_capita": gasProdPerCapita == null ? null : gasProdPerCapita,
    "gas_production": gasProduction == null ? null : gasProduction,
    "coal_prod_change_twh": coalProdChangeTwh == null ? null : coalProdChangeTwh,
    "gas_prod_change_twh": gasProdChangeTwh == null ? null : gasProdChangeTwh,
    "gdp": gdp == null ? null : gdp,
    "coal_prod_change_pct": coalProdChangePct == null ? null : coalProdChangePct,
    "gas_prod_change_pct": gasProdChangePct == null ? null : gasProdChangePct,
    "energy_per_capita": energyPerCapita == null ? null : energyPerCapita,
    "energy_per_gdp": energyPerGdp == null ? null : energyPerGdp,
    "oil_prod_per_capita": oilProdPerCapita == null ? null : oilProdPerCapita,
    "oil_production": oilProduction == null ? null : oilProduction,
    "primary_energy_consumption": primaryEnergyConsumption == null ? null : primaryEnergyConsumption,
    "energy_cons_change_pct": energyConsChangePct == null ? null : energyConsChangePct,
    "energy_cons_change_twh": energyConsChangeTwh == null ? null : energyConsChangeTwh,
    "oil_prod_change_twh": oilProdChangeTwh == null ? null : oilProdChangeTwh,
    "biofuel_elec_per_capita": biofuelElecPerCapita,
    "biofuel_electricity": biofuelElectricity,
    "biofuel_share_elec": biofuelShareElec,
    "carbon_intensity_elec": carbonIntensityElec == null ? null : carbonIntensityElec,
    "coal_elec_per_capita": coalElecPerCapita == null ? null : coalElecPerCapita,
    "coal_electricity": coalElectricity == null ? null : coalElectricity,
    "coal_share_elec": coalShareElec == null ? null : coalShareElec,
    "electricity_demand": electricityDemand == null ? null : electricityDemand,
    "electricity_generation": electricityGeneration == null ? null : electricityGeneration,
    "fossil_elec_per_capita": fossilElecPerCapita == null ? null : fossilElecPerCapita,
    "fossil_electricity": fossilElectricity == null ? null : fossilElectricity,
    "fossil_share_elec": fossilShareElec == null ? null : fossilShareElec,
    "gas_elec_per_capita": gasElecPerCapita == null ? null : gasElecPerCapita,
    "gas_electricity": gasElectricity == null ? null : gasElectricity,
    "gas_share_elec": gasShareElec == null ? null : gasShareElec,
    "greenhouse_gas_emissions": greenhouseGasEmissions == null ? null : greenhouseGasEmissions,
    "hydro_elec_per_capita": hydroElecPerCapita == null ? null : hydroElecPerCapita,
    "hydro_electricity": hydroElectricity == null ? null : hydroElectricity,
    "hydro_share_elec": hydroShareElec == null ? null : hydroShareElec,
    "low_carbon_elec_per_capita": lowCarbonElecPerCapita == null ? null : lowCarbonElecPerCapita,
    "low_carbon_electricity": lowCarbonElectricity == null ? null : lowCarbonElectricity,
    "low_carbon_share_elec": lowCarbonShareElec == null ? null : lowCarbonShareElec,
    "net_elec_imports": netElecImports == null ? null : netElecImports,
    "net_elec_imports_share_demand": netElecImportsShareDemand == null ? null : netElecImportsShareDemand,
    "nuclear_elec_per_capita": nuclearElecPerCapita,
    "nuclear_electricity": nuclearElectricity,
    "nuclear_share_elec": nuclearShareElec,
    "oil_elec_per_capita": oilElecPerCapita == null ? null : oilElecPerCapita,
    "oil_electricity": oilElectricity == null ? null : oilElectricity,
    "oil_share_elec": oilShareElec == null ? null : oilShareElec,
    "other_renewable_electricity": otherRenewableElectricity,
    "other_renewable_exc_biofuel_electricity": otherRenewableExcBiofuelElectricity,
    "other_renewables_elec_per_capita": otherRenewablesElecPerCapita,
    "other_renewables_elec_per_capita_exc_biofuel": otherRenewablesElecPerCapitaExcBiofuel,
    "other_renewables_share_elec": otherRenewablesShareElec,
    "other_renewables_share_elec_exc_biofuel": otherRenewablesShareElecExcBiofuel,
    "per_capita_electricity": perCapitaElectricity == null ? null : perCapitaElectricity,
    "renewables_elec_per_capita": renewablesElecPerCapita == null ? null : renewablesElecPerCapita,
    "renewables_electricity": renewablesElectricity == null ? null : renewablesElectricity,
    "renewables_share_elec": renewablesShareElec == null ? null : renewablesShareElec,
    "solar_elec_per_capita": solarElecPerCapita == null ? null : solarElecPerCapita,
    "solar_electricity": solarElectricity == null ? null : solarElectricity,
    "solar_share_elec": solarShareElec == null ? null : solarShareElec,
    "wind_elec_per_capita": windElecPerCapita == null ? null : windElecPerCapita,
    "wind_electricity": windElectricity == null ? null : windElectricity,
    "wind_share_elec": windShareElec == null ? null : windShareElec,
    "oil_prod_change_pct": oilProdChangePct == null ? null : oilProdChangePct,
  };
}

class Africa {
  Africa({
    @required this.data,
  });

  final List<Map<String, double>> data;

  Africa copyWith({
    List<Map<String, double>> data,
  }) =>
      Africa(
        data: data ?? this.data,
      );

  factory Africa.fromJson(Map<String, dynamic> json) => Africa(
    data: List<Map<String, double>>.from(json["data"].map((x) => Map.from(x).map((k, v) => MapEntry<String, double>(k, v.toDouble())))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
  };
}

class AfricaShiftClass {
  AfricaShiftClass({
    @required this.data,
  });

  final List<AfricaShiftDatum> data;

  AfricaShiftClass copyWith({
    List<AfricaShiftDatum> data,
  }) =>
      AfricaShiftClass(
        data: data ?? this.data,
      );

  factory AfricaShiftClass.fromJson(Map<String, dynamic> json) => AfricaShiftClass(
    data: List<AfricaShiftDatum>.from(json["data"].map((x) => AfricaShiftDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class AfricaShiftDatum {
  AfricaShiftDatum({
    @required this.year,
    @required this.coalProduction,
    @required this.gasProduction,
    @required this.oilProduction,
    @required this.coalProdChangePct,
    @required this.coalProdChangeTwh,
    @required this.gasProdChangeTwh,
    @required this.oilProdChangeTwh,
    @required this.oilProdChangePct,
    @required this.gasProdChangePct,
  });

  final int year;
  final double coalProduction;
  final double gasProduction;
  final double oilProduction;
  final double coalProdChangePct;
  final double coalProdChangeTwh;
  final double gasProdChangeTwh;
  final double oilProdChangeTwh;
  final double oilProdChangePct;
  final double gasProdChangePct;

  AfricaShiftDatum copyWith({
    int year,
    double coalProduction,
    double gasProduction,
    double oilProduction,
    double coalProdChangePct,
    double coalProdChangeTwh,
    double gasProdChangeTwh,
    double oilProdChangeTwh,
    double oilProdChangePct,
    double gasProdChangePct,
  }) =>
      AfricaShiftDatum(
        year: year ?? this.year,
        coalProduction: coalProduction ?? this.coalProduction,
        gasProduction: gasProduction ?? this.gasProduction,
        oilProduction: oilProduction ?? this.oilProduction,
        coalProdChangePct: coalProdChangePct ?? this.coalProdChangePct,
        coalProdChangeTwh: coalProdChangeTwh ?? this.coalProdChangeTwh,
        gasProdChangeTwh: gasProdChangeTwh ?? this.gasProdChangeTwh,
        oilProdChangeTwh: oilProdChangeTwh ?? this.oilProdChangeTwh,
        oilProdChangePct: oilProdChangePct ?? this.oilProdChangePct,
        gasProdChangePct: gasProdChangePct ?? this.gasProdChangePct,
      );

  factory AfricaShiftDatum.fromJson(Map<String, dynamic> json) => AfricaShiftDatum(
    year: json["year"],
    coalProduction: json["coal_production"].toDouble(),
    gasProduction: json["gas_production"].toDouble(),
    oilProduction: json["oil_production"].toDouble(),
    coalProdChangePct: json["coal_prod_change_pct"] == null ? null : json["coal_prod_change_pct"].toDouble(),
    coalProdChangeTwh: json["coal_prod_change_twh"] == null ? null : json["coal_prod_change_twh"].toDouble(),
    gasProdChangeTwh: json["gas_prod_change_twh"] == null ? null : json["gas_prod_change_twh"].toDouble(),
    oilProdChangeTwh: json["oil_prod_change_twh"] == null ? null : json["oil_prod_change_twh"].toDouble(),
    oilProdChangePct: json["oil_prod_change_pct"] == null ? null : json["oil_prod_change_pct"].toDouble(),
    gasProdChangePct: json["gas_prod_change_pct"] == null ? null : json["gas_prod_change_pct"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "coal_production": coalProduction,
    "gas_production": gasProduction,
    "oil_production": oilProduction,
    "coal_prod_change_pct": coalProdChangePct == null ? null : coalProdChangePct,
    "coal_prod_change_twh": coalProdChangeTwh == null ? null : coalProdChangeTwh,
    "gas_prod_change_twh": gasProdChangeTwh == null ? null : gasProdChangeTwh,
    "oil_prod_change_twh": oilProdChangeTwh == null ? null : oilProdChangeTwh,
    "oil_prod_change_pct": oilProdChangePct == null ? null : oilProdChangePct,
    "gas_prod_change_pct": gasProdChangePct == null ? null : gasProdChangePct,
  };
}

class Algeria {
  Algeria({
    @required this.isoCode,
    @required this.data,
  });

  final String isoCode;
  final List<Map<String, double>> data;

  Algeria copyWith({
    String isoCode,
    List<Map<String, double>> data,
  }) =>
      Algeria(
        isoCode: isoCode ?? this.isoCode,
        data: data ?? this.data,
      );

  factory Algeria.fromJson(Map<String, dynamic> json) => Algeria(
    isoCode: json["iso_code"],
    data: List<Map<String, double>>.from(json["data"].map((x) => Map.from(x).map((k, v) => MapEntry<String, double>(k, v.toDouble())))),
  );

  Map<String, dynamic> toJson() => {
    "iso_code": isoCode,
    "data": List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
  };
}

class Antarctica {
  Antarctica({
    @required this.isoCode,
    @required this.data,
  });

  final String isoCode;
  final List<AntarcticaDatum> data;

  Antarctica copyWith({
    String isoCode,
    List<AntarcticaDatum> data,
  }) =>
      Antarctica(
        isoCode: isoCode ?? this.isoCode,
        data: data ?? this.data,
      );

  factory Antarctica.fromJson(Map<String, dynamic> json) => Antarctica(
    isoCode: json["iso_code"],
    data: List<AntarcticaDatum>.from(json["data"].map((x) => AntarcticaDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "iso_code": isoCode,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class AntarcticaDatum {
  AntarcticaDatum({
    @required this.year,
    @required this.primaryEnergyConsumption,
    @required this.energyConsChangePct,
    @required this.energyConsChangeTwh,
    @required this.population,
  });

  final int year;
  final double primaryEnergyConsumption;
  final double energyConsChangePct;
  final double energyConsChangeTwh;
  final int population;

  AntarcticaDatum copyWith({
    int year,
    double primaryEnergyConsumption,
    double energyConsChangePct,
    double energyConsChangeTwh,
    int population,
  }) =>
      AntarcticaDatum(
        year: year ?? this.year,
        primaryEnergyConsumption: primaryEnergyConsumption ?? this.primaryEnergyConsumption,
        energyConsChangePct: energyConsChangePct ?? this.energyConsChangePct,
        energyConsChangeTwh: energyConsChangeTwh ?? this.energyConsChangeTwh,
        population: population ?? this.population,
      );

  factory AntarcticaDatum.fromJson(Map<String, dynamic> json) => AntarcticaDatum(
    year: json["year"],
    primaryEnergyConsumption: json["primary_energy_consumption"].toDouble(),
    energyConsChangePct: json["energy_cons_change_pct"] == null ? null : json["energy_cons_change_pct"].toDouble(),
    energyConsChangeTwh: json["energy_cons_change_twh"] == null ? null : json["energy_cons_change_twh"].toDouble(),
    population: json["population"] == null ? null : json["population"],
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "primary_energy_consumption": primaryEnergyConsumption,
    "energy_cons_change_pct": energyConsChangePct == null ? null : energyConsChangePct,
    "energy_cons_change_twh": energyConsChangeTwh == null ? null : energyConsChangeTwh,
    "population": population == null ? null : population,
  };
}

class AsiaOceaniaEia {
  AsiaOceaniaEia({
    @required this.data,
  });

  final List<AntarcticaDatum> data;

  AsiaOceaniaEia copyWith({
    List<AntarcticaDatum> data,
  }) =>
      AsiaOceaniaEia(
        data: data ?? this.data,
      );

  factory AsiaOceaniaEia.fromJson(Map<String, dynamic> json) => AsiaOceaniaEia(
    data: List<AntarcticaDatum>.from(json["data"].map((x) => AntarcticaDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Belize {
  Belize({
    @required this.isoCode,
    @required this.data,
  });

  final String isoCode;
  final List<BelizeDatum> data;

  Belize copyWith({
    String isoCode,
    List<BelizeDatum> data,
  }) =>
      Belize(
        isoCode: isoCode ?? this.isoCode,
        data: data ?? this.data,
      );

  factory Belize.fromJson(Map<String, dynamic> json) => Belize(
    isoCode: json["iso_code"],
    data: List<BelizeDatum>.from(json["data"].map((x) => BelizeDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "iso_code": isoCode,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class BelizeDatum {
  BelizeDatum({
    @required this.year,
    @required this.population,
    @required this.coalProdPerCapita,
    @required this.coalProduction,
    @required this.energyPerCapita,
    @required this.gasProdPerCapita,
    @required this.gasProduction,
    @required this.oilProdPerCapita,
    @required this.oilProduction,
    @required this.primaryEnergyConsumption,
    @required this.coalProdChangeTwh,
    @required this.energyConsChangePct,
    @required this.energyConsChangeTwh,
    @required this.gasProdChangeTwh,
    @required this.oilProdChangeTwh,
    @required this.biofuelElecPerCapita,
    @required this.biofuelElectricity,
    @required this.biofuelShareElec,
    @required this.carbonIntensityElec,
    @required this.coalElecPerCapita,
    @required this.coalElectricity,
    @required this.coalShareElec,
    @required this.electricityDemand,
    @required this.electricityGeneration,
    @required this.fossilElecPerCapita,
    @required this.fossilElectricity,
    @required this.fossilShareElec,
    @required this.gasElecPerCapita,
    @required this.gasElectricity,
    @required this.gasShareElec,
    @required this.greenhouseGasEmissions,
    @required this.hydroElecPerCapita,
    @required this.hydroElectricity,
    @required this.hydroShareElec,
    @required this.lowCarbonElecPerCapita,
    @required this.lowCarbonElectricity,
    @required this.lowCarbonShareElec,
    @required this.netElecImports,
    @required this.netElecImportsShareDemand,
    @required this.nuclearElecPerCapita,
    @required this.nuclearElectricity,
    @required this.nuclearShareElec,
    @required this.oilElecPerCapita,
    @required this.oilElectricity,
    @required this.oilShareElec,
    @required this.otherRenewableElectricity,
    @required this.otherRenewableExcBiofuelElectricity,
    @required this.otherRenewablesElecPerCapita,
    @required this.otherRenewablesElecPerCapitaExcBiofuel,
    @required this.otherRenewablesShareElec,
    @required this.otherRenewablesShareElecExcBiofuel,
    @required this.perCapitaElectricity,
    @required this.renewablesElecPerCapita,
    @required this.renewablesElectricity,
    @required this.renewablesShareElec,
    @required this.solarElecPerCapita,
    @required this.solarElectricity,
    @required this.solarShareElec,
    @required this.windElecPerCapita,
    @required this.windElectricity,
    @required this.windShareElec,
    @required this.oilProdChangePct,
  });

  final int year;
  final int population;
  final int coalProdPerCapita;
  final int coalProduction;
  final double energyPerCapita;
  final int gasProdPerCapita;
  final int gasProduction;
  final double oilProdPerCapita;
  final double oilProduction;
  final double primaryEnergyConsumption;
  final int coalProdChangeTwh;
  final double energyConsChangePct;
  final double energyConsChangeTwh;
  final int gasProdChangeTwh;
  final double oilProdChangeTwh;
  final double biofuelElecPerCapita;
  final double biofuelElectricity;
  final double biofuelShareElec;
  final double carbonIntensityElec;
  final int coalElecPerCapita;
  final int coalElectricity;
  final int coalShareElec;
  final double electricityDemand;
  final double electricityGeneration;
  final double fossilElecPerCapita;
  final double fossilElectricity;
  final double fossilShareElec;
  final dynamic gasElecPerCapita;
  final dynamic gasElectricity;
  final dynamic gasShareElec;
  final double greenhouseGasEmissions;
  final double hydroElecPerCapita;
  final double hydroElectricity;
  final double hydroShareElec;
  final double lowCarbonElecPerCapita;
  final double lowCarbonElectricity;
  final double lowCarbonShareElec;
  final dynamic netElecImports;
  final dynamic netElecImportsShareDemand;
  final int nuclearElecPerCapita;
  final int nuclearElectricity;
  final int nuclearShareElec;
  final double oilElecPerCapita;
  final double oilElectricity;
  final double oilShareElec;
  final double otherRenewableElectricity;
  final int otherRenewableExcBiofuelElectricity;
  final double otherRenewablesElecPerCapita;
  final int otherRenewablesElecPerCapitaExcBiofuel;
  final double otherRenewablesShareElec;
  final int otherRenewablesShareElecExcBiofuel;
  final double perCapitaElectricity;
  final double renewablesElecPerCapita;
  final double renewablesElectricity;
  final double renewablesShareElec;
  final double solarElecPerCapita;
  final double solarElectricity;
  final double solarShareElec;
  final int windElecPerCapita;
  final int windElectricity;
  final int windShareElec;
  final double oilProdChangePct;

  BelizeDatum copyWith({
    int year,
    int population,
    int coalProdPerCapita,
    int coalProduction,
    double energyPerCapita,
    int gasProdPerCapita,
    int gasProduction,
    double oilProdPerCapita,
    double oilProduction,
    double primaryEnergyConsumption,
    int coalProdChangeTwh,
    double energyConsChangePct,
    double energyConsChangeTwh,
    int gasProdChangeTwh,
    double oilProdChangeTwh,
    double biofuelElecPerCapita,
    double biofuelElectricity,
    double biofuelShareElec,
    double carbonIntensityElec,
    int coalElecPerCapita,
    int coalElectricity,
    int coalShareElec,
    double electricityDemand,
    double electricityGeneration,
    double fossilElecPerCapita,
    double fossilElectricity,
    double fossilShareElec,
    dynamic gasElecPerCapita,
    dynamic gasElectricity,
    dynamic gasShareElec,
    double greenhouseGasEmissions,
    double hydroElecPerCapita,
    double hydroElectricity,
    double hydroShareElec,
    double lowCarbonElecPerCapita,
    double lowCarbonElectricity,
    double lowCarbonShareElec,
    dynamic netElecImports,
    dynamic netElecImportsShareDemand,
    int nuclearElecPerCapita,
    int nuclearElectricity,
    int nuclearShareElec,
    double oilElecPerCapita,
    double oilElectricity,
    double oilShareElec,
    double otherRenewableElectricity,
    int otherRenewableExcBiofuelElectricity,
    double otherRenewablesElecPerCapita,
    int otherRenewablesElecPerCapitaExcBiofuel,
    double otherRenewablesShareElec,
    int otherRenewablesShareElecExcBiofuel,
    double perCapitaElectricity,
    double renewablesElecPerCapita,
    double renewablesElectricity,
    double renewablesShareElec,
    double solarElecPerCapita,
    double solarElectricity,
    double solarShareElec,
    int windElecPerCapita,
    int windElectricity,
    int windShareElec,
    double oilProdChangePct,
  }) =>
      BelizeDatum(
        year: year ?? this.year,
        population: population ?? this.population,
        coalProdPerCapita: coalProdPerCapita ?? this.coalProdPerCapita,
        coalProduction: coalProduction ?? this.coalProduction,
        energyPerCapita: energyPerCapita ?? this.energyPerCapita,
        gasProdPerCapita: gasProdPerCapita ?? this.gasProdPerCapita,
        gasProduction: gasProduction ?? this.gasProduction,
        oilProdPerCapita: oilProdPerCapita ?? this.oilProdPerCapita,
        oilProduction: oilProduction ?? this.oilProduction,
        primaryEnergyConsumption: primaryEnergyConsumption ?? this.primaryEnergyConsumption,
        coalProdChangeTwh: coalProdChangeTwh ?? this.coalProdChangeTwh,
        energyConsChangePct: energyConsChangePct ?? this.energyConsChangePct,
        energyConsChangeTwh: energyConsChangeTwh ?? this.energyConsChangeTwh,
        gasProdChangeTwh: gasProdChangeTwh ?? this.gasProdChangeTwh,
        oilProdChangeTwh: oilProdChangeTwh ?? this.oilProdChangeTwh,
        biofuelElecPerCapita: biofuelElecPerCapita ?? this.biofuelElecPerCapita,
        biofuelElectricity: biofuelElectricity ?? this.biofuelElectricity,
        biofuelShareElec: biofuelShareElec ?? this.biofuelShareElec,
        carbonIntensityElec: carbonIntensityElec ?? this.carbonIntensityElec,
        coalElecPerCapita: coalElecPerCapita ?? this.coalElecPerCapita,
        coalElectricity: coalElectricity ?? this.coalElectricity,
        coalShareElec: coalShareElec ?? this.coalShareElec,
        electricityDemand: electricityDemand ?? this.electricityDemand,
        electricityGeneration: electricityGeneration ?? this.electricityGeneration,
        fossilElecPerCapita: fossilElecPerCapita ?? this.fossilElecPerCapita,
        fossilElectricity: fossilElectricity ?? this.fossilElectricity,
        fossilShareElec: fossilShareElec ?? this.fossilShareElec,
        gasElecPerCapita: gasElecPerCapita ?? this.gasElecPerCapita,
        gasElectricity: gasElectricity ?? this.gasElectricity,
        gasShareElec: gasShareElec ?? this.gasShareElec,
        greenhouseGasEmissions: greenhouseGasEmissions ?? this.greenhouseGasEmissions,
        hydroElecPerCapita: hydroElecPerCapita ?? this.hydroElecPerCapita,
        hydroElectricity: hydroElectricity ?? this.hydroElectricity,
        hydroShareElec: hydroShareElec ?? this.hydroShareElec,
        lowCarbonElecPerCapita: lowCarbonElecPerCapita ?? this.lowCarbonElecPerCapita,
        lowCarbonElectricity: lowCarbonElectricity ?? this.lowCarbonElectricity,
        lowCarbonShareElec: lowCarbonShareElec ?? this.lowCarbonShareElec,
        netElecImports: netElecImports ?? this.netElecImports,
        netElecImportsShareDemand: netElecImportsShareDemand ?? this.netElecImportsShareDemand,
        nuclearElecPerCapita: nuclearElecPerCapita ?? this.nuclearElecPerCapita,
        nuclearElectricity: nuclearElectricity ?? this.nuclearElectricity,
        nuclearShareElec: nuclearShareElec ?? this.nuclearShareElec,
        oilElecPerCapita: oilElecPerCapita ?? this.oilElecPerCapita,
        oilElectricity: oilElectricity ?? this.oilElectricity,
        oilShareElec: oilShareElec ?? this.oilShareElec,
        otherRenewableElectricity: otherRenewableElectricity ?? this.otherRenewableElectricity,
        otherRenewableExcBiofuelElectricity: otherRenewableExcBiofuelElectricity ?? this.otherRenewableExcBiofuelElectricity,
        otherRenewablesElecPerCapita: otherRenewablesElecPerCapita ?? this.otherRenewablesElecPerCapita,
        otherRenewablesElecPerCapitaExcBiofuel: otherRenewablesElecPerCapitaExcBiofuel ?? this.otherRenewablesElecPerCapitaExcBiofuel,
        otherRenewablesShareElec: otherRenewablesShareElec ?? this.otherRenewablesShareElec,
        otherRenewablesShareElecExcBiofuel: otherRenewablesShareElecExcBiofuel ?? this.otherRenewablesShareElecExcBiofuel,
        perCapitaElectricity: perCapitaElectricity ?? this.perCapitaElectricity,
        renewablesElecPerCapita: renewablesElecPerCapita ?? this.renewablesElecPerCapita,
        renewablesElectricity: renewablesElectricity ?? this.renewablesElectricity,
        renewablesShareElec: renewablesShareElec ?? this.renewablesShareElec,
        solarElecPerCapita: solarElecPerCapita ?? this.solarElecPerCapita,
        solarElectricity: solarElectricity ?? this.solarElectricity,
        solarShareElec: solarShareElec ?? this.solarShareElec,
        windElecPerCapita: windElecPerCapita ?? this.windElecPerCapita,
        windElectricity: windElectricity ?? this.windElectricity,
        windShareElec: windShareElec ?? this.windShareElec,
        oilProdChangePct: oilProdChangePct ?? this.oilProdChangePct,
      );

  factory BelizeDatum.fromJson(Map<String, dynamic> json) => BelizeDatum(
    year: json["year"],
    population: json["population"],
    coalProdPerCapita: json["coal_prod_per_capita"] == null ? null : json["coal_prod_per_capita"],
    coalProduction: json["coal_production"] == null ? null : json["coal_production"],
    energyPerCapita: json["energy_per_capita"] == null ? null : json["energy_per_capita"].toDouble(),
    gasProdPerCapita: json["gas_prod_per_capita"] == null ? null : json["gas_prod_per_capita"],
    gasProduction: json["gas_production"] == null ? null : json["gas_production"],
    oilProdPerCapita: json["oil_prod_per_capita"] == null ? null : json["oil_prod_per_capita"].toDouble(),
    oilProduction: json["oil_production"] == null ? null : json["oil_production"].toDouble(),
    primaryEnergyConsumption: json["primary_energy_consumption"] == null ? null : json["primary_energy_consumption"].toDouble(),
    coalProdChangeTwh: json["coal_prod_change_twh"] == null ? null : json["coal_prod_change_twh"],
    energyConsChangePct: json["energy_cons_change_pct"] == null ? null : json["energy_cons_change_pct"].toDouble(),
    energyConsChangeTwh: json["energy_cons_change_twh"] == null ? null : json["energy_cons_change_twh"].toDouble(),
    gasProdChangeTwh: json["gas_prod_change_twh"] == null ? null : json["gas_prod_change_twh"],
    oilProdChangeTwh: json["oil_prod_change_twh"] == null ? null : json["oil_prod_change_twh"].toDouble(),
    biofuelElecPerCapita: json["biofuel_elec_per_capita"] == null ? null : json["biofuel_elec_per_capita"].toDouble(),
    biofuelElectricity: json["biofuel_electricity"] == null ? null : json["biofuel_electricity"].toDouble(),
    biofuelShareElec: json["biofuel_share_elec"] == null ? null : json["biofuel_share_elec"].toDouble(),
    carbonIntensityElec: json["carbon_intensity_elec"] == null ? null : json["carbon_intensity_elec"].toDouble(),
    coalElecPerCapita: json["coal_elec_per_capita"] == null ? null : json["coal_elec_per_capita"],
    coalElectricity: json["coal_electricity"] == null ? null : json["coal_electricity"],
    coalShareElec: json["coal_share_elec"] == null ? null : json["coal_share_elec"],
    electricityDemand: json["electricity_demand"] == null ? null : json["electricity_demand"].toDouble(),
    electricityGeneration: json["electricity_generation"] == null ? null : json["electricity_generation"].toDouble(),
    fossilElecPerCapita: json["fossil_elec_per_capita"] == null ? null : json["fossil_elec_per_capita"].toDouble(),
    fossilElectricity: json["fossil_electricity"] == null ? null : json["fossil_electricity"].toDouble(),
    fossilShareElec: json["fossil_share_elec"] == null ? null : json["fossil_share_elec"].toDouble(),
    gasElecPerCapita: json["gas_elec_per_capita"],
    gasElectricity: json["gas_electricity"],
    gasShareElec: json["gas_share_elec"],
    greenhouseGasEmissions: json["greenhouse_gas_emissions"] == null ? null : json["greenhouse_gas_emissions"].toDouble(),
    hydroElecPerCapita: json["hydro_elec_per_capita"] == null ? null : json["hydro_elec_per_capita"].toDouble(),
    hydroElectricity: json["hydro_electricity"] == null ? null : json["hydro_electricity"].toDouble(),
    hydroShareElec: json["hydro_share_elec"] == null ? null : json["hydro_share_elec"].toDouble(),
    lowCarbonElecPerCapita: json["low_carbon_elec_per_capita"] == null ? null : json["low_carbon_elec_per_capita"].toDouble(),
    lowCarbonElectricity: json["low_carbon_electricity"] == null ? null : json["low_carbon_electricity"].toDouble(),
    lowCarbonShareElec: json["low_carbon_share_elec"] == null ? null : json["low_carbon_share_elec"].toDouble(),
    netElecImports: json["net_elec_imports"],
    netElecImportsShareDemand: json["net_elec_imports_share_demand"],
    nuclearElecPerCapita: json["nuclear_elec_per_capita"] == null ? null : json["nuclear_elec_per_capita"],
    nuclearElectricity: json["nuclear_electricity"] == null ? null : json["nuclear_electricity"],
    nuclearShareElec: json["nuclear_share_elec"] == null ? null : json["nuclear_share_elec"],
    oilElecPerCapita: json["oil_elec_per_capita"] == null ? null : json["oil_elec_per_capita"].toDouble(),
    oilElectricity: json["oil_electricity"] == null ? null : json["oil_electricity"].toDouble(),
    oilShareElec: json["oil_share_elec"] == null ? null : json["oil_share_elec"].toDouble(),
    otherRenewableElectricity: json["other_renewable_electricity"] == null ? null : json["other_renewable_electricity"].toDouble(),
    otherRenewableExcBiofuelElectricity: json["other_renewable_exc_biofuel_electricity"] == null ? null : json["other_renewable_exc_biofuel_electricity"],
    otherRenewablesElecPerCapita: json["other_renewables_elec_per_capita"] == null ? null : json["other_renewables_elec_per_capita"].toDouble(),
    otherRenewablesElecPerCapitaExcBiofuel: json["other_renewables_elec_per_capita_exc_biofuel"] == null ? null : json["other_renewables_elec_per_capita_exc_biofuel"],
    otherRenewablesShareElec: json["other_renewables_share_elec"] == null ? null : json["other_renewables_share_elec"].toDouble(),
    otherRenewablesShareElecExcBiofuel: json["other_renewables_share_elec_exc_biofuel"] == null ? null : json["other_renewables_share_elec_exc_biofuel"],
    perCapitaElectricity: json["per_capita_electricity"] == null ? null : json["per_capita_electricity"].toDouble(),
    renewablesElecPerCapita: json["renewables_elec_per_capita"] == null ? null : json["renewables_elec_per_capita"].toDouble(),
    renewablesElectricity: json["renewables_electricity"] == null ? null : json["renewables_electricity"].toDouble(),
    renewablesShareElec: json["renewables_share_elec"] == null ? null : json["renewables_share_elec"].toDouble(),
    solarElecPerCapita: json["solar_elec_per_capita"] == null ? null : json["solar_elec_per_capita"].toDouble(),
    solarElectricity: json["solar_electricity"] == null ? null : json["solar_electricity"].toDouble(),
    solarShareElec: json["solar_share_elec"] == null ? null : json["solar_share_elec"].toDouble(),
    windElecPerCapita: json["wind_elec_per_capita"] == null ? null : json["wind_elec_per_capita"],
    windElectricity: json["wind_electricity"] == null ? null : json["wind_electricity"],
    windShareElec: json["wind_share_elec"] == null ? null : json["wind_share_elec"],
    oilProdChangePct: json["oil_prod_change_pct"] == null ? null : json["oil_prod_change_pct"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "population": population,
    "coal_prod_per_capita": coalProdPerCapita == null ? null : coalProdPerCapita,
    "coal_production": coalProduction == null ? null : coalProduction,
    "energy_per_capita": energyPerCapita == null ? null : energyPerCapita,
    "gas_prod_per_capita": gasProdPerCapita == null ? null : gasProdPerCapita,
    "gas_production": gasProduction == null ? null : gasProduction,
    "oil_prod_per_capita": oilProdPerCapita == null ? null : oilProdPerCapita,
    "oil_production": oilProduction == null ? null : oilProduction,
    "primary_energy_consumption": primaryEnergyConsumption == null ? null : primaryEnergyConsumption,
    "coal_prod_change_twh": coalProdChangeTwh == null ? null : coalProdChangeTwh,
    "energy_cons_change_pct": energyConsChangePct == null ? null : energyConsChangePct,
    "energy_cons_change_twh": energyConsChangeTwh == null ? null : energyConsChangeTwh,
    "gas_prod_change_twh": gasProdChangeTwh == null ? null : gasProdChangeTwh,
    "oil_prod_change_twh": oilProdChangeTwh == null ? null : oilProdChangeTwh,
    "biofuel_elec_per_capita": biofuelElecPerCapita == null ? null : biofuelElecPerCapita,
    "biofuel_electricity": biofuelElectricity == null ? null : biofuelElectricity,
    "biofuel_share_elec": biofuelShareElec == null ? null : biofuelShareElec,
    "carbon_intensity_elec": carbonIntensityElec == null ? null : carbonIntensityElec,
    "coal_elec_per_capita": coalElecPerCapita == null ? null : coalElecPerCapita,
    "coal_electricity": coalElectricity == null ? null : coalElectricity,
    "coal_share_elec": coalShareElec == null ? null : coalShareElec,
    "electricity_demand": electricityDemand == null ? null : electricityDemand,
    "electricity_generation": electricityGeneration == null ? null : electricityGeneration,
    "fossil_elec_per_capita": fossilElecPerCapita == null ? null : fossilElecPerCapita,
    "fossil_electricity": fossilElectricity == null ? null : fossilElectricity,
    "fossil_share_elec": fossilShareElec == null ? null : fossilShareElec,
    "gas_elec_per_capita": gasElecPerCapita,
    "gas_electricity": gasElectricity,
    "gas_share_elec": gasShareElec,
    "greenhouse_gas_emissions": greenhouseGasEmissions == null ? null : greenhouseGasEmissions,
    "hydro_elec_per_capita": hydroElecPerCapita == null ? null : hydroElecPerCapita,
    "hydro_electricity": hydroElectricity == null ? null : hydroElectricity,
    "hydro_share_elec": hydroShareElec == null ? null : hydroShareElec,
    "low_carbon_elec_per_capita": lowCarbonElecPerCapita == null ? null : lowCarbonElecPerCapita,
    "low_carbon_electricity": lowCarbonElectricity == null ? null : lowCarbonElectricity,
    "low_carbon_share_elec": lowCarbonShareElec == null ? null : lowCarbonShareElec,
    "net_elec_imports": netElecImports,
    "net_elec_imports_share_demand": netElecImportsShareDemand,
    "nuclear_elec_per_capita": nuclearElecPerCapita == null ? null : nuclearElecPerCapita,
    "nuclear_electricity": nuclearElectricity == null ? null : nuclearElectricity,
    "nuclear_share_elec": nuclearShareElec == null ? null : nuclearShareElec,
    "oil_elec_per_capita": oilElecPerCapita == null ? null : oilElecPerCapita,
    "oil_electricity": oilElectricity == null ? null : oilElectricity,
    "oil_share_elec": oilShareElec == null ? null : oilShareElec,
    "other_renewable_electricity": otherRenewableElectricity == null ? null : otherRenewableElectricity,
    "other_renewable_exc_biofuel_electricity": otherRenewableExcBiofuelElectricity == null ? null : otherRenewableExcBiofuelElectricity,
    "other_renewables_elec_per_capita": otherRenewablesElecPerCapita == null ? null : otherRenewablesElecPerCapita,
    "other_renewables_elec_per_capita_exc_biofuel": otherRenewablesElecPerCapitaExcBiofuel == null ? null : otherRenewablesElecPerCapitaExcBiofuel,
    "other_renewables_share_elec": otherRenewablesShareElec == null ? null : otherRenewablesShareElec,
    "other_renewables_share_elec_exc_biofuel": otherRenewablesShareElecExcBiofuel == null ? null : otherRenewablesShareElecExcBiofuel,
    "per_capita_electricity": perCapitaElectricity == null ? null : perCapitaElectricity,
    "renewables_elec_per_capita": renewablesElecPerCapita == null ? null : renewablesElecPerCapita,
    "renewables_electricity": renewablesElectricity == null ? null : renewablesElectricity,
    "renewables_share_elec": renewablesShareElec == null ? null : renewablesShareElec,
    "solar_elec_per_capita": solarElecPerCapita == null ? null : solarElecPerCapita,
    "solar_electricity": solarElectricity == null ? null : solarElectricity,
    "solar_share_elec": solarShareElec == null ? null : solarShareElec,
    "wind_elec_per_capita": windElecPerCapita == null ? null : windElecPerCapita,
    "wind_electricity": windElectricity == null ? null : windElectricity,
    "wind_share_elec": windShareElec == null ? null : windShareElec,
    "oil_prod_change_pct": oilProdChangePct == null ? null : oilProdChangePct,
  };
}

class IndeShift {
  IndeShift({
    @required this.data,
  });

  final List<IndeShiftDatum> data;

  IndeShift copyWith({
    List<IndeShiftDatum> data,
  }) =>
      IndeShift(
        data: data ?? this.data,
      );

  factory IndeShift.fromJson(Map<String, dynamic> json) => IndeShift(
    data: List<IndeShiftDatum>.from(json["data"].map((x) => IndeShiftDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class IndeShiftDatum {
  IndeShiftDatum({
    @required this.year,
    @required this.coalProduction,
    @required this.coalProdChangeTwh,
    @required this.coalProdChangePct,
  });

  final int year;
  final double coalProduction;
  final double coalProdChangeTwh;
  final double coalProdChangePct;

  IndeShiftDatum copyWith({
    int year,
    double coalProduction,
    double coalProdChangeTwh,
    double coalProdChangePct,
  }) =>
      IndeShiftDatum(
        year: year ?? this.year,
        coalProduction: coalProduction ?? this.coalProduction,
        coalProdChangeTwh: coalProdChangeTwh ?? this.coalProdChangeTwh,
        coalProdChangePct: coalProdChangePct ?? this.coalProdChangePct,
      );

  factory IndeShiftDatum.fromJson(Map<String, dynamic> json) => IndeShiftDatum(
    year: json["year"],
    coalProduction: json["coal_production"].toDouble(),
    coalProdChangeTwh: json["coal_prod_change_twh"] == null ? null : json["coal_prod_change_twh"].toDouble(),
    coalProdChangePct: json["coal_prod_change_pct"] == null ? null : json["coal_prod_change_pct"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "coal_production": coalProduction,
    "coal_prod_change_twh": coalProdChangeTwh == null ? null : coalProdChangeTwh,
    "coal_prod_change_pct": coalProdChangePct == null ? null : coalProdChangePct,
  };
}

class LowIncomeCountries {
  LowIncomeCountries({
    @required this.data,
  });

  final List<AfghanistanDatum> data;

  LowIncomeCountries copyWith({
    List<AfghanistanDatum> data,
  }) =>
      LowIncomeCountries(
        data: data ?? this.data,
      );

  factory LowIncomeCountries.fromJson(Map<String, dynamic> json) => LowIncomeCountries(
    data: List<AfghanistanDatum>.from(json["data"].map((x) => AfghanistanDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class MicronesiaCountry {
  MicronesiaCountry({
    @required this.isoCode,
    @required this.data,
  });

  final String isoCode;
  final List<MicronesiaCountryDatum> data;

  MicronesiaCountry copyWith({
    String isoCode,
    List<MicronesiaCountryDatum> data,
  }) =>
      MicronesiaCountry(
        isoCode: isoCode ?? this.isoCode,
        data: data ?? this.data,
      );

  factory MicronesiaCountry.fromJson(Map<String, dynamic> json) => MicronesiaCountry(
    isoCode: json["iso_code"],
    data: List<MicronesiaCountryDatum>.from(json["data"].map((x) => MicronesiaCountryDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "iso_code": isoCode,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class MicronesiaCountryDatum {
  MicronesiaCountryDatum({
    @required this.year,
    @required this.population,
    @required this.energyPerCapita,
    @required this.primaryEnergyConsumption,
    @required this.energyConsChangeTwh,
    @required this.energyConsChangePct,
  });

  final int year;
  final int population;
  final double energyPerCapita;
  final double primaryEnergyConsumption;
  final double energyConsChangeTwh;
  final double energyConsChangePct;

  MicronesiaCountryDatum copyWith({
    int year,
    int population,
    double energyPerCapita,
    double primaryEnergyConsumption,
    double energyConsChangeTwh,
    double energyConsChangePct,
  }) =>
      MicronesiaCountryDatum(
        year: year ?? this.year,
        population: population ?? this.population,
        energyPerCapita: energyPerCapita ?? this.energyPerCapita,
        primaryEnergyConsumption: primaryEnergyConsumption ?? this.primaryEnergyConsumption,
        energyConsChangeTwh: energyConsChangeTwh ?? this.energyConsChangeTwh,
        energyConsChangePct: energyConsChangePct ?? this.energyConsChangePct,
      );

  factory MicronesiaCountryDatum.fromJson(Map<String, dynamic> json) => MicronesiaCountryDatum(
    year: json["year"],
    population: json["population"],
    energyPerCapita: json["energy_per_capita"].toDouble(),
    primaryEnergyConsumption: json["primary_energy_consumption"].toDouble(),
    energyConsChangeTwh: json["energy_cons_change_twh"] == null ? null : json["energy_cons_change_twh"].toDouble(),
    energyConsChangePct: json["energy_cons_change_pct"] == null ? null : json["energy_cons_change_pct"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "population": population,
    "energy_per_capita": energyPerCapita,
    "primary_energy_consumption": primaryEnergyConsumption,
    "energy_cons_change_twh": energyConsChangeTwh == null ? null : energyConsChangeTwh,
    "energy_cons_change_pct": energyConsChangePct == null ? null : energyConsChangePct,
  };
}

class OtherEasternAfricaBp {
  OtherEasternAfricaBp({
    @required this.data,
  });

  final List<OtherEasternAfricaBpDatum> data;

  OtherEasternAfricaBp copyWith({
    List<OtherEasternAfricaBpDatum> data,
  }) =>
      OtherEasternAfricaBp(
        data: data ?? this.data,
      );

  factory OtherEasternAfricaBp.fromJson(Map<String, dynamic> json) => OtherEasternAfricaBp(
    data: List<OtherEasternAfricaBpDatum>.from(json["data"].map((x) => OtherEasternAfricaBpDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class OtherEasternAfricaBpDatum {
  OtherEasternAfricaBpDatum({
    @required this.year,
    @required this.coalProduction,
    @required this.coalProdChangePct,
    @required this.coalProdChangeTwh,
    @required this.oilProduction,
    @required this.oilProdChangePct,
    @required this.oilProdChangeTwh,
  });

  final int year;
  final double coalProduction;
  final double coalProdChangePct;
  final double coalProdChangeTwh;
  final double oilProduction;
  final double oilProdChangePct;
  final double oilProdChangeTwh;

  OtherEasternAfricaBpDatum copyWith({
    int year,
    double coalProduction,
    double coalProdChangePct,
    double coalProdChangeTwh,
    double oilProduction,
    double oilProdChangePct,
    double oilProdChangeTwh,
  }) =>
      OtherEasternAfricaBpDatum(
        year: year ?? this.year,
        coalProduction: coalProduction ?? this.coalProduction,
        coalProdChangePct: coalProdChangePct ?? this.coalProdChangePct,
        coalProdChangeTwh: coalProdChangeTwh ?? this.coalProdChangeTwh,
        oilProduction: oilProduction ?? this.oilProduction,
        oilProdChangePct: oilProdChangePct ?? this.oilProdChangePct,
        oilProdChangeTwh: oilProdChangeTwh ?? this.oilProdChangeTwh,
      );

  factory OtherEasternAfricaBpDatum.fromJson(Map<String, dynamic> json) => OtherEasternAfricaBpDatum(
    year: json["year"],
    coalProduction: json["coal_production"].toDouble(),
    coalProdChangePct: json["coal_prod_change_pct"] == null ? null : json["coal_prod_change_pct"].toDouble(),
    coalProdChangeTwh: json["coal_prod_change_twh"] == null ? null : json["coal_prod_change_twh"].toDouble(),
    oilProduction: json["oil_production"] == null ? null : json["oil_production"].toDouble(),
    oilProdChangePct: json["oil_prod_change_pct"] == null ? null : json["oil_prod_change_pct"].toDouble(),
    oilProdChangeTwh: json["oil_prod_change_twh"] == null ? null : json["oil_prod_change_twh"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "coal_production": coalProduction,
    "coal_prod_change_pct": coalProdChangePct == null ? null : coalProdChangePct,
    "coal_prod_change_twh": coalProdChangeTwh == null ? null : coalProdChangeTwh,
    "oil_production": oilProduction == null ? null : oilProduction,
    "oil_prod_change_pct": oilProdChangePct == null ? null : oilProdChangePct,
    "oil_prod_change_twh": oilProdChangeTwh == null ? null : oilProdChangeTwh,
  };
}

class Bp {
  Bp({
    @required this.data,
  });

  final List<OtherMiddleAfricaBpDatum> data;

  Bp copyWith({
    List<OtherMiddleAfricaBpDatum> data,
  }) =>
      Bp(
        data: data ?? this.data,
      );

  factory Bp.fromJson(Map<String, dynamic> json) => Bp(
    data: List<OtherMiddleAfricaBpDatum>.from(json["data"].map((x) => OtherMiddleAfricaBpDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class OtherMiddleAfricaBpDatum {
  OtherMiddleAfricaBpDatum({
    @required this.year,
    @required this.oilProduction,
    @required this.oilProdChangePct,
    @required this.oilProdChangeTwh,
  });

  final int year;
  final double oilProduction;
  final double oilProdChangePct;
  final double oilProdChangeTwh;

  OtherMiddleAfricaBpDatum copyWith({
    int year,
    double oilProduction,
    double oilProdChangePct,
    double oilProdChangeTwh,
  }) =>
      OtherMiddleAfricaBpDatum(
        year: year ?? this.year,
        oilProduction: oilProduction ?? this.oilProduction,
        oilProdChangePct: oilProdChangePct ?? this.oilProdChangePct,
        oilProdChangeTwh: oilProdChangeTwh ?? this.oilProdChangeTwh,
      );

  factory OtherMiddleAfricaBpDatum.fromJson(Map<String, dynamic> json) => OtherMiddleAfricaBpDatum(
    year: json["year"],
    oilProduction: json["oil_production"].toDouble(),
    oilProdChangePct: json["oil_prod_change_pct"] == null ? null : json["oil_prod_change_pct"].toDouble(),
    oilProdChangeTwh: json["oil_prod_change_twh"] == null ? null : json["oil_prod_change_twh"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "oil_production": oilProduction,
    "oil_prod_change_pct": oilProdChangePct == null ? null : oilProdChangePct,
    "oil_prod_change_twh": oilProdChangeTwh == null ? null : oilProdChangeTwh,
  };
}

class OtherWesternAfricaBp {
  OtherWesternAfricaBp({
    @required this.data,
  });

  final List<OtherWesternAfricaBpDatum> data;

  OtherWesternAfricaBp copyWith({
    List<OtherWesternAfricaBpDatum> data,
  }) =>
      OtherWesternAfricaBp(
        data: data ?? this.data,
      );

  factory OtherWesternAfricaBp.fromJson(Map<String, dynamic> json) => OtherWesternAfricaBp(
    data: List<OtherWesternAfricaBpDatum>.from(json["data"].map((x) => OtherWesternAfricaBpDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class OtherWesternAfricaBpDatum {
  OtherWesternAfricaBpDatum({
    @required this.year,
    @required this.oilProduction,
    @required this.oilProdChangeTwh,
    @required this.gasProduction,
    @required this.gasProdChangeTwh,
    @required this.oilProdChangePct,
    @required this.gasProdChangePct,
  });

  final int year;
  final double oilProduction;
  final double oilProdChangeTwh;
  final double gasProduction;
  final double gasProdChangeTwh;
  final double oilProdChangePct;
  final double gasProdChangePct;

  OtherWesternAfricaBpDatum copyWith({
    int year,
    double oilProduction,
    double oilProdChangeTwh,
    double gasProduction,
    double gasProdChangeTwh,
    double oilProdChangePct,
    double gasProdChangePct,
  }) =>
      OtherWesternAfricaBpDatum(
        year: year ?? this.year,
        oilProduction: oilProduction ?? this.oilProduction,
        oilProdChangeTwh: oilProdChangeTwh ?? this.oilProdChangeTwh,
        gasProduction: gasProduction ?? this.gasProduction,
        gasProdChangeTwh: gasProdChangeTwh ?? this.gasProdChangeTwh,
        oilProdChangePct: oilProdChangePct ?? this.oilProdChangePct,
        gasProdChangePct: gasProdChangePct ?? this.gasProdChangePct,
      );

  factory OtherWesternAfricaBpDatum.fromJson(Map<String, dynamic> json) => OtherWesternAfricaBpDatum(
    year: json["year"],
    oilProduction: json["oil_production"].toDouble(),
    oilProdChangeTwh: json["oil_prod_change_twh"] == null ? null : json["oil_prod_change_twh"].toDouble(),
    gasProduction: json["gas_production"] == null ? null : json["gas_production"].toDouble(),
    gasProdChangeTwh: json["gas_prod_change_twh"] == null ? null : json["gas_prod_change_twh"].toDouble(),
    oilProdChangePct: json["oil_prod_change_pct"] == null ? null : json["oil_prod_change_pct"].toDouble(),
    gasProdChangePct: json["gas_prod_change_pct"] == null ? null : json["gas_prod_change_pct"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "oil_production": oilProduction,
    "oil_prod_change_twh": oilProdChangeTwh == null ? null : oilProdChangeTwh,
    "gas_production": gasProduction == null ? null : gasProduction,
    "gas_prod_change_twh": gasProdChangeTwh == null ? null : gasProdChangeTwh,
    "oil_prod_change_pct": oilProdChangePct == null ? null : oilProdChangePct,
    "gas_prod_change_pct": gasProdChangePct == null ? null : gasProdChangePct,
  };
}

class USPacificIslandsShiftClass {
  USPacificIslandsShiftClass({
    @required this.data,
  });

  final List<USPacificIslandsShiftDatum> data;

  USPacificIslandsShiftClass copyWith({
    List<USPacificIslandsShiftDatum> data,
  }) =>
      USPacificIslandsShiftClass(
        data: data ?? this.data,
      );

  factory USPacificIslandsShiftClass.fromJson(Map<String, dynamic> json) => USPacificIslandsShiftClass(
    data: List<USPacificIslandsShiftDatum>.from(json["data"].map((x) => USPacificIslandsShiftDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class USPacificIslandsShiftDatum {
  USPacificIslandsShiftDatum({
    @required this.year,
    @required this.coalProduction,
    @required this.gasProduction,
    @required this.oilProduction,
    @required this.coalProdChangeTwh,
    @required this.gasProdChangeTwh,
    @required this.oilProdChangeTwh,
  });

  final int year;
  final int coalProduction;
  final int gasProduction;
  final int oilProduction;
  final int coalProdChangeTwh;
  final int gasProdChangeTwh;
  final int oilProdChangeTwh;

  USPacificIslandsShiftDatum copyWith({
    int year,
    int coalProduction,
    int gasProduction,
    int oilProduction,
    int coalProdChangeTwh,
    int gasProdChangeTwh,
    int oilProdChangeTwh,
  }) =>
      USPacificIslandsShiftDatum(
        year: year,
        coalProduction: coalProduction,
        gasProduction: gasProduction,
        oilProduction: oilProduction,
        coalProdChangeTwh: coalProdChangeTwh,
        gasProdChangeTwh: gasProdChangeTwh,
        oilProdChangeTwh: oilProdChangeTwh ?? this.oilProdChangeTwh,
      );

  factory USPacificIslandsShiftDatum.fromJson(Map<String, dynamic> json) => USPacificIslandsShiftDatum(
    year: json["year"] as int,
    coalProduction: json["coal_production"] as int,
    gasProduction: json["gas_production"] as int,
    oilProduction: json["oil_production"] as int,
    coalProdChangeTwh: json["coal_prod_change_twh"] as int,
    gasProdChangeTwh: json["gas_prod_change_twh"] as int,
    oilProdChangeTwh: json["oil_prod_change_twh"] as int,
  );
}
*/
