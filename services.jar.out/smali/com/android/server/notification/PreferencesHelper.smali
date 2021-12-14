.class public Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/PreferencesHelper$Delegate;,
        Lcom/android/server/notification/PreferencesHelper$PackagePreferences;,
        Lcom/android/server/notification/PreferencesHelper$LockableAppFields;
    }
.end annotation


# static fields
.field private static final ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubble"

.field private static final ATT_APP_USER_LOCKED_FIELDS:Ljava/lang/String; = "app_user_locked_fields"

.field private static final ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATT_HIDE_SILENT:Ljava/lang/String; = "hide_gentle"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SENT_INVALID_MESSAGE:Ljava/lang/String; = "sent_invalid_msg"

.field private static final ATT_SENT_VALID_MESSAGE:Ljava/lang/String; = "sent_valid_msg"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_USER_ALLOWED:Ljava/lang/String; = "allowed"

.field private static final ATT_USER_DEMOTED_INVALID_MSG_APP:Ljava/lang/String; = "user_demote_msg_app"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_APP_LOCKED_IMPORTANCE:Z = false

.field static final DEFAULT_BUBBLES_ENABLED:Z = true

.field static final DEFAULT_BUBBLE_PREFERENCE:I = 0x0

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field static final DEFAULT_MEDIA_NOTIFICATION_FILTERING:Z = true

.field private static final DEFAULT_OEM_LOCKED_IMPORTANCE:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final NON_BLOCKABLE_CHANNEL_DELIM:Ljava/lang/String; = ":"

.field static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0xc350

.field private static final NOTIFICATION_CHANNEL_DELETION_RETENTION_DAYS:I = 0x1e

.field private static final NOTIFICATION_CHANNEL_GROUP_PULL_LIMIT:I = 0x3e8

.field private static final NOTIFICATION_CHANNEL_PULL_LIMIT:I = 0x7d0

.field private static final NOTIFICATION_PREFERENCES_PULL_LIMIT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NotificationPrefHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_DELEGATE:Ljava/lang/String; = "delegate"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final TAG_STATUS_ICONS:Ljava/lang/String; = "silent_status_icons"

.field static final UNKNOWN_UID:I = -0x2710

.field private static final XML_VERSION:I = 0x2

.field private static final XML_VERSION_BUBBLES_UPGRADE:I = 0x1


# instance fields
.field private mAllowInvalidShortcuts:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAreChannelsBypassingDnd:Z

.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mHideSilentStatusBarIcons:Z

.field private mIsMediaNotificationFilteringEnabled:Z

.field private mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

.field private mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

.field private final mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field private mOemLockedApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackagePreferences:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    iput-object p6, p0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    iput-object p7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd()V

    return-void
.end method

.method private channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x10402db

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_4
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v1, :cond_5

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_5
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v1, v2, :cond_6

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_6
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4
.end method

.method private deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method private deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, p1, p3, p2}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10800000006L

    iget-boolean v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1

    :cond_0
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    const-wide v7, 0x20b00000008L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannelGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private static dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    const-string v3, "UNKNOWN_UID"

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_1

    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v3, :cond_2

    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v3, v4, :cond_3

    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    :cond_4
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v3, :cond_5

    const-string v3, " defaultAppLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    :cond_5
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v3, :cond_6

    const-string v3, " oemLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    :cond_6
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, " futureLockedChannels="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const-string v6, "    "

    invoke-virtual {v4, p0, v6, v5}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 3

    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 3

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 9

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;II)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 9

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 6

    invoke-static {p1, p3}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x2710

    if-ne p3, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_0
    nop

    if-nez v2, :cond_5

    new-instance v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper$1;)V

    move-object v2, v3

    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    iput p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    iput p8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iput-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    :cond_3
    :goto_2
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationPrefHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    return-object v2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object v1
.end method

.method private isDeletionOk(Landroid/app/NotificationChannel;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private isShortcutOk(Landroid/app/NotificationChannel;)Z
    .locals 4

    nop

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":placeholder_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    if-nez v3, :cond_2

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private static packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private syncChannelsBypassingDnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    return-void
.end method

.method private static unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateChannelsBypassingDnd()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v4, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserId:I

    iget v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-direct {p0, v3, v5}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    invoke-virtual {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    invoke-virtual {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateConfig()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method


# virtual methods
.method public areChannelsBypassingDnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public bubblesEnabled(Landroid/os/UserHandle;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_bubbles"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canShowNotificationsOnLockscreen(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public canShowPrivateNotificationsOnLockScreen(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public clearData(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    const/16 v3, -0x3e8

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v11, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v11

    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const-string/jumbo v5, "miscellaneous"

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    move-object v12, v5

    const/16 v5, -0x3e8

    const/4 v6, 0x0

    if-eqz v12, :cond_d

    if-eqz p4, :cond_d

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v12, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    const-wide/16 v6, -0x1

    invoke-virtual {v12, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v1, v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v10, v9, v8}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v13, v4

    goto :goto_1

    :cond_2
    move v13, v4

    :goto_1
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    move v3, v2

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x1

    move v3, v2

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eq v2, v4, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    const/4 v2, 0x1

    move v3, v2

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    const/4 v2, 0x1

    move v3, v2

    :cond_6
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    move v14, v2

    nop

    invoke-static {v12}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v6

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v2, 0x1

    move v3, v2

    :cond_7
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-nez v2, :cond_a

    if-eqz p5, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    if-ne v2, v4, :cond_8

    if-eqz v13, :cond_a

    :cond_8
    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    const/4 v3, 0x1

    iget-boolean v4, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v2, v4, :cond_9

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v14, v4, :cond_a

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_a
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v2

    if-ne v2, v5, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    move v15, v2

    goto :goto_2

    :cond_b
    move v15, v3

    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    if-eqz v15, :cond_c

    if-nez v13, :cond_c

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v7, 0x0

    move-object v3, v12

    move/from16 v4, p2

    move-object/from16 v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    :cond_c
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v15

    :catchall_0
    move-exception v0

    move v4, v13

    move v3, v15

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move v4, v13

    goto/16 :goto_5

    :cond_d
    :try_start_3
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const v13, 0xc350

    if-ge v7, v13, :cond_18

    const/4 v3, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    if-ltz v7, :cond_17

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    const/4 v13, 0x5

    if-gt v7, v13, :cond_17

    if-eqz p4, :cond_f

    if-nez p5, :cond_f

    iget v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v13, 0x2

    if-ne v7, v13, :cond_e

    move v7, v2

    goto :goto_3

    :cond_e
    move v7, v6

    :goto_3
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_f
    if-eqz p4, :cond_11

    iget v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v7

    goto :goto_4

    :cond_10
    const/4 v7, -0x1

    :goto_4
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    :cond_11
    invoke-virtual {v1, v10}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V

    iget-boolean v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v10, v2}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    :cond_12
    iget-boolean v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v7

    if-ne v7, v2, :cond_13

    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_13
    iget-boolean v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez v5, :cond_14

    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Tried to create a conversation channel without a preexisting parent"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_15
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    iget-boolean v6, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq v5, v6, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_16
    invoke-direct {v1, v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v10, v9, v8}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    monitor-exit v11

    return v3

    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid importance level"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Limit exceed; cannot create more channels"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Reserved id"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid package"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception v0

    :goto_5
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .locals 11

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    if-eqz p4, :cond_0

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_1
    :goto_0
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v4

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v10, v1

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_2
    move-object v6, p3

    move v7, p2

    move-object v8, p1

    invoke-interface/range {v5 .. v10}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Landroid/app/NotificationChannelGroup;ILjava/lang/String;ZZ)V

    :cond_4
    iget-object v1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteConversations(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    invoke-direct {p0, v5, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v7, v5, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v4, v3, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroupDeleted(Landroid/app/NotificationChannelGroup;ILjava/lang/String;)V

    :cond_1
    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    iget-object v6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    return-object v0

    :cond_4
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method didUserEverDemoteInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    const-wide v1, 0x20b00000002L

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v0, 0x20b00000003L

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "per-package config:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "PackagePreferences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Restored without uid:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "channelCount"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string/jumbo v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_8

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p1, :cond_0

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_1

    const-string v7, "importance"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_2

    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v7, v8, :cond_3

    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const-string/jumbo v7, "showBadge"

    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    goto :goto_2

    :cond_5
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    iget-object v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    goto :goto_3

    :cond_6
    const-string v9, "groups"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v7

    :goto_4
    :try_start_3
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v2, "PackagePreferencess"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    :goto_5
    return-object v0

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3
.end method

.method public getAppLockedFields(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppsBypassingDndCount(I)I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_2

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-direct {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBlockedAppCount(I)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return v0

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBubblePreference(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v2, "miscellaneous"

    move-object p3, v2

    :cond_1
    const/4 v2, 0x0

    if-eqz p4, :cond_2

    invoke-direct {p0, v1, p3, p4, p6}, Lcom/android/server/notification/PreferencesHelper;->findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v3

    move-object v2, v3

    :cond_2
    if-nez v2, :cond_4

    if-eqz p5, :cond_4

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    if-eqz v3, :cond_4

    if-nez p6, :cond_3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    monitor-exit v0

    return-object v3

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConversations(Landroid/util/IntArray;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p2, :cond_4

    :cond_0
    new-instance v7, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v7}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    iget-object v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    iget v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    invoke-virtual {v7, v6}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    if-nez v8, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_2
    invoke-virtual {v7, v9}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    if-nez v9, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    goto/16 :goto_0

    :cond_6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v6}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    iget v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    invoke-virtual {v6, v5}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    if-nez v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return v0

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getGroupForChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIsAppImportanceLocked(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .locals 3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    if-nez p4, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    monitor-exit v3

    return-object v4

    :cond_0
    new-instance v4, Landroid/app/NotificationChannelGroup;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    if-nez p3, :cond_1

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_4

    :cond_1
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    if-nez v9, :cond_2

    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v10

    move-object v9, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v9, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p5, :cond_8

    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    goto :goto_2

    :cond_8
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    nop

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    monitor-exit v1

    return-object v3

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    if-nez p3, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNotificationChannelsByConversationId(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-direct {p0, v2, v4}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageBans()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasSentInvalidMsg(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasSentValidMsg(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, p4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isValidDelegate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-nez v3, :cond_1

    monitor-exit v1

    return v0

    :cond_1
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMediaNotificationFilteringEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    return v0
.end method

.method public lockChannelsForOEM([Ljava/lang/String;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_a

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    array-length v5, v4

    if-lez v5, :cond_9

    aget-object v5, v4, v1

    array-length v6, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    aget-object v6, v4, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v7

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v9, 0x1

    if-nez v6, :cond_3

    iput-boolean v8, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationChannel;

    invoke-virtual {v13, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_3

    :cond_2
    goto :goto_4

    :cond_3
    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationChannel;

    if-eqz v12, :cond_4

    invoke-virtual {v12, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    :cond_4
    iget-object v13, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    goto :goto_2

    :cond_6
    if-nez v9, :cond_8

    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v5, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v6, :cond_7

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v10, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    invoke-interface {v10, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    monitor-exit v7

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_7

    :cond_6
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_7
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_8
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_9
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10402db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v0, p3

    array-length v2, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    aget v4, p4, v2

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_1
    goto :goto_4

    :cond_2
    array-length v2, p3

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, p3, v0

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz v4, :cond_3

    :try_start_2
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7, v8}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    const/4 v1, 0x1

    goto :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v5

    :cond_3
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    :cond_4
    monitor-exit v5

    goto :goto_3

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v6
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_6
    return v1

    :cond_7
    :goto_5
    return v0
.end method

.method public onUserRemoved(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd()V

    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd()V

    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return v3

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    const/16 v8, 0x2759

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullPackageChannelPreferencesStats(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/16 v3, 0x7d0

    if-le v1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    const/16 v8, 0x2758

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullPackagePreferencesStats(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v2}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    const/16 v3, 0x2757

    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-virtual {v2}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;ZI)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "version"

    const/4 v3, -0x1

    const/4 v14, 0x0

    invoke-interface {v11, v14, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-ne v15, v7, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v8

    :goto_0
    move/from16 v16, v2

    iget-object v6, v10, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v6

    move-object v2, v1

    move v1, v0

    :goto_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move v5, v0

    if-eq v0, v7, :cond_18

    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v4, v0

    const/4 v3, 0x3

    if-ne v5, v3, :cond_3

    :try_start_2
    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v4

    move v1, v5

    move-object/from16 v19, v6

    goto/16 :goto_d

    :cond_3
    if-ne v5, v13, :cond_17

    :try_start_3
    const-string/jumbo v0, "silent_status_icons"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    if-eqz v12, :cond_4

    move-object/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v19, v6

    goto/16 :goto_c

    :cond_4
    :try_start_4
    const-string v0, "hide_gentle"

    invoke-interface {v11, v14, v0, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v19, v6

    goto/16 :goto_c

    :cond_5
    :try_start_5
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "uid"

    const/16 v2, -0x2710

    invoke-interface {v11, v14, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    const-string/jumbo v0, "name"

    invoke-interface {v11, v14, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v0, :cond_15

    if-eqz p2, :cond_6

    :try_start_6
    iget-object v0, v10, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9, v12}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_6
    :goto_2
    const/4 v0, 0x0

    const/16 v23, 0x0

    if-eqz v16, :cond_8

    if-eq v1, v2, :cond_8

    :try_start_7
    iget-object v2, v10, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v18, 0x18

    const/16 v21, 0x0

    const-string v22, "check-notif-bubble"

    move-object/from16 v17, v2

    move/from16 v19, v1

    move-object/from16 v20, v9

    invoke-virtual/range {v17 .. v22}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v2, :cond_7

    move v2, v7

    goto :goto_3

    :cond_7
    move v2, v8

    :goto_3
    move/from16 v23, v2

    :cond_8
    if-eqz v23, :cond_9

    move v2, v7

    goto :goto_4

    :cond_9
    :try_start_8
    const-string v2, "allow_bubble"

    invoke-interface {v11, v14, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    :goto_4
    move-object/from16 v17, v9

    move v9, v2

    const-string v2, "importance"

    const/16 v13, -0x3e8

    invoke-interface {v11, v14, v2, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v2, "priority"

    invoke-interface {v11, v14, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v2, "visibility"

    invoke-interface {v11, v14, v2, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v2, "show_badge"

    invoke-interface {v11, v14, v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move/from16 v25, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move/from16 v3, p3

    move-object/from16 v24, v4

    move/from16 v4, v25

    move/from16 v26, v5

    move/from16 v5, v19

    move-object/from16 v19, v6

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    :try_start_9
    invoke-direct/range {v1 .. v9}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    const-string v2, "importance"

    invoke-interface {v11, v14, v2, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const-string/jumbo v2, "priority"

    const/4 v3, 0x0

    invoke-interface {v11, v14, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const-string/jumbo v2, "visibility"

    invoke-interface {v11, v14, v2, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const-string/jumbo v2, "show_badge"

    const/4 v4, 0x1

    invoke-interface {v11, v14, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const-string v2, "app_user_locked_fields"

    invoke-interface {v11, v14, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    const-string/jumbo v2, "sent_invalid_msg"

    invoke-interface {v11, v14, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const-string/jumbo v2, "sent_valid_msg"

    invoke-interface {v11, v14, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const-string/jumbo v2, "user_demote_msg_app"

    invoke-interface {v11, v14, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    move v5, v0

    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move v6, v0

    if-eq v0, v4, :cond_14

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    :try_start_a
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_14

    :cond_a
    if-eq v6, v7, :cond_13

    const/4 v0, 0x4

    if-ne v6, v0, :cond_b

    goto/16 :goto_9

    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "channelGroup"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "id"

    invoke-interface {v11, v14, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v3, "name"

    invoke-interface {v11, v14, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    new-instance v7, Landroid/app/NotificationChannelGroup;

    invoke-direct {v7, v8, v3}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v11}, Landroid/app/NotificationChannelGroup;->populateFromXml(Landroid/util/TypedXmlPullParser;)V

    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v3, "channel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const v4, 0xc350

    if-lt v3, v4, :cond_d

    if-nez v5, :cond_13

    const-string v3, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping further channels for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; app has too many"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move/from16 v26, v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const-string v3, "id"

    invoke-interface {v11, v14, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-interface {v11, v14, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "importance"

    invoke-interface {v11, v14, v7, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    new-instance v8, Landroid/app/NotificationChannel;

    invoke-direct {v8, v3, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz p2, :cond_e

    iget-object v13, v10, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11, v13}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v8, v11}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    iget-boolean v13, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v8, v13}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    iget-boolean v13, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v8, v13}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v13

    if-nez v13, :cond_f

    iget-object v13, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    :cond_f
    invoke-direct {v10, v8}, Lcom/android/server/notification/PreferencesHelper;->isShortcutOk(Landroid/app/NotificationChannel;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-direct {v10, v8}, Lcom/android/server/notification/PreferencesHelper;->isDeletionOk(Landroid/app/NotificationChannel;)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v13, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v13, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v3, "delegate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "uid"

    const/16 v4, -0x2710

    const/4 v7, 0x0

    invoke-interface {v11, v7, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v7, "name"

    invoke-static {v11, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "enabled"

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v11, v14, v8, v13}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    const-string v4, "allowed"

    invoke-interface {v11, v14, v4, v13}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/16 v21, 0x0

    const/16 v13, -0x2710

    if-eq v3, v13, :cond_11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    new-instance v13, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v13, v7, v3, v8, v4}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object/from16 v21, v13

    goto :goto_7

    :cond_11
    move-object/from16 v13, v21

    :goto_7
    iput-object v13, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_8

    :cond_12
    const/4 v14, 0x0

    :goto_8
    nop

    :cond_13
    :goto_9
    move/from16 v26, v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v13, -0x3e8

    goto/16 :goto_5

    :cond_14
    :try_start_b
    invoke-direct {v10, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move v1, v6

    move-object/from16 v2, v24

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    :try_start_c
    const-string v3, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_a
    move v1, v6

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v2, v24

    move/from16 v1, v26

    goto :goto_d

    :cond_15
    move-object/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v19, v6

    move-object/from16 v17, v9

    move/from16 v1, v26

    :goto_b
    move-object/from16 v6, v19

    move-object/from16 v2, v24

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x2

    goto/16 :goto_1

    :cond_16
    move-object/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v19, v6

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v19, v6

    move-object/from16 v2, v24

    move/from16 v1, v26

    goto :goto_d

    :cond_17
    move-object/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v19, v6

    :goto_c
    move-object/from16 v6, v19

    move-object/from16 v2, v24

    move/from16 v1, v26

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x2

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v19, v6

    move/from16 v1, v26

    goto :goto_d

    :cond_18
    move/from16 v26, v5

    move-object/from16 v19, v6

    :try_start_d
    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move/from16 v1, v26

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v19, v6

    :goto_d
    :try_start_e
    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_d
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eq v3, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, p3, :cond_1

    return-void

    :cond_1
    nop

    if-eqz p3, :cond_2

    const/16 v1, -0x3e8

    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setImportance(Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v1, p2, p1, p3}, Lcom/android/server/notification/NotificationChannelLogger;->logAppNotificationsAllowed(ILjava/lang/String;Z)V

    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setInvalidMessageSent(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput-boolean p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    new-instance v4, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v4, p3, p4, v3, v2}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object v3, v4

    iput-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput-boolean p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setValidMessageSent(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldHideSilentStatusIcons()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return v0
.end method

.method public toggleNotificationDelegate(Ljava/lang/String;IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iput-boolean p3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unlockAllNotificationChannels()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->unlockFields(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unlockNotificationChannelImportance(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Channel does not exist"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBadgingEnabled()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    or-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_4
    return-void
.end method

.method public updateBubblesEnabled()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_bubbles"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    or-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_4
    return-void
.end method

.method public updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {v6, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLockScreenPrivateNotifications()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_allow_private_notifications"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    or-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_4
    return-void
.end method

.method public updateLockScreenShowNotifications()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_show_notifications"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    or-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_4
    return-void
.end method

.method public updateMediaNotificationFilteringEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_media_controls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_1
    return-void
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 10

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, -0x3e8

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    invoke-virtual {p0, v2, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    :goto_0
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    :cond_2
    iget-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    :cond_3
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    :cond_5
    invoke-virtual {v2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    if-eqz p4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-static {v2}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v8

    move-object v5, p3

    move v6, p2

    move-object v7, p1

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    :cond_7
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v3, v4, :cond_8

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v3, v4, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :cond_a
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Channel does not exist"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateZenPolicy(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v9, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    iget v8, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    invoke-virtual {v1, v9}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;ZI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "ranking"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string/jumbo v0, "silent_status_icons"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "hide_gentle"

    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "silent_status_icons"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_12

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p2, :cond_2

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_2

    goto/16 :goto_6

    :cond_2
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-nez v5, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-ne v5, v6, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-ne v5, v7, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-gtz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v5, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v7

    :goto_2
    if-eqz v5, :cond_11

    const-string/jumbo v8, "package"

    invoke-interface {p1, v1, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    iget-object v9, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {p1, v1, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq v8, v6, :cond_5

    const-string v8, "importance"

    iget v9, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-interface {p1, v1, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v8, :cond_6

    const-string/jumbo v8, "priority"

    iget v9, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-interface {p1, v1, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v8, v6, :cond_7

    const-string/jumbo v6, "visibility"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz v6, :cond_8

    const-string v6, "allow_bubble"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-string/jumbo v6, "show_badge"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "app_user_locked_fields"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "sent_invalid_msg"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "sent_valid_msg"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "user_demote_msg_app"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p2, :cond_9

    const-string/jumbo v6, "uid"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v6, :cond_c

    const-string v6, "delegate"

    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "name"

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "uid"

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v6, v6, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq v6, v7, :cond_a

    const-string v6, "enabled"

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    invoke-interface {p1, v1, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v6, v6, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eq v6, v7, :cond_b

    const-string v6, "allowed"

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v7, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    invoke-interface {p1, v1, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    const-string v6, "delegate"

    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v7, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Landroid/util/TypedXmlSerializer;)V

    goto :goto_3

    :cond_d
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    if-eqz p2, :cond_e

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1, v8}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v7, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_f
    :goto_5
    goto :goto_4

    :cond_10
    const-string/jumbo v6, "package"

    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "ranking"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
