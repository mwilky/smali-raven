.class public interface abstract Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback;
.super Ljava/lang/Object;
.source "IWirelessChargerInfoCallback.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract alignInfoChanged(Lvendor/google/wireless_charger/V1_1/AlignInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
.end method
