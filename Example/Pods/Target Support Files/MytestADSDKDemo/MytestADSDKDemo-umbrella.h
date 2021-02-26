#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "ApsiOSHelper.h"
#import "AppLovinAdapterConfiguration.h"
#import "AppLovinBannerCustomEvent.h"
#import "AppLovinInterstitialCustomEvent.h"
#import "AppLovinRewardedVideoCustomEvent.h"
#import "FacebookAdapterConfiguration.h"
#import "FacebookBannerCustomEvent.h"
#import "FacebookInterstitialCustomEvent.h"
#import "FacebookNativeAdAdapter.h"
#import "FacebookNativeAdRenderer.h"
#import "FacebookNativeCustomEvent.h"
#import "FacebookRewardedVideoCustomEvent.h"
#import "IronSourceAdapterConfiguration.h"
#import "IronSourceConstants.h"
#import "IronSourceInterstitialCustomEvent.h"
#import "IronSourceInterstitialDelegate.h"
#import "IronSourceManager.h"
#import "IronSourceRewardedVideoCustomEvent.h"
#import "IronSourceRewardedVideoDelegate.h"
#import "IronSourceUtils.h"
#import "GoogleAdMobAdapterConfiguration.h"
#import "MPGoogleAdMobBannerCustomEvent.h"
#import "MPGoogleAdMobInterstitialCustomEvent.h"
#import "MPGoogleAdMobNativeAdAdapter.h"
#import "MPGoogleAdMobNativeCustomEvent.h"
#import "MPGoogleAdMobNativeRenderer.h"
#import "MPGoogleAdMobRewardedVideoCustomEvent.h"
#import "MPGoogleGlobalMediationSettings.h"
#import "UIView+MPGoogleAdMobAdditions.h"
#import "FacebookNativeAdRenderer.h"
#import "FacebookNativeCustomEvent.h"
#import "MoPubManager.h"
#import "NativeAdView.h"

FOUNDATION_EXPORT double MytestADSDKDemoVersionNumber;
FOUNDATION_EXPORT const unsigned char MytestADSDKDemoVersionString[];

