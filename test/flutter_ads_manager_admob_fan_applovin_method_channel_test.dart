import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ads_manager_admob_fan_applovin/flutter_ads_manager_admob_fan_applovin_method_channel.dart';

void main() {
  MethodChannelFlutterAdsManagerAdmobFanApplovin platform = MethodChannelFlutterAdsManagerAdmobFanApplovin();
  const MethodChannel channel = MethodChannel('flutter_ads_manager_admob_fan_applovin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
