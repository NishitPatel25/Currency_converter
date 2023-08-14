import 'package:currency_convertor/Model/currencies_model.dart';
import 'package:currency_convertor/Model/rates_model.dart';
import 'package:currency_convertor/ViewModel/Utilities/app_url.dart';
import 'package:http/http.dart' as http;

Future<RatesModel> fetchRates() async {
  var response = await http.get(Uri.parse(AppUrl.ratesUrl));
  final result = ratesModelFromJson(response.body);
  return result;
}

Future<Map> fetchCurrencies() async {
  var response = await http.get(Uri.parse(AppUrl.currenciesUrl));
  final allCurrencies = allCurrenciesFromJson(response.body);
  return allCurrencies;
}
