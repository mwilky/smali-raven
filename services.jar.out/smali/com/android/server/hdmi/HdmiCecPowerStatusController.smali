.class Lcom/android/server/hdmi/HdmiCecPowerStatusController;
.super Ljava/lang/Object;
.source "HdmiCecPowerStatusController.java"


# instance fields
.field private final mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

.field private mPowerStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method

.method private sendReportPowerStatus(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    const/16 v4, 0xf

    invoke-static {v3, v4, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method getPowerStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    return v0
.end method

.method isPowerStatusOn()Z
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPowerStatusStandby()Z
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isPowerStatusTransientToOn()Z
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPowerStatusTransientToStandby()Z
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setPowerStatus(I)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    return-void
.end method

.method setPowerStatus(IZ)V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->sendReportPowerStatus(I)V

    :cond_1
    return-void
.end method
