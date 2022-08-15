.class public Lcom/android/server/notification/CriticalNotificationExtractor;
.super Ljava/lang/Object;
.source "CriticalNotificationExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mSupportsCriticalNotifications:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/CriticalNotificationExtractor;->supportsCriticalNotifications(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 1

    iget-boolean p0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "car_emergency"

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    goto :goto_0

    :cond_2
    const-string p0, "car_warning"

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    return-void
.end method

.method public final supportsCriticalNotifications(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.type.automotive"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
