import 'package:flutter/services.dart' show rootBundle;

class AssetHelper {
  static Future<String> getCodeByAssetName(String assetName) async {
    String res = '';
    try {
      res = await rootBundle.loadString(assetName);
    } catch (e) {
      print(e);
    }

    return res;
  }
}
