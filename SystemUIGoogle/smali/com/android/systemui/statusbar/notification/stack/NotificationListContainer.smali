.class public interface abstract Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
.super Ljava/lang/Object;
.source "NotificationListContainer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;


# virtual methods
.method public abstract addContainerView(Landroid/view/View;)V
.end method

.method public abstract addContainerViewAt(Landroid/view/View;I)V
.end method

.method public applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V
    .locals 0

    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public abstract changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
.end method

.method public abstract cleanUpViewStateForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end method

.method public containsView(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
.end method

.method public abstract generateChildOrderChangedEvent()V
.end method

.method public abstract getContainerChildAt(I)Landroid/view/View;
.end method

.method public abstract getContainerChildCount()I
.end method

.method public abstract getSwipeActionHelper()Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
.end method

.method public getTopClippingStartLocation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getViewParentForNotification()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end method

.method public abstract hasPulsingNotifications()Z
.end method

.method public abstract notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end method

.method public abstract notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/ViewGroup;)V
.end method

.method public abstract removeContainerView(Landroid/view/View;)V
.end method

.method public abstract resetExposedMenuView()V
.end method

.method public abstract setChildLocationsChangedListener(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;)V
.end method

.method public abstract setChildTransferInProgress(Z)V
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method
