import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = "https://rest.coinapi.io/v1/exchangerate";
const coinAPIKey = "BF349761-B7F9-4A4E-8C4B-DD3615A83F81";

class CoinData {

  Future getCoinData(String value) async{
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String url = "$coinAPIURL/$crypto/$value?apikey=$coinAPIKey";
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        double price = jsonDecode(response.body)['rate'];
        cryptoPrices[crypto] = price.toStringAsFixed(0);
      } else{
        print(response.statusCode);
      }
    }
    return cryptoPrices;
  }
}
