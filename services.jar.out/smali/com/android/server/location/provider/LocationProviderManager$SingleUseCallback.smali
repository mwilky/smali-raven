.class Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleUseCallback"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/lang/RuntimeException;)V
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static wrap(Ljava/lang/Runnable;)Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;->run()V

    return-void
.end method

.method public run()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;->mCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;->mCallback:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    nop

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$SingleUseCallback;->run()V

    return-void
.end method
