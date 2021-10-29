.class public Landroid/net/shared/ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;,
        Landroid/net/shared/ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x4650

.field public static final IPV6_ADDR_GEN_MODE_EUI64:I = 0x0

.field public static final IPV6_ADDR_GEN_MODE_STABLE_PRIVACY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProvisioningConfiguration"


# instance fields
.field public mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public mDhcpOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mEnableIPv4:Z

.field public mEnableIPv6:Z

.field public mEnablePreconnection:Z

.field public mIPv6AddrGenMode:I

.field public mInitialConfig:Landroid/net/shared/InitialConfiguration;

.field public mLayer2Info:Landroid/net/shared/Layer2Information;

.field public mNetwork:Landroid/net/Network;

.field public mProvisioningTimeoutMs:I

.field public mRequestedPreDhcpActionMs:I

.field public mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

.field public mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field public mUsingIpReachabilityMonitor:Z

.field public mUsingMultinetworkPolicyTracker:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    const/16 v0, 0x4650

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/shared/ProvisioningConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    const/16 v0, 0x4650

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iget v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-static {v1}, Landroid/net/shared/InitialConfiguration;->copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/StaticIpConfiguration;

    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    return-void
.end method

.method private static dhcpOptionEquals(Landroid/net/networkstack/aidl/dhcp/DhcpOption;Landroid/net/networkstack/aidl/dhcp/DhcpOption;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-byte v2, p0, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->type:B

    iget-byte v3, p1, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->type:B

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->value:[B

    iget-object v3, p1, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private static dhcpOptionListEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    invoke-static {v3, v4}, Landroid/net/shared/ProvisioningConfiguration;->dhcpOptionEquals(Landroid/net/networkstack/aidl/dhcp/DhcpOption;Landroid/net/networkstack/aidl/dhcp/DhcpOption;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static fromStableParcelable(Landroid/net/ProvisioningConfigurationParcelable;)Landroid/net/shared/ProvisioningConfiguration;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/net/StaticIpConfiguration;

    iget-object v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v2, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    invoke-static {v2}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->fromStableParcelable(Landroid/net/ScanResultInfoParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    invoke-static {v2}, Landroid/net/shared/Layer2Information;->fromStableParcelable(Landroid/net/Layer2InformationParcelable;)Landroid/net/shared/Layer2Information;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/shared/ProvisioningConfiguration;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iget v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iget v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iget v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/net/shared/ProvisioningConfiguration;->dhcpOptionListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/shared/InitialConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;
    .locals 4

    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable;-><init>()V

    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/shared/InitialConfiguration;->toStableParcelable()Landroid/net/InitialConfigurationParcelable;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/net/StaticIpConfiguration;

    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v1, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_1
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->toStableParcelable()Landroid/net/ScanResultInfoParcelable;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/net/shared/Layer2Information;->toStableParcelable()Landroid/net/Layer2InformationParcelable;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    iput-object v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    const-string/jumbo v3, "}"

    invoke-direct {v0, v2, v1, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnablePreconnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsingMultinetworkPolicyTracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsingIpReachabilityMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRequestedPreDhcpActionMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInitialConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStaticIpConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mApfCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProvisioningTimeoutMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIPv6AddrGenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScanResultInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLayer2Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDhcpOptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
