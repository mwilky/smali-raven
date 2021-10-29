.class public Lcom/android/server/hdmi/ActiveSourceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ActiveSourceAction.java"


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private final mDestination:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method handleTimerEvent(I)V
    .locals 0

    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method start()Z
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->getSourceAddress()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->getSourcePath()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/ActiveSourceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/ActiveSourceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v3

    const-string v4, "ActiveSourceAction"

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->finish()V

    return v0
.end method
