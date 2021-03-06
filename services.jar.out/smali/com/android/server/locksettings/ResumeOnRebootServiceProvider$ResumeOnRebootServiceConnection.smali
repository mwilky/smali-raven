.class public Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;
.super Ljava/lang/Object;
.source "ResumeOnRebootServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResumeOnRebootServiceConnection"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResumeOnRebootServiceConnection"


# instance fields
.field private mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;Landroid/service/resumeonreboot/IResumeOnRebootService;)Landroid/service/resumeonreboot/IResumeOnRebootService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    return-object p1
.end method

.method private throwTypedException(Landroid/os/ParcelableException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ResumeOnRebootServiceConnection wrap/unwrap failed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    throw v0
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "Latch wait for "

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p3, p4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    nop

    return-void

    :cond_0
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " elapsed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " interrupted"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public bindToService(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;-><init>(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v4, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    const v5, 0x4000001

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResumeOnRebootServiceConnection"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v3, "serviceConnection"

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public unbindService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    return-void
.end method

.method public unwrap([BJ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$1;)V

    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    new-instance v3, Landroid/os/RemoteCallback;

    invoke-direct {v3, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v2, p1, v3}, Landroid/service/resumeonreboot/IResumeOnRebootService;->unwrap([BLandroid/os/RemoteCallback;)V

    const-string/jumbo v2, "unWrapSecret"

    invoke-direct {p0, v0, v2, p2, p3}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->access$300(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "exception_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->access$300(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelableException;

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->throwTypedException(Landroid/os/ParcelableException;)V

    :cond_0
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->access$300(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "unrwapped_blob_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Service not bound"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrapBlob([BJJ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$1;)V

    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    new-instance v3, Landroid/os/RemoteCallback;

    invoke-direct {v3, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/service/resumeonreboot/IResumeOnRebootService;->wrapSecret([BJLandroid/os/RemoteCallback;)V

    const-string/jumbo v2, "wrapSecret"

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->access$300(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "exception_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->access$300(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelableException;

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->throwTypedException(Landroid/os/ParcelableException;)V

    :cond_0
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->access$400(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "wrapped_blob_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Service not bound"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
