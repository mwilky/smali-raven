.class public Lcom/android/server/biometrics/HardwareAuthTokenUtils;
.super Ljava/lang/Object;
.source "HardwareAuthTokenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flipIfNativelyLittle(I)I
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0

    :cond_0
    return p0
.end method

.method private static flipIfNativelyLittle(J)J
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide p0
.end method

.method private static getInt([BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static getLong([BI)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int v3, v2, p1

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B
    .locals 5

    const/16 v0, 0x45

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    const/16 v4, 0x9

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    const/16 v4, 0x11

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    invoke-static {v2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->flipIfNativelyLittle(I)I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v2, v0, v3}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeInt(I[BI)V

    iget-object v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    iget-wide v2, v2, Landroid/hardware/keymaster/Timestamp;->milliSeconds:J

    invoke-static {v2, v3}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->flipIfNativelyLittle(J)J

    move-result-wide v2

    const/16 v4, 0x1d

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget-object v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    iget-object v3, p0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    array-length v3, v3

    const/16 v4, 0x25

    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;
    .locals 6

    new-instance v0, Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-direct {v0}, Landroid/hardware/keymaster/HardwareAuthToken;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong([BI)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    const/16 v1, 0x9

    invoke-static {p0, v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong([BI)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    const/16 v1, 0x11

    invoke-static {p0, v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong([BI)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getInt([BI)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->flipIfNativelyLittle(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    new-instance v1, Landroid/hardware/keymaster/Timestamp;

    invoke-direct {v1}, Landroid/hardware/keymaster/Timestamp;-><init>()V

    const/16 v2, 0x1d

    invoke-static {p0, v2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->flipIfNativelyLittle(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/keymaster/Timestamp;->milliSeconds:J

    iput-object v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    const/16 v2, 0x20

    new-array v3, v2, [B

    iput-object v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    iget-object v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static writeInt(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static writeLong(J[BI)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    const/16 v1, 0x38

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method
