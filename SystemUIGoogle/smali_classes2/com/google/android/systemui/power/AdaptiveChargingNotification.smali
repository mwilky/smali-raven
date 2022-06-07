.class Lcom/google/android/systemui/power/AdaptiveChargingNotification;
.super Ljava/lang/Object;
.source "AdaptiveChargingNotification.java"


# instance fields
.field private final mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

.field mAdaptiveChargingQueryInBackground:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field mWasActive:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Z1OVN2a4z2QKpsyFt-GHIuNItPQ(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->lambda$checkAdaptiveChargingStatus$0(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;-><init>(Landroid/content/Context;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingQueryInBackground:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/power/AdaptiveChargingNotification;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->handleOnReceiveStatus(Ljava/lang/String;IZ)V

    return-void
.end method

.method private cancelNotification()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/google/android/systemui/power/PowerUtils;->AC_NOTIFICATION_ID:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "adaptive_charging"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    return-void
.end method

.method private checkAdaptiveChargingStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->shouldShowNotification()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;-><init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Z)V

    iget-boolean p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingQueryInBackground:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleOnReceiveStatus(Ljava/lang/String;IZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isActive(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->sendNotification(ZI)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->cancelNotification()V

    return-void
.end method

.method private synthetic lambda$checkAdaptiveChargingStatus$0(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    return-void
.end method

.method private sendNotification(ZI)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->formatTimeToFull(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$drawable;->ic_battery_charging:I

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->adaptive_charging_notify_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->adaptive_charging_notify_des:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->adaptive_charging_notify_turn_off_once:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    const-string v2, "PNW.acChargeNormally"

    invoke-static {v1, v2}, Lcom/google/android/systemui/power/PowerUtils;->createNormalChargingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    const v0, 0x1040124

    invoke-static {p2, p1, v0}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    iget-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/systemui/power/PowerUtils;->AC_NOTIFICATION_ID:I

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "adaptive_charging"

    invoke-virtual {p2, v2, v0, p1, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput-boolean v3, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    return-void
.end method


# virtual methods
.method dispatchIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.google.android.systemui.adaptivecharging.ADAPTIVE_CHARGING_DEADLINE_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "PNW.acChargeNormally"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->checkAdaptiveChargingStatus(Z)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->setAdaptiveChargingDeadline(I)Z

    invoke-direct {p0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->cancelNotification()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->resolveBatteryChangedIntent(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5bb23923 -> :sswitch_2
        -0xd2ac881 -> :sswitch_1
        0x52843923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resolveBatteryChangedIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/google/android/systemui/power/PowerUtils;->isFullyCharged(Landroid/content/Intent;)Z

    move-result p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->checkAdaptiveChargingStatus(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->cancelNotification()V

    :goto_1
    return-void
.end method
