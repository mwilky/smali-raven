.class public interface abstract Lvendor/google/wireless_charger/V1_0/IWirelessCharger;
.super Ljava/lang/Object;
.source "IWirelessCharger.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/google/wireless_charger/V1_0/IWirelessCharger$challengeCallback;,
        Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;,
        Lvendor/google/wireless_charger/V1_0/IWirelessCharger$getInformationCallback;,
        Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;
    }
.end annotation


# virtual methods
.method public abstract challenge(BLjava/util/ArrayList;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$challengeCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Lvendor/google/wireless_charger/V1_0/IWirelessCharger$challengeCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInformation(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$getInformationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isDockPresent(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract keyExchange(Ljava/util/ArrayList;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
