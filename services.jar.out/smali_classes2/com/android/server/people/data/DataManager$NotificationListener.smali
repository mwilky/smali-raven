.class Lcom/android/server/people/data/DataManager$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationListener"
.end annotation


# instance fields
.field private final mActiveNotifCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    iput p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method


# virtual methods
.method declared-synchronized hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$onNotificationPosted$0$DataManager$NotificationListener(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$onNotificationRemoved$1$DataManager$NotificationListener(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 5

    nop

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    iget v3, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Lcom/android/server/people/data/DataManager;->access$2000(Lcom/android/server/people/data/DataManager;II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 8

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    const/4 v5, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    nop

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_3

    const/4 v5, 0x1

    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    nop

    :goto_0
    iget-object v5, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v7

    invoke-static {v5, v2, v6, p1, v7}, Lcom/android/server/people/data/DataManager;->access$1600(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 10

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->access$2100(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v5

    new-instance v6, Lcom/android/server/people/data/Event;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v7

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v5, v6}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :cond_3
    return-void
.end method

.method public declared-synchronized onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->access$2100(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v5, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v5, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v5, v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v6

    new-instance v7, Lcom/android/server/people/data/Event;

    const/4 v8, 0x3

    invoke-direct {v7, v2, v3, v8}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v6, v7}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
