.class public Lcom/android/systemui/doze/DozeUi;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private final mCanAnimateTransition:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mContext:Landroid/content/Context;

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/doze/DozeHost;

.field private mKeyguardShowing:Z

.field private final mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastTimeTickElapsed:J

.field private mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public static synthetic $r8$lambda$2oXvcafRfs9agk1A4kbfyyGB-ok(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->onTimeTick()V

    return-void
.end method

.method public static synthetic $r8$lambda$BB1OPQIP3EP9frhxxwOzPbv6P54()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/doze/DozeUi;->lambda$onTimeTick$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/tuner/TunerService;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/doze/DozeUi$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeUi$1;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    iput-object p6, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p3, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    const-string p4, "doze_time_tick"

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object p8, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iput-object p9, p0, Lcom/android/systemui/doze/DozeUi;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p10, p0, Lcom/android/systemui/doze/DozeUi;->mStatusBarStateController:Ldagger/Lazy;

    const-string p1, "doze_always_on"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iput-object p11, p0, Lcom/android/systemui/doze/DozeUi;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p11, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/doze/DozeUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method private static synthetic lambda$onTimeTick$0()V
    .locals 0

    return-void
.end method

.method private onTimeTick()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v2, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda2;

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    return-void
.end method

.method private pulseWhileDozing(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeUi$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/DozeUi$2;-><init>(Lcom/android/systemui/doze/DozeUi;I)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method private roundToNextMinute(J)J
    .locals 0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xe

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private scheduleTimeTick()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeUi;->roundToNextMinute(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    add-long/2addr v2, v0

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->traceTimeTickScheduled(JJ)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    return-void
.end method

.method private unscheduleTimeTick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    return-void
.end method

.method private updateAnimateScreenOff()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlUnlockedScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateScreenOff(Z)V

    :cond_2
    return-void
.end method

.method private updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    :goto_1
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private verifyLastTimeTick()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeLog;->traceMissedTick(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missed AOD time tick by "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DozeMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "doze_always_on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    :cond_0
    return-void
.end method

.method public setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->startDozing()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->getPulseReason()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeUi;->pulseWhileDozing(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeHost;)V

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeUi;->updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
