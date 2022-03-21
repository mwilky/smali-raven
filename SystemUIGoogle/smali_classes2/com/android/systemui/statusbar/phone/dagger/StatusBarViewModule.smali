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

.method static getBatteryMeterView(Landroid/view/View;)Lcom/android/systemui/battery/BatteryMeterView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    return-object p0
.end method

.method static getBatteryMeterViewController(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/statusbar/policy/BatteryController;)Lcom/android/systemui/battery/BatteryMeterViewController;
    .locals 9

    new-instance v8, Lcom/android/systemui/battery/BatteryMeterViewController;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/battery/BatteryMeterViewController;-><init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-object v8
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

.method public static getNotificationsQuickSettingsContainer(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method public static getSplitShadeOngoingPrivacyChip(Landroid/view/View;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method public static getSplitShadeStatusBarView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/flags/FeatureFlags;)Landroid/view/View;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->qs_header_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p1}, Lcom/android/systemui/flags/FeatureFlags;->useCombinedQSHeaders()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/R$layout;->combined_qs_header:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$layout;->split_shade_header:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getTapAgainView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TapAgainView;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTapAgainView()Lcom/android/systemui/statusbar/phone/TapAgainView;

    move-result-object p0

    return-object p0
.end method

.method public static providesNotificationShadeWindowView(Landroid/view/LayoutInflater;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 2

    sget v0, Lcom/android/systemui/R$layout;->super_notification_shade:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.super_notification_shade could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static providesNotificationShelf(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 2

    sget v0, Lcom/android/systemui/R$layout;->status_bar_notification_shelf:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "R.layout.status_bar_notification_shelf could not be properly inflated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static providesNotificationStackScrollLayout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method public static providesStatusBarWindowView(Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/NotificationShelfController;
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->notificationShelf(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;->getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfController;->init()V

    return-object p0
.end method

.method static providesStatusIconContainer(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-object p0
.end method
