import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_admob_module/flutter_admob_module_platform_interface.dart';
import 'package:flutter_ads_manager_admob_fan_applovin/handle_ads.dart';
import 'package:flutter_applovin_discovery_module/flutter_applovin_module_platform_interface.dart';
import 'package:flutter_applovin_module/flutter_applovin_module_platform_interface.dart';
import 'package:flutter_core_ads_manager/network_ads.dart';
import 'package:flutter_core_ads_manager/size_ads.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_rewards.dart';
import 'package:flutter_core_ads_manager/iadsmanager/i_initialize.dart';
import 'package:flutter_core_ads_manager/callback_ads.dart';
import 'package:flutter_fan_module/flutter_fan_module_platform_interface.dart';

import 'flutter_ads_manager_admob_fan_applovin_platform_interface.dart';

/// An implementation of [FlutterAdsManagerAdmobFanApplovinPlatform] that uses method channels.
class MethodChannelFlutterAdsManagerAdmobFanApplovin
    extends FlutterAdsManagerAdmobFanApplovinPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('flutter_ads_manager_admob_fan_applovin');

  final HandleAds handleAds = HandleAds(
    FlutterAdmobModulePlatform.instance,
    FlutterFanModulePlatform.instance,
    FlutterApplovinModulePlatform.instance,
    FlutterApplovinDiscoveryModulePlatform.instance,
  );

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

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
    handleAds.initialize(
      context,
      primaryAppId,
      iInitialize,
      primaryAds,
    );

    if (secondaryAds != null) {
      handleAds.initialize(
        context,
        secondaryAppId,
        iInitialize,
        secondaryAds,
      );
    }

    if (tertiaryAds != null) {
      handleAds.initialize(
        context,
        tertiaryAppId,
        iInitialize,
        tertiaryAds,
      );
    }

    if (quaternaryAds != null) {
      handleAds.initialize(
        context,
        quaternaryAppId,
        iInitialize,
        quaternaryAds,
      );
    }

    iInitialize.onInitializationComplete?.call();
  }

  @override
  void loadGdpr(
      BuildContext context,
      bool childDirected,
      NetworkAds primaryAds,
      NetworkAds? secondaryAds,
      NetworkAds? tertiaryAds,
      NetworkAds? quaternaryAds) {
    handleAds.loadGdpr(context, childDirected, primaryAds);
    if (secondaryAds != null) {
      handleAds.loadGdpr(context, childDirected, secondaryAds);
    }
    if (tertiaryAds != null) {
      handleAds.loadGdpr(context, childDirected, tertiaryAds);
    }
    if (quaternaryAds != null) {
      handleAds.loadGdpr(context, childDirected, quaternaryAds);
    }
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
    handleAds.loadInterstitial(context, primaryAds, adUnitPrimaryId);
    if (secondaryAds != null && adUnitSecondaryId != null) {
      handleAds.loadInterstitial(context, secondaryAds, adUnitSecondaryId);
    }
    if (tertiaryAds != null && adUnitTertiaryAdsId != null) {
      handleAds.loadInterstitial(context, tertiaryAds, adUnitTertiaryAdsId);
    }
    if (quaternaryAds != null && adUnitQuaternaryId != null) {
      handleAds.loadInterstitial(context, quaternaryAds, adUnitQuaternaryId);
    }
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
    handleAds.loadRewards(context, primaryAds, adUnitPrimaryId);
    if (secondaryAds != null) {
      handleAds.loadRewards(
          context, secondaryAds, adUnitSecondaryId.toString());
    }
    if (tertiaryAds != null) {
      handleAds.loadRewards(
          context, tertiaryAds, adUnitTertiaryAdsId.toString());
    }
    if (quaternaryAds != null) {
      handleAds.loadRewards(
          context, quaternaryAds, adUnitQuaternaryId.toString());
    }
  }

  @override
  void setTestDevices(
      BuildContext context,
      List<String> testDevices,
      NetworkAds primaryAds,
      NetworkAds? secondaryAds,
      NetworkAds? tertiaryAds,
      NetworkAds? quaternaryAds) {
    handleAds.setTestDevices(context, testDevices, primaryAds);
    if (secondaryAds != null) {
      handleAds.setTestDevices(context, testDevices, secondaryAds);
    }
    if (tertiaryAds != null) {
      handleAds.setTestDevices(context, testDevices, tertiaryAds);
    }
    if (quaternaryAds != null) {
      handleAds.setTestDevices(context, testDevices, quaternaryAds);
    }
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
    handleAds.showBanner(context, sizeBanner, primaryAds, adUnitPrimaryId,
        CallbackAds(onAdFailedToLoad: (error) {
      if (secondaryAds == null) {
        callbackAds?.onAdFailedToLoad?.call(error);
      } else {
        handleAds.showBanner(
            context, sizeBanner, secondaryAds, adUnitSecondaryId.toString(),
            CallbackAds(onAdFailedToLoad: (error) {
          if (tertiaryAds == null) {
            callbackAds?.onAdFailedToLoad?.call(error);
          } else {
            handleAds.showBanner(context, sizeBanner, tertiaryAds,
                adUnitTertiaryAdsId.toString(),
                CallbackAds(onAdFailedToLoad: (error) {
              if (quaternaryAds == null) {
                callbackAds?.onAdFailedToLoad?.call(error);
              } else {
                handleAds.showBanner(context, sizeBanner, quaternaryAds,
                    adUnitQuaternaryId.toString(), callbackAds);
              }
            }));
          }
        }));
      }
    }));
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
    handleAds.showInterstitial(
        context,
        primaryAds,
        adUnitPrimaryId,
        CallbackAds(
          onAdLoaded: (message) => callbackAds?.onAdLoaded?.call(message),
          onAdFailedToLoad: (error) {
            if (secondaryAds == null) {
              callbackAds?.onAdFailedToLoad?.call(error);
            } else {
              handleAds.showInterstitial(
                  context,
                  secondaryAds,
                  adUnitSecondaryId.toString(),
                  CallbackAds(
                    onAdLoaded: (message) =>
                        callbackAds?.onAdLoaded?.call(message),
                    onAdFailedToLoad: (error) {
                      if (tertiaryAds == null) {
                        callbackAds?.onAdFailedToLoad?.call(error);
                      } else {
                        handleAds.showInterstitial(
                            context,
                            tertiaryAds,
                            adUnitTertiaryAdsId.toString(),
                            CallbackAds(
                              onAdLoaded: (message) =>
                                  callbackAds?.onAdLoaded?.call(message),
                              onAdFailedToLoad: (error) {
                                if (quaternaryAds == null) {
                                  callbackAds?.onAdFailedToLoad?.call(error);
                                } else {
                                  handleAds.showInterstitial(
                                      context,
                                      quaternaryAds,
                                      adUnitQuaternaryId.toString(),
                                      callbackAds);
                                }
                              },
                            ));
                      }
                    },
                  ));
            }
          },
        ));
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
    handleAds.showNativeAds(
        context,
        sizeNative,
        primaryAds,
        adUnitPrimaryId,
        CallbackAds(
          onAdLoaded: (message) => callbackAds?.onAdLoaded?.call(message),
          onAdFailedToLoad: (error) {
            if (secondaryAds == null) {
              callbackAds?.onAdFailedToLoad?.call(error);
            } else {
              handleAds.showNativeAds(
                  context,
                  sizeNative,
                  secondaryAds,
                  adUnitSecondaryId.toString(),
                  CallbackAds(
                    onAdLoaded: (message) =>
                        callbackAds?.onAdLoaded?.call(message),
                    onAdFailedToLoad: (error) {
                      if (tertiaryAds == null) {
                        callbackAds?.onAdFailedToLoad?.call(error);
                      } else {
                        handleAds.showNativeAds(
                            context,
                            sizeNative,
                            tertiaryAds,
                            adUnitTertiaryAdsId.toString(),
                            CallbackAds(
                              onAdLoaded: (message) =>
                                  callbackAds?.onAdLoaded?.call(message),
                              onAdFailedToLoad: (error) {
                                if (quaternaryAds == null) {
                                  callbackAds?.onAdFailedToLoad?.call(error);
                                } else {
                                  handleAds.showNativeAds(
                                      context,
                                      sizeNative,
                                      quaternaryAds,
                                      adUnitQuaternaryId.toString(),
                                      callbackAds);
                                }
                              },
                            ));
                      }
                    },
                  ));
            }
          },
        ));
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
    handleAds.showRewards(
        context,
        primaryAds,
        adUnitPrimaryId,
        CallbackAds(
          onAdLoaded: (message) {
            callbackAds?.onAdLoaded?.call(message);
          },
          onAdFailedToLoad: (error) {
            if (secondaryAds == null) {
              callbackAds?.onAdFailedToLoad?.call(error);
            } else {
              handleAds.showRewards(
                  context,
                  secondaryAds,
                  adUnitSecondaryId.toString(),
                  CallbackAds(onAdLoaded: (message) {
                    callbackAds?.onAdLoaded?.call(message);
                  }, onAdFailedToLoad: (error) {
                    if (tertiaryAds == null) {
                      callbackAds?.onAdFailedToLoad?.call(error);
                    } else {
                      handleAds.showRewards(
                          context,
                          tertiaryAds,
                          adUnitTertiaryAdsId.toString(),
                          CallbackAds(onAdLoaded: (message) {
                            callbackAds?.onAdLoaded?.call(message);
                          }, onAdFailedToLoad: (error) {
                            if (quaternaryAds == null) {
                              callbackAds?.onAdFailedToLoad?.call(error);
                            } else {
                              handleAds.showRewards(
                                  context,
                                  quaternaryAds,
                                  adUnitQuaternaryId.toString(),
                                  callbackAds,
                                  iRewards);
                            }
                          }),
                          iRewards);
                    }
                  }),
                  iRewards);
            }
          },
        ),
        iRewards);
  }
}
