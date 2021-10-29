.class final Lcom/android/server/speech/RemoteSpeechRecognitionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteSpeechRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/speech/IRecognitionService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallingUid:I

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnected:Z

.field private mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

.field private mListener:Landroid/speech/IRecognitionListener;

.field private final mLock:Ljava/lang/Object;

.field private mRecordingInProgress:Z

.field private mSessionInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.RecognitionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    sget-object v7, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;

    const v5, 0x4101001

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    iput p4, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mCallingUid:I

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic lambda$cancel$3(Landroid/speech/IRecognitionListener;ZLandroid/speech/IRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    return-void
.end method

.method static synthetic lambda$startListening$1(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;Landroid/speech/IRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static synthetic lambda$stopListening$2(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/speech/IRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method private resetStateLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    return-void
.end method

.method private static tryRespondWithError(Landroid/speech/IRecognitionListener;I)V
    .locals 5

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to respond with an error %d to the client"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method cancel(Landroid/speech/IRecognitionListener;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "#cancel called with an unexpected listener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;-><init>(Landroid/speech/IRecognitionListener;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    iput-boolean v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iput-object v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-eqz p2, :cond_3

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getServiceComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public synthetic lambda$cancel$4$RemoteSpeechRecognitionService(Landroid/speech/IRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->unbind()V

    return-void
.end method

.method public synthetic lambda$startListening$0$RemoteSpeechRecognitionService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->resetStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    check-cast p1, Landroid/speech/IRecognitionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->onServiceConnectionStatusChanged(Landroid/speech/IRecognitionService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/speech/IRecognitionService;Z)V
    .locals 3

    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "Connection to speech recognition service lost, but no #startListening has been invoked yet."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    invoke-direct {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->resetStateLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v1, "#startListening called with no preceding #setListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_1

    const/16 v0, 0xb

    invoke-static {p2, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "#startListening called while listening is in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;)V

    invoke-direct {v1, p2, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;-><init>(Landroid/speech/IRecognitionListener;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    nop

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    const/4 v2, 0x5

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v3, "#stopListening called with no preceding #startListening - ignoring"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v3, "#stopListening called with an unexpected listener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "#stopListening called while listening isn\'t in progress, ignoring."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
