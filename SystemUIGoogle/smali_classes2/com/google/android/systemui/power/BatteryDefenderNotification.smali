.class Lcom/google/android/systemui/power/BatteryDefenderNotification;
.super Ljava/lang/Object;
.source "BatteryDefenderNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;
    }
.end annotation


# instance fields
.field private mBatteryLevel:I

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
.method public static synthetic $r8$lambda$5Xv9A5Z-pdzm12aRmDQ7kysu-RE(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->lambda$executeBypassActionWithAsync$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$eFVu9V9u-wA7m9agAARDTpa1VY0(Lcom/google/android/systemui/power/BatteryDefenderNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->lambda$executeBypassActionWithAsync$1()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mRunBypassActionTask:Z

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private cancelNotification()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/systemui/power/PowerUtils;->NOTIFICATION_ID:I

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "battery_defender"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private cancelNotificationAndSendPostNotification()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->cancelNotification()V

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trigger_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->sendPostNotification()V

    :cond_0
    return-void
.end method

.method private cancelPostNotification()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/systemui/power/PowerUtils;->POST_NOTIFICATION_ID:I

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "battery_defender"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private clearDefenderStartRecord()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
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

    const-string p1, "BatteryDefenderNotification"

    const-string p2, "unlinkToDeath failed: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private executeBypassActionWithAsync()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mRunBypassActionTask:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/BatteryDefenderNotification;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "defender_shared_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
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

    const-string p1, "BatteryDefenderNotification"

    const-string v0, "failed to get Google Battery HAL: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$executeBypassActionWithAsync$0(J)V
    .locals 0

    const-string p0, "BatteryDefenderNotification"

    const-string p1, "IHwBinder serviceDied"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$executeBypassActionWithAsync$1()V
    .locals 6

    sget-object v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->initHalInterface(Landroid/os/IHwBinder$DeathRecipient;)Lvendor/google/google_battery/V1_1/IGoogleBattery;

    move-result-object v1

    const-string v2, "BatteryDefenderNotification"

    if-nez v1, :cond_0

    const-string v3, "Can not init hal interface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x2

    const/16 v4, 0x11

    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v1, v3, v4, v5}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->setProperty(III)B

    const/4 v3, 0x3

    invoke-interface {v1, v3, v4, v5}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->setProperty(III)B

    invoke-interface {v1, v5, v4, v5}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->setProperty(III)B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProperty error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    throw v2
.end method

.method private resolveBatteryChangedIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/systemui/power/PowerUtils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mBatteryLevel:I

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

    move v1, v2

    :cond_1
    invoke-static {p1}, Lcom/google/android/systemui/power/PowerUtils;->isFullyCharged(Landroid/content/Intent;)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | isOverheated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | defenderEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | isCharged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryDefenderNotification"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->cancelPostNotification()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->sendNotification(Z)V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->cancelNotificationAndSendPostNotification()V

    :cond_4
    :goto_1
    return-void
.end method

.method private resumeCharging(Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mBatteryLevel:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume charging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->access$000(Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryDefenderNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->executeBypassActionWithAsync()V

    iget-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/systemui/power/PowerUtils;->NOTIFICATION_ID:I

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "battery_defender"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    return-void
.end method

.method private sendNotification(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->cancelPostNotification()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

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
    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPrvPluggedState:Z

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPrvPluggedState:Z

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->sendNotificationInternal(Z)V

    return-void
.end method

.method private sendNotificationInternal(Z)V
    .locals 4

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108080e

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->defender_notify_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->defender_notify_des:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->battery_health_notify_learn_more:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->defender_notify_help_url:I

    invoke-static {v2, v3}, Lcom/google/android/systemui/power/PowerUtils;->createHelpArticlePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->defender_notify_resume_charge:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const-string v2, "PNW.defenderResumeCharging"

    invoke-static {v1, v2}, Lcom/google/android/systemui/power/PowerUtils;->createNormalChargingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v1, 0x104058f

    invoke-static {p1, v0, v1}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    iget-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/google/android/systemui/power/PowerUtils;->NOTIFICATION_ID:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "battery_defender"

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    return-void
.end method

.method private sendPostNotification()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trigger_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/google/android/systemui/power/PowerUtils;->getCurrentTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/google/android/systemui/power/PowerUtils;->postNotificationThreshold(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/google/android/systemui/power/PowerUtils;->getCurrentTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const-wide v3, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x108080e

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->defender_post_notify_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->battery_health_notify_learn_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->defender_notify_help_url:I

    invoke-static {v3, v4}, Lcom/google/android/systemui/power/PowerUtils;->createHelpArticlePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v6, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v3, 0x104058f

    invoke-static {v2, v0, v3}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    iget-object v2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v3, Lcom/google/android/systemui/power/PowerUtils;->POST_NOTIFICATION_ID:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "battery_defender"

    invoke-virtual {v2, v5, v3, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput-boolean v1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    goto :goto_1

    :cond_1
    const-string v0, "BatteryDefenderNotification"

    const-string v1, "error getting trigger time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    return-void
.end method


# virtual methods
.method dispatchIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->resolveBatteryChangedIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "PNW.defenderResumeCharging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->resumeCharging(Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;)V

    goto :goto_0

    :cond_1
    const-string p1, "PNW.defenderResumeCharging.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->resumeCharging(Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;)V

    :cond_2
    :goto_0
    return-void
.end method
