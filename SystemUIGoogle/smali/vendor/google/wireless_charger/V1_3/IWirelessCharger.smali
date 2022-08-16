.class public interface abstract Lvendor/google/wireless_charger/V1_3/IWirelessCharger;
.super Ljava/lang/Object;
.source "IWirelessCharger.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_2/IWirelessCharger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getFan(BLcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanSimpleInformationCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFanInformation(BLcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFanLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFeatures(JLcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFeaturesCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWpcAuthCertificate(BSSLcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthCertificateCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWpcAuthChallengeResponse(BLjava/util/ArrayList;Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthChallengeResponseCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWpcAuthDigests(BLcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthDigestsCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFan(BBSLcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFeatures(JJ)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
