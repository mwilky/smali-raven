.class public interface abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;
.super Ljava/lang/Object;
.source "StatusBarComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract createCollapsedStatusBarFragment()Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;
.end method

.method public abstract getAuthRippleController()Lcom/android/systemui/biometrics/AuthRippleController;
.end method

.method public abstract getLockIconViewController()Lcom/android/keyguard/LockIconViewController;
.end method

.method public abstract getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end method

.method public abstract getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
.end method

.method public abstract getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
.end method

.method public abstract getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;
.end method

.method public abstract getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
.end method

.method public abstract getStatusBarCommandQueueCallbacks()Lcom/android/systemui/statusbar/phone/StatusBarCommandQueueCallbacks;
.end method

.method public abstract getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
.end method

.method public abstract getStatusBarHeadsUpChangeListener()Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;
.end method
