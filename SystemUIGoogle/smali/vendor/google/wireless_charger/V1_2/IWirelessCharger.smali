.class public interface abstract Lvendor/google/wireless_charger/V1_2/IWirelessCharger;
.super Ljava/lang/Object;
.source "IWirelessCharger.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_1/IWirelessCharger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/google/wireless_charger/V1_2/IWirelessCharger$Proxy;
    }
.end annotation


# direct methods
.method public static getService()Lvendor/google/wireless_charger/V1_2/IWirelessCharger;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "vendor.google.wireless_charger@1.2::IWirelessCharger"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    goto :goto_0

    :cond_1
    new-instance v3, Lvendor/google/wireless_charger/V1_2/IWirelessCharger$Proxy;

    invoke-direct {v3, v1}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string v4, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, v3, Lvendor/google/wireless_charger/V1_2/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v6, 0xf43484e

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v4}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-object v2
.end method


# virtual methods
.method public abstract getRtxInformation(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRtxSupported()Z
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

.method public abstract registerRtxCallback(Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRtxMode(Z)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
