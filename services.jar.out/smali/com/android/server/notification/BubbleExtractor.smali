.class public Lcom/android/server/notification/BubbleExtractor;
.super Ljava/lang/Object;
.source "BubbleExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BubbleExtractor"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mConfig:Lcom/android/server/notification/RankingConfig;

.field private mContext:Landroid/content/Context;

.field private mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logBubbleError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "BubbleExtractor"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string v2, "Unable to create bubble -- no intent"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    nop

    const/4 v4, 0x1

    const/16 v5, 0xad

    if-nez v3, :cond_2

    invoke-static {v5, p3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget v6, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x2

    invoke-static {v5, p3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v4
.end method

.method canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v4, v2, v9}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    move v6, v8

    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v8

    if-nez v8, :cond_5

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t find valid shortcut for bubble with shortcutId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/notification/BubbleExtractor;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_5
    if-eqz v6, :cond_6

    return v7

    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p0, v3, v7, v2}, Lcom/android/server/notification/BubbleExtractor;->canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/notification/RankingConfig;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/android/server/notification/RankingConfig;->getBubblePreference(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v6

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_3

    :cond_5
    if-ne v5, v3, :cond_7

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v7

    if-eqz v7, :cond_6

    move v7, v3

    goto :goto_1

    :cond_6
    move v7, v2

    :goto_1
    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_3

    :cond_7
    const/4 v7, 0x2

    if-ne v5, v7, :cond_9

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V

    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v7

    if-nez v7, :cond_a

    move v2, v3

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v3, Landroid/app/Notification;->flags:I

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v7, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, -0x1001

    iput v7, v3, Landroid/app/Notification;->flags:I

    :goto_4
    return-object v0

    :cond_c
    :goto_5
    return-object v0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    return-void
.end method
