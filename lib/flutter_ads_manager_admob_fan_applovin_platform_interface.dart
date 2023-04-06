import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ads_manager_admob_fan_applovin_method_channel.dart';
import 'i_ads.dart';

abstract class FlutterAdsManagerAdmobFanApplovinPlatform
    extends PlatformInterface implements IAds {
  /// Constructs a FlutterAdsManagerAdmobFanApplovinPlatform.
  FlutterAdsManagerAdmobFanApplovinPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAdsManagerAdmobFanApplovinPlatform _instance =
      MethodChannelFlutterAdsManagerAdmobFanApplovin();

  /// The default instance of [FlutterAdsManagerAdmobFanApplovinPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAdsManagerAdmobFanApplovin].
  static FlutterAdsManagerAdmobFanApplovinPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAdsManagerAdmobFanApplovinPlatform] when
  /// they register themselves.
  static set instance(FlutterAdsManagerAdmobFanApplovinPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
