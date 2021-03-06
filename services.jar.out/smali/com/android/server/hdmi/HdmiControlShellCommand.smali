.class final Lcom/android/server/hdmi/HdmiControlShellCommand;
.super Landroid/os/ShellCommand;
.source "HdmiControlShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiShellCommand"


# instance fields
.field private final mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

.field mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

.field final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand$1;-><init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiControlShellCommand;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getResultString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cecSetting(Ljava/io/PrintWriter;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :goto_0
    move v1, v2

    :goto_1
    const-string v2, " = "

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v5, v1, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v7, v1, v6}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return v4

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v3, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v5, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return v4

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected at least 1 argument (operation)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_1
        0x1bc62 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getResultString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "Communication Failed"

    return-object v0

    :pswitch_2
    const-string v0, "Incorrect mode"

    return-object v0

    :pswitch_3
    const-string v0, "Exception"

    return-object v0

    :pswitch_4
    const-string v0, "Target not available"

    return-object v0

    :pswitch_5
    const-string v0, "Source not available"

    return-object v0

    :pswitch_6
    const-string v0, "Timeout"

    return-object v0

    :pswitch_7
    const-string v0, "Success"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleShellCommand(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "cec_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "vendorcommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "otp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "setsystemaudiomode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "setsam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "setarc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "onetouchplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setArcMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setSystemAudioMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->cecSetting(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->vendorCommand(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->oneTouchPlay(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x38ff28b3 -> :sswitch_6
        -0x35fd3550 -> :sswitch_5
        -0x35fcf3c3 -> :sswitch_4
        -0x1bd7bf78 -> :sswitch_3
        0x1af2b -> :sswitch_2
        0x25083903 -> :sswitch_1
        0x4ed06452 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private oneTouchPlay(Ljava/io/PrintWriter;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Sending One Touch Play..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const-string v0, "One Touch Play"

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private receiveCallback(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timed out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Caught InterruptedException"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private setArcMode(Ljava/io/PrintWriter;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if ARC mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v1, "Setting ARC mode on"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Setting ARC mode off"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v1, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    :goto_0
    return v4

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSystemAudioMode(Ljava/io/PrintWriter;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if System Audio Mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v1, "Setting System Audio Mode on"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "Setting System Audio Mode off"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {v1, v4, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    :goto_0
    const-string v1, "Set System Audio Mode"

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_2

    move v2, v4

    :cond_2
    return v2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private vendorCommand(Ljava/io/PrintWriter;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x6

    if-gt v1, v0, :cond_3

    const/4 v0, -0x1

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "--args"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_1
    const-string v6, "--id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_2
    const-string v8, "-t"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :sswitch_3
    const-string v6, "-i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_2

    :sswitch_4
    const-string v6, "-d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_5
    const-string v6, "-a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_6
    const-string v6, "--destination"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_7
    const-string v6, "--device_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :goto_1
    move v6, v7

    :goto_2
    packed-switch v6, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_1
    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    new-array v7, v7, [B

    const/4 v8, 0x0

    :goto_4
    array-length v9, v7

    if-ge v8, v9, :cond_2

    aget-object v9, v1, v8

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_2
    const-string v8, "Sending <Vendor Command>"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v8, v0, v2, v7, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    return v6

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected 3 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x14b41a1d -> :sswitch_7
        -0xdf78592 -> :sswitch_6
        0x5d4 -> :sswitch_5
        0x5d7 -> :sswitch_4
        0x5dc -> :sswitch_3
        0x5e7 -> :sswitch_2
        0x152abb -> :sswitch_1
        0x4f72067d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleShellCommand(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught error for command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error handling hdmi_control shell command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiShellCommand"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    return v1
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "HdmiControlManager (hdmi_control) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  onetouchplay, otp"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Send the \"One Touch Play\" feature from a source to the TV"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  vendorcommand --device_type <originating device type>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "                --destination <destination device>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "                --args <vendor specific arguments>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "                [--id <true if vendor command should be sent with vendor id>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Send a Vendor Command to the given target device"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  cec_setting get <setting name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Get the current value of a CEC setting"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  cec_setting set <setting name> <value>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Set the value of a CEC setting"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  setsystemaudiomode, setsam [on|off]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Sets the System Audio Mode feature on or off on TV devices"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  setarc [on|off]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Sets the ARC feature on or off on TV devices"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
