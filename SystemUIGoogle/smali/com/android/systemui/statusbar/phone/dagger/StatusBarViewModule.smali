.class public abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule;
.super Ljava/lang/Object;
.source "StatusBarViewModule.java"


# direct methods
.method public static getAuthRippleView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/biometrics/AuthRippleView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->auth_ripple:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    return-object p0
.end method

.method public static getLockIconView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/keyguard/LockIconView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->lock_icon_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/LockIconView;

    return-object p0
.end method

.method public static getNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    return-object p0
.end method

.method public static getTapAgainView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TapAgainView;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTapAgainView()Lcom/android/systemui/statusbar/phone/TapAgainView;

    move-result-object p0

    return-object p0
.end method
