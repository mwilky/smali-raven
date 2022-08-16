.class public abstract Lcom/google/android/systemui/dreamliner/WirelessCharger;
.super Ljava/lang/Object;
.source "WirelessCharger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthCertificateCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asyncIsDockPresent(Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;)V
.end method

.method public abstract challenge(B[BLcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V
.end method

.method public abstract getFanInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V
.end method

.method public abstract getFanLevel()I
.end method

.method public abstract getFanSimpleInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;)V
.end method

.method public abstract getFeatures(JLcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;)V
.end method

.method public abstract getInformation(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V
.end method

.method public abstract getWpcAuthCertificate(BSSLcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthCertificateCallback;)V
.end method

.method public abstract getWpcAuthChallengeResponse(B[BLcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;)V
.end method

.method public abstract getWpcAuthDigests(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;)V
.end method

.method public abstract keyExchange([BLcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V
.end method

.method public abstract registerAlignInfo(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V
.end method

.method public abstract setFan(BBILcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;)V
.end method

.method public abstract setFeatures(JJLcom/google/android/systemui/dreamliner/DockObserver$SetFeatures$$ExternalSyntheticLambda0;)V
.end method
