.class public final Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;
.super Ljava/lang/Object;
.source "DreamOverlayNotificationCountProvider.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    iget-object p2, p2, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mNotificationKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->reportNotificationCountChanged()V

    return-void
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    iget-object p2, p2, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mNotificationKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->reportNotificationCountChanged()V

    return-void
.end method

.method public final onNotificationsInitialized()V
    .locals 0

    return-void
.end method
