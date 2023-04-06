import 'package:flutter/material.dart';
import 'package:flutter_core_ads_manager/callback_ads.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_initialize.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_rewards.dart';
import 'package:flutter_core_ads_manager/network_ads.dart';
import 'package:flutter_core_ads_manager/size_ads.dart';

abstract class IAds {
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
    String? quaternaryAppId,
  );

  void setTestDevices(
    BuildContext context,
    List<String> testDevices,
    NetworkAds primaryAds,
    NetworkAds? secondaryAds,
    NetworkAds? tertiaryAds,
    NetworkAds? quaternaryAds,
  );

  void loadGdpr(
    BuildContext context,
    bool childDirected,
    NetworkAds primaryAds,
    NetworkAds? secondaryAds,
    NetworkAds? tertiaryAds,
    NetworkAds? quaternaryAds,
  );

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
    CallbackAds? callbackAds,
  );

  void loadInterstitial(
    BuildContext context,
    NetworkAds primaryAds,
    String adUnitPrimaryId,
    NetworkAds? secondaryAds,
    String? adUnitSecondaryId,
    NetworkAds? tertiaryAds,
    String? adUnitTertiaryAdsId,
    NetworkAds? quaternaryAds,
    String? adUnitQuaternaryId,
  );

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
    CallbackAds? callbackAds,
  );

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
    CallbackAds? callbackAds,
  );

  void loadRewards(
    BuildContext context,
    NetworkAds primaryAds,
    String adUnitPrimaryId,
    NetworkAds? secondaryAds,
    String? adUnitSecondaryId,
    NetworkAds? tertiaryAds,
    String? adUnitTertiaryAdsId,
    NetworkAds? quaternaryAds,
    String? adUnitQuaternaryId,
  );

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
    IRewards? iRewards,
  );
}
