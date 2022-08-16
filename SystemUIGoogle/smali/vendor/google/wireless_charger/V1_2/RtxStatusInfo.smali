.class public final Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;
.super Ljava/lang/Object;
.source "RtxStatusInfo.java"


# instance fields
.field public acctype:I

.field public chg_s:Z

.field public iout:I

.field public level:I

.field public mode:B

.field public reason:B

.field public vout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    iput-boolean v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;

    iget-byte v2, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    iget-byte v3, p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    iget v3, p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    iget-boolean v3, p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    iget v3, p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    iget v3, p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    iget v3, p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    iget-byte p1, p1, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    if-eq p0, p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 2

    const-wide/16 v0, 0x1c

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    const-wide/16 v0, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "{"

    const-string v1, ".mode = "

    invoke-static {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    const-string v2, "0x"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    const-string v1, "DISABLED"

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    const-string v1, "ACTIVE"

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    const-string v1, "AVAILABLE"

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .acctype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .chg_s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .vout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .iout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    if-nez p0, :cond_3

    const-string p0, "NONE"

    goto :goto_1

    :cond_3
    if-ne p0, v4, :cond_4

    const-string p0, "BATTLOW"

    goto :goto_1

    :cond_4
    if-ne p0, v3, :cond_5

    const-string p0, "OVERHEAT"

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne p0, v1, :cond_6

    const-string p0, "TXCONFLICT"

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    if-ne p0, v1, :cond_7

    const-string p0, "OCP"

    goto :goto_1

    :cond_7
    const/16 v1, 0xf

    if-ne p0, v1, :cond_8

    const-string p0, "UNKNOWN"

    goto :goto_1

    :cond_8
    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
