.class public interface abstract Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule;
.super Ljava/lang/Object;
.source "StatusBarFragmentModule.java"


# direct methods
.method public static provideBatteryMeterView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/battery/BatteryMeterView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    return-object p0
.end method

.method public static providePhoneStatusBarView(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method public static providePhoneStatusBarViewController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
    .locals 0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getStatusBarTouchEventHandler()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$TouchEventHandler;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->create(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$TouchEventHandler;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    move-result-object p0

    return-object p0
.end method
