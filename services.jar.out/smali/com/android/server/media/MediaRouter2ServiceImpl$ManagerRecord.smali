.class final Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ManagerRecord"
.end annotation


# instance fields
.field public mIsScanning:Z

.field public mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

.field public final mManager:Landroid/media/IMediaRouter2Manager;

.field public final mManagerId:I

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I

.field public final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2Manager;IILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iput p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUid:I

    iput p5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mPid:I

    iput-object p6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    return-void
.end method

.method static synthetic lambda$startScan$0(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$200(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$stopScan$1(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$200(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->managerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v0}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public startScan()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mIsScanning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mIsScanning:Z

    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopScan()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mIsScanning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mIsScanning:Z

    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
