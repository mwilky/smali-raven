.class public abstract Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWirelessChargerRtxStatusCallback.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x0

    const/4 p4, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    goto/16 :goto_2

    :sswitch_1
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1, v2, v3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2

    :sswitch_2
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2

    :sswitch_3
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_4
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [[B

    const/16 p2, 0x20

    new-array v4, p2, [B

    fill-array-data v4, :array_0

    aput-object v4, p1, p4

    new-array v4, p2, [B

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, p1, v5

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {p1, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v0, v1, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, v4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge p4, v4, :cond_1

    mul-int/lit8 v1, p4, 0x20

    int-to-long v5, v1

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    array-length v7, v1

    if-ne v7, p2, :cond_0

    invoke-virtual {v0, v5, v6, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1, v2, v3, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2

    :sswitch_5
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const-string/jumbo p0, "vendor.google.wireless_charger@1.2::IWirelessChargerRtxStatusCallback"

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    :sswitch_6
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    :sswitch_7
    const-string p0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo p1, "vendor.google.wireless_charger@1.2::IWirelessChargerRtxStatusCallback"

    const-string p2, "android.hidl.base@1.0::IBase"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    :sswitch_8
    const-string/jumbo p1, "vendor.google.wireless_charger@1.2::IWirelessChargerRtxStatusCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;

    invoke-direct {p1}, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;-><init>()V

    invoke-virtual {p1, p2}, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    iget-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;

    invoke-interface {p2, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;->onRtxStatusChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x1ft
        -0x3dt
        -0x5t
        0x34t
        -0x4bt
        -0x17t
        0x2bt
        -0x61t
        -0x51t
        -0xat
        -0x22t
        -0x23t
        0x6t
        -0x1dt
        -0x12t
        -0x7et
        0x2ft
        0x22t
        0x50t
        -0x32t
        0x63t
        0x21t
        0x11t
        -0xet
        -0x14t
        0x19t
        -0x75t
        -0x34t
        -0x28t
        0x5dt
        -0x3et
        -0x78t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.google.wireless_charger@1.2::IWirelessChargerRtxStatusCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.google.wireless_charger@1.2::IWirelessChargerRtxStatusCallback@Stub"

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
