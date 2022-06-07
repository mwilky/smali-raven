.class final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundTriggerCallback"
.end annotation


# instance fields
.field private final mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field private final mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field private mRecognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onError(I)V

    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mRecognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-static {v1, p1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$700(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    goto :goto_1

    :cond_1
    invoke-static {v2, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    :goto_1
    return-void
.end method

.method public onRecognitionPaused()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionPaused()V

    return-void
.end method

.method public onRecognitionResumed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionResumed()V

    return-void
.end method
