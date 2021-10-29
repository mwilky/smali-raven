.class public Lcom/android/server/smartspace/RemoteSmartspaceService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteSmartspaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/smartspace/RemoteSmartspaceService;",
        "Landroid/service/smartspace/ISmartspaceService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteSmartspaceService"

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x7d0L


# instance fields
.field private final mCallback:Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;ZZ)V
    .locals 10

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p6, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/smartspace/RemoteSmartspaceService;->mCallback:Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;

    return-void
.end method


# virtual methods
.method public executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/smartspace/ISmartspaceService;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/RemoteSmartspaceService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method protected getRemoteRequestMillis()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/RemoteSmartspaceService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/smartspace/ISmartspaceService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/smartspace/ISmartspaceService;
    .locals 1

    invoke-static {p1}, Landroid/service/smartspace/ISmartspaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/smartspace/ISmartspaceService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartspace/RemoteSmartspaceService;->mCallback:Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;->onConnectedStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public reconnect()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    return-void
.end method

.method public scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/smartspace/ISmartspaceService;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/RemoteSmartspaceService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method
