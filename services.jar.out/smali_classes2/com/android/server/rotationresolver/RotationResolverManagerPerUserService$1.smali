.class Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;
.super Ljava/lang/Object;
.source "RotationResolverManagerPerUserService.java"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

.field final synthetic val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# direct methods
.method constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->access$200(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->access$100(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {v0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSuccess(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->access$000(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->access$100(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {v0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onSuccess(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
