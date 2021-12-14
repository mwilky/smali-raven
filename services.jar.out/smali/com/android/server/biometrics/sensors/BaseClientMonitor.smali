.class public abstract Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.super Lcom/android/server/biometrics/sensors/LoggableMonitor;
.source "BaseClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;,
        Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Biometrics/ClientMonitor"

.field private static sCount:I


# instance fields
.field mAlreadyDone:Z

.field protected mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mCookie:I

.field private mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field private final mOwner:Ljava/lang/String;

.field private mRequestId:J

.field private final mSensorId:I

.field private final mSequentialId:I

.field private final mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->sCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V
    .locals 3

    invoke-direct {p0, p1, p8, p9, p10}, Lcom/android/server/biometrics/sensors/LoggableMonitor;-><init>(Landroid/content/Context;III)V

    new-instance v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    sget v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->sCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->sCount:I

    iput v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSequentialId:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput p4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    iput p7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Biometrics/ClientMonitor"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->binderDiedInternal(Z)V

    return-void
.end method

.method binderDiedInternal(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/ClientMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isAlreadyDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Binder died but client is finished, ignoring"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v0, :cond_1

    const-string v0, "Binder died, cancelling client"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v3, "Biometrics/ClientMonitor"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public getCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCookie()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    return v0
.end method

.method public final getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    return-object v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getProtoEnum()I
.end method

.method public final getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    return-wide v0
.end method

.method public getSensorId()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    return v0
.end method

.method public getTargetUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public final hasRequestId()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interruptsPrecedingClients()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAlreadyDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    return v0
.end method

.method protected final setRequestId(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request id must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->wrapCallbackForStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSequentialId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", proto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 0

    return-object p1
.end method
