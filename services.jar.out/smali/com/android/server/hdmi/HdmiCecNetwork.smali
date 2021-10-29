.class public Lcom/android/server/hdmi/HdmiCecNetwork;
.super Ljava/lang/Object;
.source "HdmiCecNetwork.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecNetwork"


# instance fields
.field private final mCecSwitches:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

.field private final mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field private final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field private mPortInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeAllDeviceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeExternalInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiMhlControllerStub;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->checkLogicalAddressConflictAndReallocate(II)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    return-object v0
.end method

.method private assertRunOnServiceThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInputDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private handleCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    return-void
.end method

.method private handleDeviceVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 13
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v11

    if-nez v11, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown source device info for <Device Vendor ID> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdmiCecNetwork"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v12, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v4

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v5

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v6

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v9

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v10

    move-object v2, v12

    move v7, v1

    invoke-direct/range {v2 .. v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :goto_0
    return-void
.end method

.method private handleReportFeatures(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    return-void
.end method

.method private handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 14
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v11, v2, v3

    invoke-virtual {p0, v0, v11, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v12

    if-nez v12, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown source device info for <Report Physical Address> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdmiCecNetwork"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v13, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v5

    invoke-virtual {v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v7

    invoke-virtual {v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v9

    invoke-virtual {v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v10

    move-object v2, v13

    move v4, v1

    move v6, v11

    invoke-direct/range {v2 .. v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :goto_0
    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    :cond_0
    return-void
.end method

.method private handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 17
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    const-string v5, "HdmiCecNetwork"

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No source device info for <Set Osd Name>."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    const-string v7, "US-ASCII"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating device OSD name from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v9

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v10

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v11

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v12

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v13

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v15

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v16

    move-object v8, v5

    move-object v14, v0

    invoke-direct/range {v8 .. v16}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid <Set Osd Name> request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecSwitches()Landroid/util/ArraySet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->isConnectedToCecSwitch(ILjava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v0
.end method

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    :cond_0
    return-void
.end method

.method private static isConnectedToCecSwitch(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->isParentPath(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isLocalDeviceAddress(I)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isParentPath(II)Z
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    shr-int v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_1

    shr-int v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_0

    add-int/lit8 v4, v0, 0x4

    shr-int v4, p1, v4

    add-int/lit8 v5, v0, 0x4

    shr-int v5, p0, v5

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    return v2
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    return-object v0
.end method

.method private updateDeviceCecVersion(II)V
    .locals 11
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not update CEC version of non-existing device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecNetwork"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v1

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v5

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v6

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v9

    move-object v2, v1

    move v10, p2

    invoke-direct/range {v2 .. v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getInputDevices()Ljava/util/List;

    move-result-object v1

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method addCecSwitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 0
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearLocalDevices()V

    return-void
.end method

.method public clearDeviceList()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    return-void
.end method

.method clearLocalDevices()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method clearLogicalAddress()V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearAddress()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    const-string v0, "HDMI CEC Network"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    const-string/jumbo v1, "mPortInfo:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpIterable(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiCecLocalDevice #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v1, "Active Source history:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSourceHistory()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    const-string/jumbo v1, "mDeviceInfos:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpIterable(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Iterable;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method public getCecSwitches()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    return-object v0
.end method

.method getDeviceForPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    sget-object v1, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method public getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method final getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDeviceInfoList(Z)Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object v0
.end method

.method getLocalDeviceList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalAddress()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method getPortInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSafeExternalInputsLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    return-object v0
.end method

.method public handleCecMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 9
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v8, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const v2, 0xffff

    const/4 v3, -0x1

    const/4 v4, 0x2

    const v5, 0xffffff

    invoke-static {v7}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move v1, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleReportFeatures(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleDeviceVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_5
        0x84 -> :sswitch_4
        0x87 -> :sswitch_3
        0x90 -> :sswitch_2
        0x9e -> :sswitch_1
        0xa6 -> :sswitch_0
    .end sparse-switch
.end method

.method public initPortInfo()V
    .locals 19
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v9

    invoke-virtual {v8}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v8}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v9

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v8}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v9

    new-instance v10, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v8}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v11

    invoke-virtual {v8}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    invoke-direct {v5, v3}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    iput-object v5, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    new-instance v5, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v5, v2}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    iput-object v5, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    new-instance v5, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v5, v4}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    iput-object v5, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    iget-object v5, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    if-nez v5, :cond_3

    return-void

    :cond_3
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v5

    new-instance v7, Landroid/util/ArraySet;

    array-length v8, v5

    invoke-direct {v7, v8}, Landroid/util/ArraySet;-><init>(I)V

    array-length v8, v5

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v5, v9

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/hdmi/HdmiCecNetwork;->setPortInfo(Ljava/util/List;)V

    return-void

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    array-length v9, v1

    :goto_2
    if-ge v6, v9, :cond_8

    aget-object v10, v1, v6

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v13

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v14

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v15

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    move-result v16

    const/16 v17, 0x1

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v18

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/hdmi/HdmiCecNetwork;->setPortInfo(Ljava/util/List;)V

    return-void
.end method

.method isAllocatedLocalDeviceAddress(I)Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isConnectedToArcPort(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method isInDeviceList(II)Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method physicalAddressToPortId(I)I
    .locals 7

    const v0, 0xf000

    const v1, 0xf000

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v2

    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    and-int v3, v2, v0

    or-int/2addr v1, v0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    and-int v4, p1, v1

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    move-result v5

    return v5
.end method

.method portIdToPath(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the port info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecNetwork"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xffff

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v1

    return v1
.end method

.method final removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    return-void
.end method

.method removeDevicesConnectedToPort(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v3

    if-eq v3, p1, :cond_0

    if-ne v3, v2, :cond_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v6

    if-eq v6, p1, :cond_3

    if-ne v6, v2, :cond_4

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    goto :goto_2

    :cond_6
    return-void
.end method

.method setPortInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    return-void
.end method

.method final updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method updateCecSwitchInfo(III)Z
    .locals 2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateDevicePowerStatus(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not update power status of non-existing device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecNetwork"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method
