.class public Lcom/android/server/notification/NotificationRecordLoggerImpl;
.super Ljava/lang/Object;
.source "NotificationRecordLoggerImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationRecordLogger;


# instance fields
.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method private writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V
    .locals 23

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getInstanceId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNotificationIdHash()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getChannelIdHash()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getGroupIdHash()I

    move-result v8

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    :goto_0
    move v9, v1

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v11, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople()I

    move-result v13

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v1}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanationCode()I

    move-result v17

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getInitialImportance()I

    move-result v18

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getInitialImportanceExplanationCode()I

    move-result v19

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getAssistantImportance()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getAssistantHash()I

    move-result v21

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v22

    const/16 v1, 0xf4

    move/from16 v14, p3

    move/from16 v16, p4

    invoke-static/range {v1 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIIZLjava/lang/String;IIIIIIIIIIF)V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    .locals 6

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    .locals 7

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    invoke-direct {v0, p1, p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, p4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->shouldLogReported(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->fromRecordPair(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    move-result-object v3

    move-object v1, p0

    move-object v2, v0

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    return-void
.end method
