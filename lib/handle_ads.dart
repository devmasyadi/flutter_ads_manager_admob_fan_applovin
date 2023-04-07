import 'package:flutter/material.dart';
import 'package:flutter_admob_module/flutter_admob_module_platform_interface.dart';
import 'package:flutter_applovin_discovery_module/flutter_applovin_module_platform_interface.dart';
import 'package:flutter_applovin_module/flutter_applovin_module_platform_interface.dart';
import 'package:flutter_core_ads_manager/callback_ads.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_initialize.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_rewards.dart';
import 'package:flutter_core_ads_manager/network_ads.dart';
import 'package:flutter_core_ads_manager/size_ads.dart';
import 'package:flutter_fan_module/flutter_fan_module_platform_interface.dart';

class HandleAds {
  final FlutterAdmobModulePlatform admobAds;
  final FlutterFanModulePlatform fanAds;
  final FlutterApplovinModulePlatform applovinMaxAds;
  final FlutterApplovinDiscoveryModulePlatform applovinDiscoveryAds;

  HandleAds(this.admobAds, this.fanAds, this.applovinMaxAds,
      this.applovinDiscoveryAds);

  void initialize(
    BuildContext context,
    String? appId,
    IInitialize iInitialize,
    NetworkAds networkAds,
  ) {
    switch (networkAds) {
      case NetworkAds.ADMOB:
        admobAds.initialize(context, appId, iInitialize);
        break;
      case NetworkAds.FAN:
        fanAds.initialize(context, appId, iInitialize);
        break;
      case NetworkAds.APPLOVIN_MAX:
        applovinMaxAds.initialize(context, appId, iInitialize);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        applovinDiscoveryAds.initialize(context, appId, iInitialize);
        break;
      default:
        break;
    }
  }

  Future<void> setTestDevices(
    BuildContext context,
    List<String> testDevices,
    NetworkAds networkAds,
  ) async {
    switch (networkAds) {
      case NetworkAds.ADMOB:
        await admobAds.setTestDevices(context, testDevices);
        break;
      case NetworkAds.FAN:
        await fanAds.setTestDevices(context, testDevices);
        break;
      case NetworkAds.APPLOVIN_MAX:
        await applovinMaxAds.setTestDevices(context, testDevices);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        await applovinDiscoveryAds.setTestDevices(context, testDevices);
        break;
      default:
        break;
    }
    return Future.value();
  }

  Future<void> loadGdpr(
    BuildContext context,
    bool childDirected,
    NetworkAds networkAds,
  ) async {
    switch (networkAds) {
      case NetworkAds.ADMOB:
        await admobAds.loadGdpr(context, childDirected);
        break;
      case NetworkAds.FAN:
        await fanAds.loadGdpr(context, childDirected);
        break;
      case NetworkAds.APPLOVIN_MAX:
        await applovinMaxAds.loadGdpr(context, childDirected);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        await applovinDiscoveryAds.loadGdpr(context, childDirected);
        break;
      default:
        break;
    }
    return Future.value();
  }

  void showBanner(
    BuildContext context,
    SizeBanner sizeBanner,
    NetworkAds networkAds,
    String adUnitId,
    CallbackAds? callbackAds,
  ) {
    if (adUnitId.isEmpty) {
      callbackAds?.onAdFailedToLoad?.call("AdUnit Empty");
      return;
    }
    switch (networkAds) {
      case NetworkAds.ADMOB:
        admobAds.showBanner(context, sizeBanner, adUnitId, callbackAds);
        break;
      case NetworkAds.FAN:
        fanAds.showBanner(context, sizeBanner, adUnitId, callbackAds);
        break;
      case NetworkAds.APPLOVIN_MAX:
        applovinMaxAds.showBanner(context, sizeBanner, adUnitId, callbackAds);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        applovinDiscoveryAds.showBanner(
            context, sizeBanner, adUnitId, callbackAds);
        break;
      default:
        callbackAds?.onAdFailedToLoad?.call("Ads None");
        break;
    }
  }

  void loadInterstitial(
    BuildContext context,
    NetworkAds networkAds,
    String adUnitId,
  ) {
    if (adUnitId.isEmpty) {
      return;
    }
    switch (networkAds) {
      case NetworkAds.ADMOB:
        admobAds.loadInterstitial(context, adUnitId);
        break;
      case NetworkAds.FAN:
        fanAds.loadInterstitial(context, adUnitId);
        break;
      case NetworkAds.APPLOVIN_MAX:
        applovinMaxAds.loadInterstitial(context, adUnitId);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        applovinDiscoveryAds.loadInterstitial(context, adUnitId);
        break;
      default:
        break;
    }
  }

  void showInterstitial(
    BuildContext context,
    NetworkAds networkAds,
    String adUnitId,
    CallbackAds? callbackAds,
  ) {
    if (adUnitId.isEmpty) {
      callbackAds?.onAdFailedToLoad?.call("AdUnit Empty");
      return;
    }
    switch (networkAds) {
      case NetworkAds.ADMOB:
        admobAds.showInterstitial(context, adUnitId, callbackAds);
        break;
      case NetworkAds.FAN:
        fanAds.showInterstitial(context, adUnitId, callbackAds);
        break;
      case NetworkAds.APPLOVIN_MAX:
        applovinMaxAds.showInterstitial(context, adUnitId, callbackAds);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        applovinDiscoveryAds.showInterstitial(context, adUnitId, callbackAds);
        break;
      default:
        callbackAds?.onAdFailedToLoad?.call("Ads None");
    }
  }

  void showNativeAds(
    BuildContext context,
    SizeNative sizeNative,
    NetworkAds networkAds,
    String adUnitId,
    CallbackAds? callbackAds,
  ) {
    if (adUnitId.isEmpty) {
      callbackAds?.onAdFailedToLoad?.call("AdUnit Empty");
      return;
    }
    switch (networkAds) {
      case NetworkAds.ADMOB:
        admobAds.showNativeAds(
          context,
          sizeNative,
          adUnitId,
          callbackAds,
        );
        break;
      case NetworkAds.FAN:
        fanAds.showNativeAds(
          context,
          sizeNative,
          adUnitId,
          callbackAds,
        );
        break;
      case NetworkAds.APPLOVIN_MAX:
        applovinMaxAds.showNativeAds(
          context,
          sizeNative,
          adUnitId,
          callbackAds,
        );
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        applovinDiscoveryAds.showNativeAds(
          context,
          sizeNative,
          adUnitId,
          callbackAds,
        );
        break;
      default:
        callbackAds?.onAdFailedToLoad?.call("Ads None");
    }
  }

  void loadRewards(
      BuildContext context, NetworkAds networkAds, String adUnitId) {
    if (adUnitId.isEmpty) {
      return;
    }
    switch (networkAds) {
      case NetworkAds.ADMOB:
        admobAds.loadRewards(context, adUnitId);
        break;
      case NetworkAds.FAN:
        fanAds.loadRewards(context, adUnitId);
        break;
      case NetworkAds.APPLOVIN_MAX:
        applovinMaxAds.loadRewards(context, adUnitId);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        applovinDiscoveryAds.loadRewards(context, adUnitId);
        break;
      default:
        break;
    }
  }

  void showRewards(BuildContext activity, NetworkAds networkAds,
      String adUnitId, CallbackAds? callbackAds, IRewards? iRewards) {
    if (adUnitId.isEmpty) {
      callbackAds?.onAdFailedToLoad?.call('AdUnit Empty');
      return;
    }
    switch (networkAds) {
      case NetworkAds.ADMOB:
        admobAds.showRewards(activity, adUnitId, callbackAds, iRewards);
        break;
      case NetworkAds.FAN:
        fanAds.showRewards(activity, adUnitId, callbackAds, iRewards);
        break;
      case NetworkAds.APPLOVIN_MAX:
        applovinMaxAds.showRewards(activity, adUnitId, callbackAds, iRewards);
        break;
      case NetworkAds.APPLOVIN_DISCOVERY:
        applovinDiscoveryAds.showRewards(
            activity, adUnitId, callbackAds, iRewards);
        break;
      default:
        callbackAds?.onAdFailedToLoad?.call('Ads None');
        break;
    }
  }
}
