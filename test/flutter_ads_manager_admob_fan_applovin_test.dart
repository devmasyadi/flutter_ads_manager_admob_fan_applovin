import 'package:flutter_core_ads_manager/size_ads.dart';
import 'package:flutter_core_ads_manager/network_ads.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_rewards.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_initialize.dart';
import 'package:flutter_core_ads_manager/callback_ads.dart';
import 'package:flutter/src/widgets/framework.dart';
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

  @override
  void initialize(
      BuildContext context,
      IInitialize iInitialize,
      NetworkAds primaryAds,
      String? primaryAppId,
      NetworkAds? secondaryAds,
      String? secondaryAppId,
      NetworkAds? tertiaryAds,
      String? tertiaryAppId,
      NetworkAds? quaternaryAds,
      String? quaternaryAppId) {
    // TODO: implement initialize
  }

  @override
  Future<void> loadGdpr(
      BuildContext context,
      bool childDirected,
      NetworkAds primaryAds,
      NetworkAds? secondaryAds,
      NetworkAds? tertiaryAds,
      NetworkAds? quaternaryAds) {
    // TODO: implement loadGdpr
    return Future.value();
  }

  @override
  void loadInterstitial(
      BuildContext context,
      NetworkAds primaryAds,
      String adUnitPrimaryId,
      NetworkAds? secondaryAds,
      String? adUnitSecondaryId,
      NetworkAds? tertiaryAds,
      String? adUnitTertiaryAdsId,
      NetworkAds? quaternaryAds,
      String? adUnitQuaternaryId) {
    // TODO: implement loadInterstitial
  }

  @override
  void loadRewards(
      BuildContext context,
      NetworkAds primaryAds,
      String adUnitPrimaryId,
      NetworkAds? secondaryAds,
      String? adUnitSecondaryId,
      NetworkAds? tertiaryAds,
      String? adUnitTertiaryAdsId,
      NetworkAds? quaternaryAds,
      String? adUnitQuaternaryId) {
    // TODO: implement loadRewards
  }

  @override
  Future<void> setTestDevices(
      BuildContext context,
      List<String> testDevices,
      NetworkAds primaryAds,
      NetworkAds? secondaryAds,
      NetworkAds? tertiaryAds,
      NetworkAds? quaternaryAds) {
    // TODO: implement setTestDevices
    return Future.value();
  }

  @override
  void showBanner(
      BuildContext context,
      SizeBanner sizeBanner,
      NetworkAds primaryAds,
      String adUnitPrimaryId,
      NetworkAds? secondaryAds,
      String? adUnitSecondaryId,
      NetworkAds? tertiaryAds,
      String? adUnitTertiaryAdsId,
      NetworkAds? quaternaryAds,
      String? adUnitQuaternaryId,
      CallbackAds? callbackAds) {
    // TODO: implement showBanner
  }

  @override
  void showInterstitial(
      BuildContext context,
      NetworkAds primaryAds,
      String adUnitPrimaryId,
      NetworkAds? secondaryAds,
      String? adUnitSecondaryId,
      NetworkAds? tertiaryAds,
      String? adUnitTertiaryAdsId,
      NetworkAds? quaternaryAds,
      String? adUnitQuaternaryId,
      CallbackAds? callbackAds) {
    // TODO: implement showInterstitial
  }

  @override
  void showNativeAds(
      BuildContext context,
      SizeNative sizeNative,
      NetworkAds primaryAds,
      String adUnitPrimaryId,
      NetworkAds? secondaryAds,
      String? adUnitSecondaryId,
      NetworkAds? tertiaryAds,
      String? adUnitTertiaryAdsId,
      NetworkAds? quaternaryAds,
      String? adUnitQuaternaryId,
      CallbackAds? callbackAds) {
    // TODO: implement showNativeAds
  }

  @override
  void showRewards(
      BuildContext context,
      NetworkAds primaryAds,
      String adUnitPrimaryId,
      NetworkAds? secondaryAds,
      String? adUnitSecondaryId,
      NetworkAds? tertiaryAds,
      String? adUnitTertiaryAdsId,
      NetworkAds? quaternaryAds,
      String? adUnitQuaternaryId,
      CallbackAds? callbackAds,
      IRewards? iRewards) {
    // TODO: implement showRewards
  }
}

void main() {
  final FlutterAdsManagerAdmobFanApplovinPlatform initialPlatform =
      FlutterAdsManagerAdmobFanApplovinPlatform.instance;

  test(
      '$MethodChannelFlutterAdsManagerAdmobFanApplovin is the default instance',
      () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelFlutterAdsManagerAdmobFanApplovin>());
  });

  test('getPlatformVersion', () async {
    FlutterAdsManagerAdmobFanApplovin flutterAdsManagerAdmobFanApplovinPlugin =
        FlutterAdsManagerAdmobFanApplovin();
    MockFlutterAdsManagerAdmobFanApplovinPlatform fakePlatform =
        MockFlutterAdsManagerAdmobFanApplovinPlatform();
    FlutterAdsManagerAdmobFanApplovinPlatform.instance = fakePlatform;

    expect(await flutterAdsManagerAdmobFanApplovinPlugin.getPlatformVersion(),
        '42');
  });
}
