.class public abstract Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule;
.super Ljava/lang/Object;
.source "StatusBarGoogleModule.java"


# direct methods
.method static provideReverseChargingViewControllerOptional(Lcom/android/systemui/statusbar/policy/BatteryController;Ldagger/Lazy;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isReverseSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
