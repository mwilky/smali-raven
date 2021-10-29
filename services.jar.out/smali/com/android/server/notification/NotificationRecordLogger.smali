.class public interface abstract Lcom/android/server/notification/NotificationRecordLogger;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    }
.end annotation


# direct methods
.method public static getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v2

    return v2
.end method


# virtual methods
.method public abstract log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
.end method

.method public abstract log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V
    .locals 1

    invoke-static {p2, p3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->fromCancelReason(II)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public logNotificationVisibility(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 1

    invoke-static {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->fromVisibility(Z)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public abstract maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
.end method
