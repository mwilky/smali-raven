.class public interface abstract Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;
.super Ljava/lang/Object;
.source "CentralSurfacesComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Startable;,
        Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract createCollapsedStatusBarFragment()Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;
.end method

.method public abstract getAuthRippleController()Lcom/android/systemui/biometrics/AuthRippleController;
.end method

.method public abstract getBindRowCallback()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;
.end method

.method public abstract getCentralSurfacesCommandQueueCallbacks()Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;
.end method

.method public abstract getLockIconViewController()Lcom/android/keyguard/LockIconViewController;
.end method

.method public abstract getNotificationActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;
.end method

.method public abstract getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
.end method

.method public abstract getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end method

.method public abstract getNotificationPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
.end method

.method public abstract getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
.end method

.method public abstract getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
.end method

.method public abstract getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;
.end method

.method public abstract getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
.end method

.method public abstract getStartables()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Startable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusBarHeadsUpChangeListener()Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;
.end method

.method public abstract getStatusBarInitializer()Lcom/android/systemui/statusbar/core/StatusBarInitializer;
.end method
