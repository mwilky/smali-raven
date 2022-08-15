.class public Lcom/android/server/VpnManagerService$Dependencies;
.super Ljava/lang/Object;
.source "VpnManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VpnManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUid()I
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getINetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 0

    const-string/jumbo p0, "network_management"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p0

    return-object p0
.end method

.method public getNetd()Landroid/net/INetd;
    .locals 0

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object p0

    return-object p0
.end method

.method public getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .locals 0

    new-instance p0, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    return-object p0
.end method

.method public makeHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "VpnManagerService"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
