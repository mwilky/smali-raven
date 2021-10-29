.class public abstract Landroid/hardware/health/V2_1/IHealth$Stub;
.super Landroid/os/HwBinder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_1/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_1/IHealth;
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
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x32t
        -0x73t
        -0x42t
        0x76t
        -0x15t
        -0x62t
        -0x17t
        0x4bt
        0x46t
        -0x11t
        -0x68t
        -0x9t
        0x25t
        -0x42t
        -0x67t
        0x2et
        0x76t
        0xat
        0x57t
        0x51t
        0x7t
        0x3dt
        0x4ft
        0x49t
        0x12t
        0x48t
        0x40t
        0x26t
        0x54t
        0x13t
        0x71t
        -0xdt
    .end array-data

    :array_1
    .array-data 1
        0x67t
        0x56t
        -0x7et
        -0x23t
        0x30t
        0x7t
        -0x80t
        0x5ct
        -0x68t
        0x5et
        -0x56t
        -0x14t
        -0x6ft
        0x61t
        0x2at
        -0x44t
        -0x78t
        -0xct
        -0x3et
        0x5bt
        0x34t
        0x31t
        -0x5t
        -0x7ct
        0x7t
        0xbt
        0x75t
        -0x7ct
        -0x5ft
        -0x59t
        0x41t
        -0x5t
    .end array-data

    :array_2
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

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.health@2.1::IHealth"

    const-string v2, "android.hardware.health@2.0::IHealth"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hardware.health@2.1::IHealth"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.health@2.1::IHealth"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "android.hardware.health@2.0::IHealth"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->ping()V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_3
    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->setHALInstrumentation()V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/health/V2_1/IHealth$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$12;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$12;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->shouldKeepScreenOn(Landroid/hardware/health/V2_1/IHealth$shouldKeepScreenOnCallback;)V

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$11;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$11;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getHealthInfo_2_1(Landroid/hardware/health/V2_1/IHealth$getHealthInfo_2_1Callback;)V

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$10;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$10;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getHealthConfig(Landroid/hardware/health/V2_1/IHealth$getHealthConfigCallback;)V

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$9;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$8;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$7;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$6;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$5;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$4;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    goto :goto_1

    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$3;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    goto :goto_1

    :sswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$2;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    goto :goto_1

    :sswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/health/V2_1/IHealth$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$1;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    goto :goto_1

    :sswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->update()I

    move-result v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    :sswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealth$Stub;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    nop

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x7 -> :sswitch_11
        0x8 -> :sswitch_10
        0x9 -> :sswitch_f
        0xa -> :sswitch_e
        0xb -> :sswitch_d
        0xc -> :sswitch_c
        0xd -> :sswitch_b
        0xe -> :sswitch_a
        0xf -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "android.hardware.health@2.1::IHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_1/IHealth$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
