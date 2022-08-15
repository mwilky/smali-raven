.class public interface abstract Lcom/android/server/notification/NotificationChannelLogger;
.super Ljava/lang/Object;
.source "NotificationChannelLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    }
.end annotation


# direct methods
.method public static getConversationIdHash(Landroid/app/NotificationChannel;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIdHash(Landroid/app/NotificationChannel;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIdHash(Landroid/app/NotificationChannelGroup;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getImportance(Landroid/app/NotificationChannelGroup;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/notification/NotificationChannelLogger;->getImportance(Z)I

    move-result p0

    return p0
.end method

.method public static getImportance(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public static getLoggingImportance(Landroid/app/NotificationChannel;)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result p0

    return p0
.end method

.method public static getLoggingImportance(Landroid/app/NotificationChannel;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x5

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public abstract logAppEvent(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;ILjava/lang/String;)V
.end method

.method public logAppNotificationsAllowed(ILjava/lang/String;Z)V
    .locals 0

    invoke-static {p3}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getBlocked(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object p3

    invoke-interface {p0, p3, p1, p2}, Lcom/android/server/notification/NotificationChannelLogger;->logAppEvent(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;ILjava/lang/String;)V

    return-void
.end method

.method public abstract logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V
.end method

.method public logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getCreated(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    return-void
.end method

.method public logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getDeleted(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    return-void
.end method

.method public logNotificationChannelGroup(Landroid/app/NotificationChannelGroup;ILjava/lang/String;ZZ)V
    .locals 6

    invoke-static {p4}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getGroupUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V

    return-void
.end method

.method public abstract logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V
.end method

.method public logNotificationChannelGroupDeleted(Landroid/app/NotificationChannelGroup;ILjava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V

    return-void
.end method

.method public logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V
    .locals 7

    invoke-static {p5}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v6

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    return-void
.end method
