.class public Lcom/android/server/vcn/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public static getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
