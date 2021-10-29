.class public Landroid/net/shared/InitialConfiguration;
.super Ljava/lang/Object;
.source "InitialConfiguration.java"


# static fields
.field public static final INET6_ANY:Ljava/net/InetAddress;

.field private static final RFC6177_MIN_PREFIX_LENGTH:I = 0x30

.field private static final RFC7421_PREFIX_LENGTH:I = 0x40


# instance fields
.field public final directlyConnectedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field public final dnsServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final ipAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6Dm0xxQjabh3KRcUHYegTxqJe5c(Landroid/net/IpPrefix;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$abrrg5ZeD4L8gkzCRyl5PetilMg(Landroid/net/LinkAddress;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c9N2MqnbjMzPatv9DmSRL0HmMjM(Landroid/net/IpPrefix;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ckHd5yDb09dNJCGIRIxcf8LJ6x0(Landroid/net/LinkAddress;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f1pX3UaAEU7AJSafGVVYbThltbc(Landroid/net/LinkAddress;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv6GUA(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "::"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Landroid/net/shared/InitialConfiguration;->INET6_ANY:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    return-void
.end method

.method public static all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

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

.method public static copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/shared/InitialConfiguration;

    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration;-><init>()V

    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/shared/InitialConfiguration;

    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration;-><init>()V

    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    sget-object v3, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda0;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda0;

    invoke-static {v2, v3}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static isCompliantIPv6PrefixLength(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIPv4(Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method private static isIPv4(Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method private static isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sget-object v1, Landroid/net/shared/InitialConfiguration;->INET6_ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/IpPrefix;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/shared/InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

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

.method private static isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/LinkAddress;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/shared/InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

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

.method static synthetic lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .locals 1

    invoke-static {p1, p0}, Landroid/net/shared/InitialConfiguration;->isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isValid$1(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$not$4(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/shared/InitialConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/shared/InitialConfiguration;

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    new-instance v3, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda4;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {p1, v3}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    new-instance v3, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;-><init>(Landroid/net/IpPrefix;)V

    invoke-static {p2, v3}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 6

    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    iget-object v3, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {v3, v4}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda5;-><init>(Ljava/net/InetAddress;)V

    invoke-static {v3, v4}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda10;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda10;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda7;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda7;

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public toStableParcelable()Landroid/net/InitialConfigurationParcelable;
    .locals 4

    new-instance v0, Landroid/net/InitialConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/InitialConfigurationParcelable;-><init>()V

    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/LinkAddress;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/LinkAddress;

    iput-object v1, v0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-array v2, v2, [Landroid/net/IpPrefix;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/IpPrefix;

    iput-object v1, v0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    sget-object v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "InitialConfiguration(IPs: {%s}, prefixes: {%s}, DNS: {%s})"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
