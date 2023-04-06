import 'package:flutter/material.dart';
import 'package:flutter_core_ads_manager/callback_ads.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_initialize.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_rewards.dart';
import 'package:flutter_core_ads_manager/network_ads.dart';
import 'package:flutter_core_ads_manager/size_ads.dart';

import 'flutter_ads_manager_admob_fan_applovin_platform_interface.dart';

class FlutterAdsManagerAdmobFanApplovin {
  Future<String?> getPlatformVersion() {
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance
        .getPlatformVersion();
  }

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
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.initialize(
        context,
        iInitialize,
        primaryAds,
        primaryAppId,
        secondaryAds,
        secondaryAppId,
        tertiaryAds,
        tertiaryAppId,
        quaternaryAds,
        quaternaryAppId);
  }

  void loadGdpr(
      BuildContext context,
      bool childDirected,
      NetworkAds primaryAds,
      NetworkAds? secondaryAds,
      NetworkAds? tertiaryAds,
      NetworkAds? quaternaryAds) {
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.loadGdpr(context,
        childDirected, primaryAds, secondaryAds, tertiaryAds, quaternaryAds);
  }

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
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.loadInterstitial(
        context,
        primaryAds,
        adUnitPrimaryId,
        secondaryAds,
        adUnitSecondaryId,
        tertiaryAds,
        adUnitTertiaryAdsId,
        quaternaryAds,
        adUnitQuaternaryId);
  }

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
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.loadRewards(
        context,
        primaryAds,
        adUnitPrimaryId,
        secondaryAds,
        adUnitSecondaryId,
        tertiaryAds,
        adUnitTertiaryAdsId,
        quaternaryAds,
        adUnitQuaternaryId);
  }

  void setTestDevices(
      BuildContext context,
      List<String> testDevices,
      NetworkAds primaryAds,
      NetworkAds? secondaryAds,
      NetworkAds? tertiaryAds,
      NetworkAds? quaternaryAds) {
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.setTestDevices(
        context,
        testDevices,
        primaryAds,
        secondaryAds,
        tertiaryAds,
        quaternaryAds);
  }

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
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.showBanner(
        context,
        sizeBanner,
        primaryAds,
        adUnitPrimaryId,
        secondaryAds,
        adUnitSecondaryId,
        tertiaryAds,
        adUnitTertiaryAdsId,
        quaternaryAds,
        adUnitQuaternaryId,
        callbackAds);
  }

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
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.showInterstitial(
        context,
        primaryAds,
        adUnitPrimaryId,
        secondaryAds,
        adUnitSecondaryId,
        tertiaryAds,
        adUnitTertiaryAdsId,
        quaternaryAds,
        adUnitQuaternaryId,
        callbackAds);
  }

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
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.showNativeAds(
        context,
        sizeNative,
        primaryAds,
        adUnitPrimaryId,
        secondaryAds,
        adUnitSecondaryId,
        tertiaryAds,
        adUnitTertiaryAdsId,
        quaternaryAds,
        adUnitQuaternaryId,
        callbackAds);
  }

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
    return FlutterAdsManagerAdmobFanApplovinPlatform.instance.showRewards(
        context,
        primaryAds,
        adUnitPrimaryId,
        secondaryAds,
        adUnitSecondaryId,
        tertiaryAds,
        adUnitTertiaryAdsId,
        quaternaryAds,
        adUnitQuaternaryId,
        callbackAds,
        iRewards);
  }
}
