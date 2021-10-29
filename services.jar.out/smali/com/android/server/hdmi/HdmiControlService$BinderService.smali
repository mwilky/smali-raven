.class final Lcom/android/server/hdmi/HdmiControlService$BinderService;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method

.method static synthetic lambda$getAllowedCecSettingIntValues$0(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$5300(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->access$5400(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method public addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$4600(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method public addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3500(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3800(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->access$4400(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method public askRemoteDeviceToBecomeActiveSource(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canChangeSystemAudioMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v1

    return v1
.end method

.method public clearTimerRecording(II[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$20;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HdmiControlService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProhibitMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$4700(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPowerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$4800(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->getPowerStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsCecAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$4900(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCecVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$5000(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "System_settings:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMhlInputChangeEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$5100(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSystemAudioActivated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHdmiCecVolumeControlEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$5200(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "CEC settings:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllSettings()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getUserSettings()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->isStringValueType(Ljava/lang/String;)Z

    move-result v6

    const-string v7, " [modifiable]"

    const-string v8, ""

    const-string v9, ")"

    const-string v10, " (default: "

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (string): "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->isIntValueType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (int): "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getDefaultIntValue(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    :goto_3
    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "mMhlController: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "mCecController: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/hdmi/HdmiCecController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_6
    return-void
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedCecSettingIntValues(Ljava/lang/String;)[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/hdmi/HdmiControlService$BinderService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/hdmi/HdmiControlService$BinderService$$ExternalSyntheticLambda0;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCecSettingIntValue(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDevicesLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeExternalInputsLocked()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$4100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalAddress()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPortInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$3000(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$3000(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSystemAudioMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getUserCecSettings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getUserSettings()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;-><init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiControlShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is calling oneTouchPlay."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiControlService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public powerOffRemoteDevice(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public powerOnRemoteDevice(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$5300(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->access$5500(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHdmiControlVolumeControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3400(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3600(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3900(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public reportAudioStatus(IIIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$23;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$23;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendKeyEvent(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMhlVendorCommand(III[B)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$21;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$21;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III[B)V

    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendStandby(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendVendorCommand(II[BZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V

    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendVolumeKeyEvent(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IIZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setArcMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCecSettingIntValue(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$4500(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$4000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method public setProhibitMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setProhibitMode(Z)V

    return-void
.end method

.method public setStandbyMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioModeOnForAudioOnlySource()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$24;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$24;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioMute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioVolume(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldHandleTvPowerKey()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->shouldHandleTvPowerKey()Z

    move-result v0

    return v0
.end method

.method public startOneTouchRecord(I[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$17;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTimerRecording(II[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopOneTouchRecord(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$18;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleAndFollowTvPower()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2900(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is calling toggleAndFollowTvPower."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiControlService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
