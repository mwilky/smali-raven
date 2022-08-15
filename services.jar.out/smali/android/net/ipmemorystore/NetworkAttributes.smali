.class public Landroid/net/ipmemorystore/NetworkAttributes;
.super Ljava/lang/Object;
.source "NetworkAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NULL_MATCH_WEIGHT:F = 0.25f

.field public static final TOTAL_WEIGHT:F = 850.0f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TOTAL_WEIGHT_CUTOFF:F = 520.0f

.field private static final WEIGHT_ASSIGNEDV4ADDR:F = 300.0f

.field private static final WEIGHT_ASSIGNEDV4ADDREXPIRY:F = 0.0f

.field private static final WEIGHT_CLUSTER:F = 300.0f

.field private static final WEIGHT_DNSADDRESSES:F = 200.0f

.field private static final WEIGHT_MTU:F = 50.0f

.field private static final WEIGHT_V6PROVLOSSQUIRK:F


# instance fields
.field public final assignedV4Address:Ljava/net/Inet4Address;

.field public final assignedV4AddressExpiry:Ljava/lang/Long;

.field public final cluster:Ljava/lang/String;

.field public final dnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

.field public final mtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    invoke-static {v0}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    iget-wide v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    invoke-static {v1}, Landroid/net/ipmemorystore/NetworkAttributes;->blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;

    move-result-object v5

    iget v1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    if-ltz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    invoke-static {p1}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->fromStableParcelable(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;)Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    move-result-object v7

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MTU can\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lease expiry can\'t be negative or zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iput-object p2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iput-object p3, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    if-nez p4, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    iput-object p5, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iput-object p6, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    return-void
.end method

.method private static blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/ipmemorystore/Blob;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/net/ipmemorystore/Blob;->data:[B

    invoke-static {v3}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getByAddressOrNull([B)Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Landroid/net/ipmemorystore/Blob;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/net/ipmemorystore/Blob;

    invoke-direct {v4}, Landroid/net/ipmemorystore/Blob;-><init>()V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v4, Landroid/net/ipmemorystore/Blob;->data:[B

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Landroid/net/ipmemorystore/Blob;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/ipmemorystore/Blob;

    return-object p0
.end method

.method private samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F
    .locals 0

    const/4 p0, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    const/high16 p0, 0x3e800000    # 0.25f

    mul-float/2addr p0, p1

    :cond_0
    return p0

    :cond_1
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p1, p0

    :goto_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNetworkGroupSamenessConfidence(Landroid/net/ipmemorystore/NetworkAttributes;)F
    .locals 5

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-direct {p0, v2, v0, v1}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v0

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    invoke-direct {p0, v4, v1, p1}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x44020000    # 520.0f

    cmpg-float p1, v0, p0

    if-gez p1, :cond_0

    const/high16 p0, 0x44820000    # 1040.0f

    div-float/2addr v0, p0

    return v0

    :cond_0
    sub-float/2addr v0, p0

    const/high16 p0, 0x43a50000    # 330.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .locals 5

    new-instance v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;-><init>()V

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-static {v1}, Landroid/net/ipmemorystore/NetworkAttributes;->inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;

    move-result-object v1

    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->toStableParcelable()Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    const-string v2, "assignedV4Addr :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_0
    const-string v2, "assignedV4Addr"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-eqz v2, :cond_1

    const-string v2, "assignedV4AddressExpiry :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_1
    const-string v2, "assignedV4AddressExpiry"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "cluster :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_2
    const-string v2, "cluster"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const-string v3, "]"

    if-eqz v2, :cond_4

    const-string v2, "dnsAddr : ["

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    :cond_4
    const-string v2, "dnsAddr"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "mtu :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_5

    :cond_5
    const-string/jumbo v2, "mtu"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    if-eqz v2, :cond_6

    const-string v2, "ipv6ProvisioningLossQuirk : ["

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    invoke-virtual {p0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_6

    :cond_6
    const-string p0, "ipv6ProvisioningLossQuirk"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "; Null fields : ["

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_7

    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_8
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
