.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerBoostSetter"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mExpiryTime:Ljava/time/Instant;

.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Ljava/time/Instant;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mExpiryTime:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mCanceled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mCanceled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mExpiryTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->access$000(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->access$200(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    move-result-object v2

    sget v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->POWER_BOOST_TIMEOUT_MS:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v1, "VoiceInteractionServiceManager"

    const-string v3, "Reset power boost INTERACTION because reaching max timeout."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->access$000(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
