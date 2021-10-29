.class Lcom/android/server/rotationresolver/RemoteRotationResolverService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteRotationResolverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/rotationresolver/IRotationResolverService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIdleUnbindTimeoutMs:J

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IJLjava/lang/Object;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.rotationresolver.RotationResolverService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    sget-object v7, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda2;

    const v5, 0x4001000

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-wide p4, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->mIdleUnbindTimeoutMs:J

    iput-object p6, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$resolveRotationLocked$0(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/service/rotationresolver/IRotationResolverService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->access$500(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Landroid/service/rotationresolver/IRotationResolverCallback;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/service/rotationresolver/IRotationResolverService;->resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    return-void
.end method

.method static synthetic lambda$resolveRotationLocked$1(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .locals 3

    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->access$000(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    sget-object v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->TAG:Ljava/lang/String;

    const-string v2, "Trying to cancel the remote request. Reason: Timed out."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public resolveRotationLocked(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    invoke-virtual {p0, v1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->getJobHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    iget-object v3, p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    invoke-virtual {v3}, Landroid/service/rotationresolver/RotationResolutionRequest;->getTimeoutMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
