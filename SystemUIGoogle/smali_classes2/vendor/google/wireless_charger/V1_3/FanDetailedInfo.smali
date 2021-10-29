.class public final Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;
.super Ljava/lang/Object;
.source "FanDetailedInfo.java"


# instance fields
.field public count:B

.field public currentRpm:S

.field public fanMode:B

.field public maximumRpm:S

.field public minimumRpm:S

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    iput-short v0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    iput-short v0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    iput-short v0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

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

    const-class v3, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;

    iget-byte v2, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    iget-byte v3, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-short v2, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    iget-short v3, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-short v2, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    iget-short v3, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-short v2, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    iget-short v3, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-byte v2, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    iget-byte v3, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

    iget-byte p1, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-short v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    const-wide/16 v0, 0x9

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fanMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    invoke-static {v1}, Lvendor/google/wireless_charger/V1_3/FanMode;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .currentRpm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .minimumRpm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maximumRpm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
