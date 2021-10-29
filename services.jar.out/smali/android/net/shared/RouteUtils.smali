.class public Landroid/net/shared/RouteUtils;
.super Ljava/lang/Object;
.source "RouteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/RouteUtils$ModifyOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x63

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-static {p0, v3, v2, v1}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v0, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    new-instance v1, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    const-string v4, "fe80::/64"

    invoke-direct {v3, v4}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, p1, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-static {p0, v0, v2, v1}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    return-void
.end method

.method private static findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "throw"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "unreachable"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    nop

    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    .locals 6

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Landroid/net/shared/RouteUtils;->findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    sget-object v3, Landroid/net/shared/RouteUtils$1;->$SwitchMap$android$net$shared$RouteUtils$ModifyOperation:[I

    invoke-virtual {p1}, Landroid/net/shared/RouteUtils$ModifyOperation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_1

    :pswitch_0
    invoke-interface {p0, p2, v0, v1, v2}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p0, p2, v0, v1, v2}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    nop

    return-void

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported modify operation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    :try_start_0
    sget-object v3, Landroid/net/shared/RouteUtils$ModifyOperation;->REMOVE:Landroid/net/shared/RouteUtils$ModifyOperation;

    const/16 v4, 0x63

    invoke-static {p0, v3, v4, v2}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    add-int/lit8 v0, v0, 0x1

    :goto_1
    goto :goto_0

    :cond_0
    return v0
.end method
