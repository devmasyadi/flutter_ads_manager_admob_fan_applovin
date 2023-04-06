
import 'flutter_ads_manager_admob_fan_applovin_platform_interface.dart';

class FlutterAdsManagerAdmobFanApplovin {
  Future<String?> getPlatformVersion() {
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.getPlatformVersion();
  }
}
