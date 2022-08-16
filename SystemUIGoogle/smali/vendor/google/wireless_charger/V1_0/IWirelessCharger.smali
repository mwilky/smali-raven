.class public interface abstract Lvendor/google/wireless_charger/V1_0/IWirelessCharger;
.super Ljava/lang/Object;
.source "IWirelessCharger.java"

# interfaces
.implements Landroid/os/IHwInterface;


# virtual methods
.method public abstract challenge(BLjava/util/ArrayList;Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$ChallengeCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInformation(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isDockPresent(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract keyExchange(Ljava/util/ArrayList;Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
