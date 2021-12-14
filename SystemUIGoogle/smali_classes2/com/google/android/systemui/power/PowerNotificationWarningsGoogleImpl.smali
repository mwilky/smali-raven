.class public final Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;
.super Lcom/android/systemui/power/PowerNotificationWarnings;
.source "PowerNotificationWarningsGoogleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;
    }
.end annotation


# static fields
.field static final ACTION_RESUME_CHARGING:Ljava/lang/String; = "PNW.defenderResumeCharging"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_RESUME_CHARGING_SETTINGS:Ljava/lang/String; = "PNW.defenderResumeCharging.settings"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_TRIGGER_TIME:Ljava/lang/String; = "trigger_time"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final NOTIFICATION_ID:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POST_NOTIFICATION_ID:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SHARED_PREFS_FILE:Ljava/lang/String; = "defender_shared_prefs"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_DEFENDER:Ljava/lang/String; = "battery_defender"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBatteryLevel:I

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mDefenderEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field mPostNotificationVisible:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPrvPluggedState:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mRunBypassActionTask:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$VSdoUk3092ITiLyW5ytIbYFr1bI(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->lambda$executeBypassActionWithAsync$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$qEorOO-nauIc0pkNa5nU5kayW8E(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->lambda$executeBypassActionWithAsync$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/R$string;->defender_notify_title:I

    sput v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->NOTIFICATION_ID:I

    sget v0, Lcom/android/systemui/R$string;->defender_post_notify_title:I

    sput v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->POST_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mRunBypassActionTask:Z

    new-instance p2, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;-><init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    iput-object p2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-class p3, Landroid/app/NotificationManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "PNW.defenderResumeCharging"

    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "PNW.defenderResumeCharging.settings"

    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1, p0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->resolveBatteryChangedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->resumeCharging(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;)V

    return-void
.end method

.method private cancelNotification()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->NOTIFICATION_ID:I

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "battery_defender"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private cancelNotificationAndSendPostNotification()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->cancelNotification()V

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trigger_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->sendPostNotification()V

    :cond_0
    return-void
.end method

.method private cancelPostNotification()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mPostNotificationVisible:Z

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->clearDefenderStartRecord()V

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->POST_NOTIFICATION_ID:I

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "battery_defender"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private clearDefenderStartRecord()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private createHelpArticlePendingIntent()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->defender_notify_help_url:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p0, 0x0

    const/high16 v2, 0x4000000

    invoke-static {v0, p0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private createResumeChargingPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "PNW.defenderResumeCharging"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v0, v2, p0, v3, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PowerNotificationWarningsGoogleImpl"

    const-string p2, "unlinkToDeath failed: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private executeBypassActionWithAsync()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mRunBypassActionTask:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBatteryLevel(Landroid/content/Intent;)I
    .locals 3

    const-string p0, "level"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "scale"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "defender_shared_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initHalInterface(Landroid/os/IHwBinder$DeathRecipient;)Lvendor/google/google_battery/V1_1/IGoogleBattery;
    .locals 2

    :try_start_0
    invoke-static {}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->getService()Lvendor/google/google_battery/V1_1/IGoogleBattery;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PowerNotificationWarningsGoogleImpl"

    const-string v0, "failed to get Google Battery HAL: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$executeBypassActionWithAsync$0(J)V
    .locals 0

    const-string p0, "PowerNotificationWarningsGoogleImpl"

    const-string p1, "HwBinder serviceDied"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$executeBypassActionWithAsync$1()V
    .locals 6

    sget-object v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->initHalInterface(Landroid/os/IHwBinder$DeathRecipient;)Lvendor/google/google_battery/V1_1/IGoogleBattery;

    move-result-object v1

    const-string v2, "PowerNotificationWarningsGoogleImpl"

    if-nez v1, :cond_0

    const-string v3, "Can not init hal interface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x11

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v1, v4, v3, v4}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->setProperty(III)B

    const/4 v5, 0x2

    invoke-interface {v1, v5, v3, v4}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->setProperty(III)B

    const/4 v5, 0x3

    invoke-interface {v1, v5, v3, v4}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->setProperty(III)B

    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProperty error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    :goto_0
    return-void
.end method

.method private postNotificationThreshold(J)Z
    .locals 4

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p0, p1, v2

    if-lez p0, :cond_0

    const-wide/32 p0, 0x927c0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resolveBatteryChangedIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryLevel:I

    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "health"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "status"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-nez p1, :cond_3

    iget p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryLevel:I

    const/16 v4, 0x64

    if-lt p1, v4, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlugged: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | isOverheated: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | defenderEnabled: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | isCharged: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PowerNotificationWarningsGoogleImpl"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mPostNotificationVisible:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->cancelPostNotification()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->sendNotification(Z)V

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->cancelNotificationAndSendPostNotification()V

    :cond_7
    :goto_3
    return-void
.end method

.method private resumeCharging(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryLevel:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->executeBypassActionWithAsync()V

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->NOTIFICATION_ID:I

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "battery_defender"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->clearDefenderStartRecord()V

    return-void
.end method

.method private sendNotification(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mPostNotificationVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->cancelPostNotification()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    const-string v3, "trigger_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mPrvPluggedState:Z

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mPrvPluggedState:Z

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->sendNotificationInternal(Z)V

    return-void
.end method

.method private sendNotificationInternal(Z)V
    .locals 4

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108080e

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->defender_notify_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->defender_notify_des:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->defender_notify_learn_more:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->createHelpArticlePendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->defender_notify_resume_charge:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->createResumeChargingPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->NOTIFICATION_ID:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "battery_defender"

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mDefenderEnabled:Z

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;->BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$BatteryDefenderEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    return-void
.end method

.method private sendPostNotification()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trigger_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getCurrentTime(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->postNotificationThreshold(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getCurrentTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const-wide v3, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->defender_post_notify_des:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x108080e

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->defender_post_notify_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->defender_notify_learn_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->createHelpArticlePendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v6, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget v3, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->POST_NOTIFICATION_ID:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "battery_defender"

    invoke-virtual {v2, v5, v3, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput-boolean v1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mPostNotificationVisible:Z

    goto :goto_1

    :cond_1
    const-string v0, "PowerNotificationWarningsGoogleImpl"

    const-string v1, "error getting trigger time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->clearDefenderStartRecord()V

    return-void
.end method


# virtual methods
.method getCurrentTime(J)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "HH:mm"

    goto :goto_0

    :cond_0
    const-string p0, "h:m"

    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method
