.class public Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.super Ljava/lang/Object;
.source "BatterySaverStateMachine.java"


# static fields
.field private static final ADAPTIVE_AUTO_DISABLE_BATTERY_LEVEL:I = 0x50

.field private static final ADAPTIVE_CHANGE_TIMEOUT_MS:J = 0x5265c00L

.field private static final BATTERY_SAVER_NOTIF_CHANNEL_ID:Ljava/lang/String; = "battery_saver_channel"

.field private static final DEBUG:Z = false

.field private static final DYNAMIC_MODE_NOTIFICATION_ID:I = 0x7c8

.field private static final DYNAMIC_MODE_NOTIF_CHANNEL_ID:Ljava/lang/String; = "dynamic_mode_notification"

.field private static final STATE_AUTOMATIC_ON:I = 0x3

.field private static final STATE_MANUAL_ON:I = 0x2

.field private static final STATE_OFF:I = 0x1

.field private static final STATE_OFF_AUTOMATIC_SNOOZED:I = 0x4

.field private static final STATE_PENDING_STICKY_ON:I = 0x5

.field private static final STICKY_AUTO_DISABLED_NOTIFICATION_ID:I = 0x7c9

.field private static final TAG:Ljava/lang/String; = "BatterySaverStateMachine"


# instance fields
.field private mBatteryLevel:I

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverStickyBehaviourDisabled:Z

.field private mBatteryStatusSet:Z

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDynamicPowerSavingsDefaultDisableThreshold:I

.field private mDynamicPowerSavingsDisableThreshold:I

.field private mDynamicPowerSavingsEnableBatterySaver:Z

.field private mIsBatteryLevelLow:Z

.field private mIsPowered:Z

.field private mLastAdaptiveBatterySaverChangedExternallyElapsed:J

.field private mLastChangedIntReason:I

.field private mLastChangedStrReason:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mSettingAutomaticBatterySaver:I

.field private mSettingBatterySaverEnabled:Z

.field private mSettingBatterySaverEnabledSticky:Z

.field private mSettingBatterySaverStickyAutoDisableEnabled:Z

.field private mSettingBatterySaverStickyAutoDisableThreshold:I

.field private mSettingBatterySaverTriggerThreshold:I

.field private mSettingsLoaded:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mState:I

.field private final mThresholdChangeLogger:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    return-void
.end method

.method private buildNotification(Ljava/lang/String;IILjava/lang/String;)Landroid/app/Notification;
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x1080331

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    return-object v5
.end method

.method private doAutoBatterySaverLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->resetAdaptivePolicyLocked(I)Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    const/16 v2, 0x50

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private enableBatterySaverLocked(ZZI)V
    .locals 1

    invoke-static {p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    return-void
.end method

.method private enableBatterySaverLocked(ZZILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    const-string v1, "low_power"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->enableBatterySaver(ZI)V

    const/16 v1, 0x9

    if-ne p3, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerDynamicModeNotification()V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideDynamicModeNotification()V

    :cond_5
    :goto_1
    return-void
.end method

.method private ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p2, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private hideDynamicModeNotification()V
    .locals 1

    const/16 v0, 0x7c8

    invoke-direct {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    return-void
.end method

.method private hideNotification(I)V
    .locals 1

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideStickyDisabledNotification()V
    .locals 1

    const/16 v0, 0x7c9

    invoke-direct {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    return-void
.end method

.method private isAutomaticModeActiveLocked()Z
    .locals 1

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDynamicModeActiveLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isInAutomaticLowZoneLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    return v0
.end method

.method private isInDynamicLowZoneLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshSettingsLocked()V
    .locals 14

    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v0, "low_power_sticky"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const-string v0, "dynamic_power_savings_enabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move v10, v1

    :goto_2
    const-string v0, "low_power_trigger_level"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "automatic_power_save_mode"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v12

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    const-string v6, "dynamic_power_savings_disable_threshold"

    invoke-virtual {p0, v6, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "low_power_sticky_auto_disable_enabled"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    const/16 v1, 0x5a

    const-string v2, "low_power_sticky_auto_disable_level"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    move-object v3, p0

    move v6, v0

    move v8, v1

    move v9, v12

    move v11, v13

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setSettingsLocked(ZZIZIIZI)V

    return-void
.end method

.method private setStickyActive(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    nop

    nop

    const-string v0, "low_power_sticky"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    return-void
.end method

.method private updateStateLocked(ZZ)V
    .locals 8

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "BatterySaverStateMachine"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_0
    if-eqz p1, :cond_2

    const-string v0, "Tried to manually change BS state from PENDING_STICKY_ON"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-lt v0, v2, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v7

    :goto_2
    if-nez v2, :cond_7

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v3, :cond_18

    invoke-direct {p0, v7, v7, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :cond_7
    :goto_3
    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-direct {p0, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerStickyDisabledNotification()V

    goto/16 :goto_4

    :pswitch_1
    if-eqz p1, :cond_9

    if-nez p2, :cond_8

    const-string v0, "Tried to disable BS when it\'s already AUTO_SNOOZED"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-direct {p0, v7, v7, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, v6, v6, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :cond_d
    if-eqz p1, :cond_f

    if-eqz p2, :cond_e

    const-string v0, "Tried to enable BS when it\'s already AUTO_ON"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, v6, v6, v7}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :cond_10
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0xa

    invoke-direct {p0, v6, v6, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :cond_11
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x8

    invoke-direct {p0, v6, v6, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    :pswitch_3
    if-eqz p1, :cond_13

    if-eqz p2, :cond_12

    const-string v0, "Tried to enable BS when it\'s already MANUAL_ON"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_18

    invoke-direct {p0, v6, v6, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez v0, :cond_14

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    :cond_14
    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v0, :cond_18

    if-eqz p1, :cond_16

    if-nez p2, :cond_15

    const-string v0, "Tried to disable BS when it\'s already OFF"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-direct {p0, v7, v7, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    iput v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    :cond_16
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, v7, v6, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    :cond_17
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x9

    invoke-direct {p0, v7, v6, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    :cond_18
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Battery saver state machine:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "Enabled="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "full="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "adaptive="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " (advertise="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mLastChangedIntReason="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mLastChangedStrReason="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mBootCompleted="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mSettingsLoaded="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mBatteryStatusSet="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mIsPowered="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mBatteryLevel="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mIsBatteryLevelLow="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mSettingAutomaticBatterySaver="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mSettingBatterySaverEnabled="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mSettingBatterySaverEnabledSticky="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mSettingBatterySaverStickyAutoDisableEnabled="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mSettingBatterySaverStickyAutoDisableThreshold="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mSettingBatterySaverTriggerThreshold="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mBatterySaverStickyBehaviourDisabled="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mDynamicPowerSavingsDefaultDisableThreshold="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mDynamicPowerSavingsDisableThreshold="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v2, "mDynamicPowerSavingsEnableBatterySaver="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "mLastAdaptiveBatterySaverChangedExternallyElapsed="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {v0, v2, v3}, Landroid/util/IndentingPrintWriter;->println(J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10800000001L

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10e00000012L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1080000000eL

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x1080000000fL

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000010L

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000006L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10500000007L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10800000008L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10e00000013L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10800000009L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x1080000000aL

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x1050000000bL

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1080000000cL

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x1050000000dL

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000014L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000015L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10800000016L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10300000011L

    iget-wide v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFullBatterySaverPolicy()Landroid/os/BatterySaverPolicyConfig;
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPolicyLocked(I)Landroid/os/BatterySaverPolicyConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getGlobalSetting(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$hideNotification$4$BatterySaverStateMachine(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "BatterySaverStateMachine"

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$new$1$BatterySaverStateMachine()V
    .locals 1

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeBatterySaverSetting(I)V

    return-void
.end method

.method public synthetic lambda$onBootCompleted$0$BatterySaverStateMachine()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "low_power_sticky"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "automatic_power_save_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dynamic_power_savings_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dynamic_power_savings_disable_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "low_power_sticky_auto_disable_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "low_power_sticky_auto_disable_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "low_power_sticky"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    move v2, v3

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$triggerDynamicModeNotification$2$BatterySaverStateMachine()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "dynamic_mode_notification"

    const v2, 0x10402fc

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    nop

    const v2, 0x10402fe

    const v3, 0x10402fd

    const-string v4, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;IILjava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "BatterySaverStateMachine"

    const/16 v4, 0x7c8

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$triggerStickyDisabledNotification$3$BatterySaverStateMachine()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "battery_saver_channel"

    const v2, 0x10401a0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    nop

    const v2, 0x10401a1

    const v3, 0x104019d

    const-string v4, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;IILjava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "BatterySaverStateMachine"

    const/16 v4, 0x7c9

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected putGlobalSetting(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method runOnBgThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method runOnBgThreadLazy(Ljava/lang/Runnable;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAdaptiveBatterySaverEnabled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

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

.method public setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

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

.method public setBatterySaverEnabledManually(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBatteryStatus(ZIZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    const/4 v3, 0x0

    if-eq v2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    if-eq v4, p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eq v5, p3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iput-boolean p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFullBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xd

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

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

.method setSettingsLocked(ZZIZIIZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    move/from16 v9, p5

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    if-eq v10, v1, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eq v12, v2, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget v13, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-eq v13, v3, :cond_2

    move v13, v8

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    iget-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eq v14, v4, :cond_3

    move v14, v8

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    iget v15, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-eq v15, v9, :cond_4

    move v15, v8

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-eq v11, v5, :cond_5

    move v11, v8

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    iget v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-eq v8, v7, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    iget-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eq v7, v6, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    if-nez v10, :cond_8

    if-nez v12, :cond_8

    if-nez v13, :cond_8

    if-nez v11, :cond_8

    if-nez v14, :cond_8

    if-nez v15, :cond_8

    if-nez v8, :cond_8

    if-nez v7, :cond_8

    return-void

    :cond_8
    iput-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    iput-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    iput v9, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    move/from16 v2, p8

    iput v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eqz v13, :cond_9

    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThreadLazy(Ljava/lang/Runnable;I)V

    :cond_9
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-nez v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    :cond_a
    if-eqz v10, :cond_c

    if-eqz v1, :cond_b

    const-string v2, "Global.low_power changed to 1"

    goto :goto_8

    :cond_b
    const-string v2, "Global.low_power changed to 0"

    :goto_8
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    goto :goto_9

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    :goto_9
    return-void
.end method

.method triggerDynamicModeNotification()V
    .locals 1

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method triggerStickyDisabledNotification()V
    .locals 1

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method
