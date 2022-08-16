.class public interface abstract Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;
.super Ljava/lang/Object;
.source "StatusBarFragmentComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract getBatteryMeterViewController()Lcom/android/systemui/battery/BatteryMeterViewController;
.end method

.method public abstract getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.end method

.method public abstract getLightsOutNotifController()Lcom/android/systemui/statusbar/phone/LightsOutNotifController;
.end method

.method public abstract getPhoneStatusBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.end method

.method public abstract getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end method

.method public abstract getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
.end method

.method public abstract getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
.end method

.method public init()V
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getBatteryMeterViewController()Lcom/android/systemui/battery/BatteryMeterViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getLightsOutNotifController()Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method
