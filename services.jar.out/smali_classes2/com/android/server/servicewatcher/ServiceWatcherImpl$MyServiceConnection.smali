.class Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
.super Ljava/lang/Object;
.source "ServiceWatcherImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field private volatile mBinder:Landroid/os/IBinder;

.field private final mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTBoundServiceInfo;"
        }
    .end annotation
.end field

.field private mRebinder:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTBoundServiceInfo;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    return-void
.end method


# virtual methods
.method bind()V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    const-string v1, "["

    const-string v2, "ServiceWatcher"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] binding to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v4, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    const v7, 0x40000005    # 2.0000012f

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v8, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] unexpected bind failure - retrying later"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    iput-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTBoundServiceInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindingDied$0$ServiceWatcherImpl$MyServiceConnection()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V

    return-void
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has null binding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] connected to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-interface {v0, p2, v3}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] error running operation on "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] disconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;->onUnbind()V

    :cond_2
    return-void
.end method

.method runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->onError()V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] error running operation on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->onError()V

    :goto_1
    return-void
.end method

.method unbind()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] unbinding from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
