.class public final Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;
.super Ljava/lang/Object;
.source "IPv6ProvisioningLossQuirk.java"


# instance fields
.field public final mDetectionCount:I

.field public final mQuirkExpiry:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    iput-wide p2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    return-void
.end method

.method public static fromStableParcelable(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;)Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->detectionCount:I

    iget-wide v2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->quirkExpiry:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iget v2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    iget v3, v1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    iget-wide v4, v1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toStableParcelable()Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;
    .locals 3

    new-instance v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    invoke-direct {v0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;-><init>()V

    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    iput v1, v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->detectionCount:I

    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    iput-wide v1, v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->quirkExpiry:J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "detection count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", quirk expiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
