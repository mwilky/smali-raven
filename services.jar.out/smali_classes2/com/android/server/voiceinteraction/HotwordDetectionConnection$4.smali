.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field final synthetic val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field final synthetic val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$500(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$500(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$600(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$400(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    const-string v1, "HotwordDetectionConnection"

    const-string v3, "Ignoring #onDetected due to a process restart"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$600(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$402(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$100(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    if-eqz p1, :cond_2

    const-string v1, "HotwordDetectionConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bits from hotword trusted process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$300(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HotwordDetectionConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed detected result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$600(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v3

    invoke-static {v3, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    nop

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$500(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$500(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$600(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$400(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Ignoring #onRejected due to a process restart"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$600(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$402(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)Z

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$300(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v1, "HotwordDetectionConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed rejected result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
