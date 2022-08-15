.class public Lcom/android/server/hdmi/ReportFeaturesMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "ReportFeaturesMessage.java"


# instance fields
.field public final mCecVersion:I

.field public final mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;


# direct methods
.method public static synthetic $r8$lambda$uLnCpwpu5pVQCsiKhs99yA-FXrI(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/ReportFeaturesMessage;->lambda$build$0(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V
    .locals 6

    const/16 v3, 0xa6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    iput p4, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    iput-object p5, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-void
.end method

.method public static build(IILjava/util/List;ILjava/util/List;Landroid/hardware/hdmi/DeviceFeatures;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/hdmi/DeviceFeatures;",
            ")",
            "Lcom/android/server/hdmi/HdmiCecMessage;"
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/hdmi/ReportFeaturesMessage;->hdmiDeviceInfoDeviceTypeToShiftValue(I)I

    move-result v3

    shl-int v3, v4, v3

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    goto :goto_0

    :cond_0
    shl-int/lit8 p2, p3, 0x6

    int-to-byte p2, p2

    or-int/2addr p2, v1

    int-to-byte p2, p2

    if-ne p3, v4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    shl-int p4, v4, p4

    int-to-byte p4, p4

    or-int/2addr p2, p4

    int-to-byte p2, p2

    goto :goto_1

    :cond_1
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const p4, 0xffff

    and-int/2addr p3, p4

    int-to-byte p3, p3

    or-int/2addr p2, p3

    int-to-byte p2, p2

    :cond_2
    const/4 p3, 0x3

    new-array p4, p3, [B

    aput-byte v0, p4, v1

    aput-byte v2, p4, v4

    const/4 v0, 0x2

    aput-byte p2, p4, v0

    invoke-virtual {p5}, Landroid/hardware/hdmi/DeviceFeatures;->toOperand()[B

    move-result-object p2

    array-length v0, p2

    add-int/2addr v0, p3

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p4

    array-length v0, p2

    invoke-static {p2, v1, p4, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xf

    invoke-static {p0, p2}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v7

    if-eqz v7, :cond_3

    new-instance p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0xf

    const/16 v5, 0xa6

    move-object v2, p1

    move v3, p0

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object p1

    :cond_3
    new-instance p2, Lcom/android/server/hdmi/ReportFeaturesMessage;

    const/16 v4, 0xf

    move-object v2, p2

    move v3, p0

    move-object v5, p4

    move v6, p1

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object p2
.end method

.method public static build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 9

    new-instance v0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;-><init>(II[B)V

    invoke-static {p0, p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_0
    array-length v1, p2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v3

    if-ne v3, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_3
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/hdmi/DeviceFeatures;->fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v8

    new-instance v0, Lcom/android/server/hdmi/ReportFeaturesMessage;

    move-object v3, v0

    move v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v0
.end method

.method public static hdmiDeviceInfoDeviceTypeToShiftValue(I)I
    .locals 4

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v3, 0x4

    if-eq p0, v3, :cond_2

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x7

    return p0
.end method

.method public static synthetic lambda$build$0(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 7

    new-instance v6, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v3, 0xa6

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v6
.end method

.method public static validateAddress(II)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCecVersion()I
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    return p0
.end method

.method public getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method
