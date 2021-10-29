.class Lcom/android/server/media/MediaSession2Record$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSession2Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSession2Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controller2Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSession2Record;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSession2Record;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSession2Record;Lcom/android/server/media/MediaSession2Record$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSession2Record$Controller2Callback;-><init>(Lcom/android/server/media/MediaSession2Record;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .locals 3

    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaSession2Record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v2}, Lcom/android/server/media/MediaSession2Record;->access$200(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", allowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$300(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSession2Record;->access$402(Lcom/android/server/media/MediaSession2Record;Z)Z

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->access$500(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .locals 3

    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaSession2Record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v2}, Lcom/android/server/media/MediaSession2Record;->access$200(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$300(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSession2Record;->access$402(Lcom/android/server/media/MediaSession2Record;Z)Z

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->access$500(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .locals 3

    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaSession2Record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playback active changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v2}, Lcom/android/server/media/MediaSession2Record;->access$200(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$300(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->access$500(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
