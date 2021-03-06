.class public Lcom/android/server/hdmi/ArcTerminationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ArcTerminationActionFromAvr.java"


# static fields
.field private static final STATE_ARC_TERMINATED:I = 0x2

.field private static final STATE_WAITING_FOR_INITIATE_ARC_RESPONSE:I = 0x1

.field private static final TIMEOUT_MS:I = 0x3e8


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method

.method private handleTerminateArcTimeout()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleTerminateArcTimeout"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->finish()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method handleTimerEvent(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->handleTerminateArcTimeout()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$sendTerminateArc$0$ArcTerminationActionFromAvr(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Terminate ARC was not successfully sent."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->finish()V

    :cond_1
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->finish()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_0
    .end packed-switch
.end method

.method protected sendTerminateArc()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method start()Z
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    iget v1, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->addTimer(II)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->sendTerminateArc()V

    return v0
.end method
