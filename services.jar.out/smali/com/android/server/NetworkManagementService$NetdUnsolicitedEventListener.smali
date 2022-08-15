.class public Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetdUnsolicitedEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method public static synthetic $r8$lambda$0p2kfruhw5ccbr_vXSkUwNRW6Yc(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceAddressRemoved$4(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$58QZV4imD6seeJV3poub99IATTM(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceClassActivityChanged$0(IZJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$5qrMu7yyRkftwCYu72rnoeUSJXw(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceAddressUpdated$3(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FL2nMZa8Z_7fnxuj59Vj3BCqLDI(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceChanged$7(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HQ0sHXIpOSzvJmhZ4aGivEOQ5lw(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onRouteChanged$9(ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_hemd029I9KolzyJR8kIoaKWlY(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceLinkStateChanged$8(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$V9FbTzn3VSOAMWQ5cb-0VUdypE0(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceAdded$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$akLnwDjVGOd9ClkpqpY-9G3iDx0(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onQuotaLimitReached$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$us6RK6Ujt_2jFHX5obOq3R4BfC4(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceDnsServerInfo$2(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zhD0mBEJk3DXHzbnf2shIuKoCf0(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceRemoved$6(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method

.method private synthetic lambda$onInterfaceAdded$5(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyInterfaceAdded(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onInterfaceAddressRemoved$4(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyAddressRemoved(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method private synthetic lambda$onInterfaceAddressUpdated$3(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyAddressUpdated(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method private synthetic lambda$onInterfaceChanged$7(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyInterfaceStatusChanged(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onInterfaceClassActivityChanged$0(IZJI)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyInterfaceClassActivity(Lcom/android/server/NetworkManagementService;IZJI)V

    return-void
.end method

.method private synthetic lambda$onInterfaceDnsServerInfo$2(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyInterfaceDnsServerInfo(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onInterfaceLinkStateChanged$8(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyInterfaceLinkStateChanged(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onInterfaceRemoved$6(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyInterfaceRemoved(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onQuotaLimitReached$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyLimitReached(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRouteChanged$9(ZLandroid/net/RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->-$$Nest$mnotifyRouteChange(Lcom/android/server/NetworkManagementService;ZLandroid/net/RouteInfo;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "3943383e838f39851675e3640fcdf27b42f8c9fc"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, v0}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p2, v0}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p3

    :cond_0
    move-wide v4, p3

    iget-object p3, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p3}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;

    move-object v0, p4

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    :goto_0
    const/4 p3, 0x1

    invoke-direct {v0, v1, p2, p4, p3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V

    return-void
.end method
