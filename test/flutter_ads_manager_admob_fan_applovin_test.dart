import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ads_manager_admob_fan_applovin/flutter_ads_manager_admob_fan_applovin.dart';
import 'package:flutter_ads_manager_admob_fan_applovin/flutter_ads_manager_admob_fan_applovin_platform_interface.dart';
import 'package:flutter_ads_manager_admob_fan_applovin/flutter_ads_manager_admob_fan_applovin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAdsManagerAdmobFanApplovinPlatform
    with MockPlatformInterfaceMixin
    implements FlutterAdsManagerAdmobFanApplovinPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterAdsManagerAdmobFanApplovinPlatform initialPlatform = FlutterAdsManagerAdmobFanApplovinPlatform.instance;

  test('$MethodChannelFlutterAdsManagerAdmobFanApplovin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAdsManagerAdmobFanApplovin>());
  });

  test('getPlatformVersion', () async {
    FlutterAdsManagerAdmobFanApplovin flutterAdsManagerAdmobFanApplovinPlugin = FlutterAdsManagerAdmobFanApplovin();
    MockFlutterAdsManagerAdmobFanApplovinPlatform fakePlatform = MockFlutterAdsManagerAdmobFanApplovinPlatform();
    FlutterAdsManagerAdmobFanApplovinPlatform.instance = fakePlatform;

    expect(await flutterAdsManagerAdmobFanApplovinPlugin.getPlatformVersion(), '42');
  });
}
