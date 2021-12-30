.class public interface abstract Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;
.super Ljava/lang/Object;
.source "IWirelessChargerRtxStatusCallback.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract rtxStatusInfoChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
