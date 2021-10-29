.class public Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DetectTvSystemAudioModeSupportAction.java"


# static fields
.field static final MAX_RETRY_COUNT:I = 0x5

.field private static final STATE_WAITING_FOR_FEATURE_ABORT:I = 0x1

.field private static final STATE_WAITING_FOR_SET_SAM:I = 0x2


# instance fields
.field private mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

.field private mSendSetSystemAudioModeRetryCount:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    iput-object p2, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    return-void
.end method

.method private finishAction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setTvSystemAudioModeSupport(Z)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finish()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method handleTimerEvent(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    iput v1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->addTimer(II)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendSetSystemAudioMode()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$sendSetSystemAudioMode$0$DetectTvSystemAudioModeSupportAction(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    :cond_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAbortFeatureOpcode(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_2

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAbortReason(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->addTimer(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method protected sendSetSystemAudioMode()V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method start()Z
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    iget v1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->addTimer(II)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendSetSystemAudioMode()V

    return v0
.end method
