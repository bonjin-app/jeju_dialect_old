import 'dart:io';

import 'package:firebase_admob/firebase_admob.dart';

class FirebaseAdMobManager {
  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  String appID = Platform.isIOS ? 'ca-app-pub-6805818759031353~1147202859' : 'ca-app-pub-6805818759031353~2252879890';
  String bannerID = Platform.isIOS ? 'ca-app-pub-6805818759031353/7521039513' : 'ca-app-pub-6805818759031353/5717003256';
  String interstitialID = InterstitialAd.testAdUnitId;

  static final FirebaseAdMobManager _manager = FirebaseAdMobManager._internal();

  factory FirebaseAdMobManager() {
    return _manager;
  }

  FirebaseAdMobManager._internal();

  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: ['flutter', 'firebase', 'admob'],
    testDevices: <String>[],
  );

  init() async {
    FirebaseAdMob.instance.initialize(appId: appID);
    _bannerAd = createBannerAd();
    _interstitialAd = createInterstitialAd();
    _bannerAd
      ..load()
      ..show(
        anchorOffset: 60.0,
        horizontalCenterOffset: 10.0,
        anchorType: AnchorType.bottom,
    );
  }

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: bannerID,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event is $event");
      }
    );
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: interstitialID,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd event is $event");
        });
  }

  showInterstitialAd() {
    _interstitialAd..load()..show();
  }
}