.class public Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;
.super Ljava/lang/Object;
.source "OnUserInteractionCallbackImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;


# instance fields
.field private final mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mVisualStabilityCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mVisualStabilityCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    return-void
.end method


# virtual methods
.method public getGroupSummaryToDismiss(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;->isOnlyChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public onDismiss(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/service/notification/NotificationListenerService$NotificationCancelReason;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    if-eqz p3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, p3, p2, v2}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->onDismiss(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    new-instance p3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v4

    invoke-static {v2, v3, p0, v1, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    invoke-direct {p3, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method

.method public onImportanceChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mVisualStabilityCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->temporarilyAllowSectionChanges(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V

    return-void
.end method
