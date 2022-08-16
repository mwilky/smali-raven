.class public interface abstract Lcom/android/systemui/statusbar/notification/init/NotificationsController;
.super Ljava/lang/Object;
.source "NotificationsController.kt"


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract getActiveNotificationsCount()I
.end method

.method public abstract initialize(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V
.end method

.method public abstract requestNotificationUpdate(Ljava/lang/String;)V
.end method

.method public abstract resetUserExpandedStates()V
.end method

.method public abstract setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
.end method
