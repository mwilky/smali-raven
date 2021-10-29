.class public Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteMusicRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;",
        "Landroid/media/musicrecognition/IMusicRecognitionService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x9c40L


# instance fields
.field private final mServerCallback:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;ZZ)V
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
    or-int/lit16 v7, v0, 0x1000

    const/4 v9, 0x1

    const-string v2, "android.service.musicrecognition.MUSIC_RECOGNITION"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->mServerCallback:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    return-void
.end method


# virtual methods
.method public getAttributionTag()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-object v0
.end method

.method getServerCallback()Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->mServerCallback:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    return-object v0
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionService;
    .locals 1

    invoke-static {p1}, Landroid/media/musicrecognition/IMusicRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getServiceInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionService;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    const-wide/32 v0, 0x9c40

    return-wide v0
.end method

.method public synthetic lambda$getAttributionTag$1$RemoteMusicRecognitionService(Ljava/util/concurrent/CompletableFuture;Landroid/media/musicrecognition/IMusicRecognitionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;-><init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p2, v0}, Landroid/media/musicrecognition/IMusicRecognitionService;->getAttributionTag(Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;)V

    return-void
.end method

.method public synthetic lambda$onAudioStreamStarted$0$RemoteMusicRecognitionService(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->mServerCallback:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    invoke-interface {p3, p1, p2, v0}, Landroid/media/musicrecognition/IMusicRecognitionService;->onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V

    return-void
.end method

.method public onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;)V
    .locals 1

    new-instance v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;)V

    invoke-virtual {p0, v0}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method
